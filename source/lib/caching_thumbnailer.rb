require 'dragonfly'

module Middleman
  module CachingThumbnailer
    class Extension < Middleman::Extension
      attr_accessor :images

      def initialize(app, options_hash = {}, &block)
        super
        @images = []
        configure_dragonfly
        FileUtils.mkdir(thumbs_path) unless File.directory?(thumbs_path)
      end

      def identifier(path, geometry)
        "#{path}@#{geometry}"
      end

      def absolute_source_path(path)
        File.join(app.config[:source], app.config[:images_dir], path)
      end

      def build_path(path, geometry)
        dir = File.dirname(path)
        subdir = geometry.gsub(/[^a-zA-Z0-9\-]/, '')
        File.join(dir, subdir, File.basename(path))
      end

      def thumbs_path
        "thumbs"
      end

      def absolute_thumb_path(path, geometry)
        File.join(thumbs_path, build_path(path, geometry))
      end

      def absolute_build_path(path, geometry)
        File.join(app.config[:build_dir], app.config[:images_dir], build_path(path, geometry))
      end

      def thumb(path, geometry)
        src_path = absolute_source_path(path)
        thumb_path = absolute_thumb_path(path, geometry)

        return unless File.exist?(src_path)

        unless File.exist?(thumb_path)
          image = ::Dragonfly.app.fetch_file(src_path)
          image = image.thumb(geometry)
          image.to_file(thumb_path).close
        else
          image = ::Dragonfly.app.fetch_file(thumb_path)
        end
        id = identifier(path, geometry)
        images << id unless images.include?(id)
        image
      end

      def after_build(builder)
        images.each do |image|
          path, geometry = image.split("@")
          src_path = absolute_thumb_path(path, geometry)
          dest_path = absolute_build_path(path, geometry)
          builder.say_status :create, dest_path
          dir_path = File.dirname(dest_path)
          FileUtils.mkdir_p(dir_path)
          FileUtils.copy(src_path, dest_path)
        end
      end

      helpers do
        def thumb_tag(path, geometry, options = {})
          image = extensions[:caching_thumbnailer].thumb(path, geometry)
          return unless image

          if environment == :development
            url = image.b64_data
          else
            url = extensions[:caching_thumbnailer].build_path(path, geometry)
          end

          image_tag(url, options)
        end
      end

      private

      def configure_dragonfly
        ::Dragonfly.app.configure do
          datastore :memory
          plugin :imagemagick
        end
      end
    end
  end
end

::Middleman::Extensions.register(
  :caching_thumbnailer,
  Middleman::CachingThumbnailer::Extension
)