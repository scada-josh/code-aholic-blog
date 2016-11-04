###
# Blog settings
###

# Time.zone = "UTC"
Time.zone = "Bangkok"

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  blog.prefix = "/src/blogs/"

  blog.permalink = "{category}/{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
  blog.sources = "{category}/{year}-{month}-{day}-{title}.html"
  # blog.taglink = "tags/{tag}.html"
  blog.layout = "/layouts"
  blog.summary_separator = /(READMORE)/
  blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"
  blog.default_extension = ".md"

  blog.tag_template = "/src/blogs/tag.html"
  blog.calendar_template = "/src/blogs/calendar.html"

  # Enable pagination
  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/{num}"

end


page "/src/blogs/feed.xml", layout: false


activate :directory_indexes

activate :dragonfly_thumbnailer




###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", layout: false
#
# With alternative layout
# page "/path/to/file.html", layout: :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# activate :livereload

# Reload the browser automatically whenever files change
configure :development do
    activate :php
    activate :bower
    activate :livereload
    

end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :markdown, :strikethrough => true
set :markdown_engine, :kramdown


set :build_dir, 'build'

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :helper_dir, 'helper'

set :files_dir, 'files'

# set :secrete_published, 'false'


set :blog_dir, 'src/blogs/'
set :categoryURL_middlemanDevelopmentIndex, "/src/blogs/middleman-development/2016/01/01/middleman-index/"
set :categoryURL_html5Index, "/src/blogs/html5/2012/01/01/html5-index/"
set :categoryURL_swift2Index, "/src/blogs/swift-2/2016/01/01/swift-programming-index/"
set :categoryURL_coronaSDKIndex, "/src/blogs/corona-sdk/2016/01/12/coronasdk-index/"
set :categoryURL_iosDevelopmentIndex, "/src/blogs/ios-development/2016/01/17/ios-development-index/"
set :categoryURL_udemyCourseCreationIndex, "/src/blogs/udemy-course-creation/2016/01/17/udemy-course-creation-index/"
set :categoryURL_macOSxIndex, "/src/blogs/mac-os-x/2016/01/17/mac-os-x-index/"
set :categoryURL_webDevelopmentIndex, "/src/blogs/web-development/2016/01/18/web-development-index/"
set :categoryURL_scadaIndex, "/src/blogs/scada/2016/01/25/scada-index/"
set :categoryURL_rtuIndex, "/src/blogs/rtu/2016/01/27/rtu-index/"
set :categoryURL_wlmaIndex, "/src/blogs/wlma/2016/01/27/wlma-index/"
set :categoryURL_projectsIndex, "/src/blogs/projects/2016/01/28/projects-index/"                       
set :categoryURL_restfulWebServiceIndex, "/src/blogs/restful-web-service/2016/01/29/restful-web-service-index/"
set :categoryURL_projectRmrIndex, "/src/blogs/project-rmr/2016/02/02/project-rmr-index/"
set :categoryURL_projectMbkIndex, "/src/blogs/project-mbk/2016/02/02/project-mbk-index/"
set :categoryURL_softwareDevelopmentIndex, "/src/blogs/software-development/2016/02/07/software-development-index/"
set :categoryURL_projectProposalIndex, "/src/blogs/project-proposal/2016/02/08/project-proposal-index/"
set :categoryURL_udemyCourseLectureIndex, "/src/blogs/udemy-course-lecture/2016/02/11/udemy-course-lecture-index/"
set :categoryURL_englishIndex, "/src/blogs/english/2016/02/13/english-index/"
set :categoryURL_jekyllIndex, "/src/blogs/jekyll-development/2016/02/20/jekyll-index/"
set :categoryURL_luaIndex, "/src/blogs/lua/2016/02/23/lua-index/"
set :categoryURL_internetOfThingsIndex, "/src/blogs/internet-of-things/2016/02/28/iot-index/"
set :categoryURL_portfolioIndex, "/src/blogs/portfolio/2016/03/03/portfolio-index/"
set :categoryURL_coronaPluginIndex, "/src/blogs/corona-plugin/2016/03/04/corona-plugin-index/"
set :categoryURL_pythonIndex, "/src/blogs/python/2016/03/04/python-index/"
set :categoryURL_phpIndex, "/src/blogs/php/2016/03/04/php-index/"
set :categoryURL_rubyIndex, "/src/blogs/ruby/2016/03/04/ruby-index/"
set :categoryURL_gisIndex, "/src/blogs/gis/2016/03/04/gis-index/"
set :categoryURL_freelanceIndex, "/src/blogs/freelance/2016/03/04/freelance-index/"
set :categoryURL_mwaIndex, "/src/blogs/mwa/2016/03/04/mwa-index/"
set :categoryURL_coronaWorkshopIndex, "/src/blogs/corona-workshop/2016/03/06/corona-workshop-index/"
set :categoryURL_iosPluginIndex, "/src/blogs/ios-plugin/2016/03/06/ios-plugin-index/"
set :categoryURL_iosWorkshopIndex, "/src/blogs/ios-workshop/2016/03/06/ios-workshop-index/"
set :categoryURL_projectIelIndex, "/src/blogs/project-iel/2016/03/11/project-iel-index/"
set :categoryURL_trainingCourseIndex, "/src/blogs/training-course/2016/03/13/training-course-index/"
set :categoryURL_prototypingAndDesignIndex, "/src/blogs/prototyping-and-design/2016/04/08/prototyping-and-design-index/"
set :categoryURL_coffeescriptIndex, "/src/blogs/coffeescript/2016/04/08/coffeescript-index/"
set :categoryURL_nodejsIndex, "/src/blogs/nodejs/2016/04/08/nodejs-index/"
set :categoryURL_realtimeApplicationsIndex, "/src/blogs/realtime-applications/2016/04/11/realtime-applications-index/"
set :categoryURL_openLayers3Index, "/src/blogs/openlayers-3/2016/04/18/openlayers-3-index/"
set :categoryURL_leafletIndex, "/src/blogs/leaflet/2016/04/20/leaflet-index/"
set :categoryURL_phpNusoapIndex, "/src/blogs/php-nusoap/2016/05/01/php-nusoap-index/"
set :categoryURL_mongoDbIndex, "/src/blogs/mongodb/2016/07/14/mongo-db-index/"
set :categoryURL_phpPdoIndex, "/src/blogs/php-pdo/2016/11/03/php-pdo-index/"
set :categoryURL_vueJsIndex, "/src/blogs/vuejs/2016/11/03/vuejs-index/"
set :categoryURL_technologyAuthenticationIndex, "/src/blogs/technology-authentication/2016/11/03/technology-authentication-index/"
set :categoryURL_swift3Index, "/src/blogs/swift-3/2016/11/03/swift-3-index/"
set :categoryURL_maya2017Index, "/src/blogs/maya-2017/2016/11/03/maya-2017-index/"
set :categoryURL_afterEffectCCIndex, "/src/blogs/after-effect-cc/2016/11/03/after-effect-cc-index/"
set :categoryURL_unity5Index, "/src/blogs/unity-5/2016/11/03/unity-5-index/"


# Build-specific configuration
configure :build do

  # activate :search do |search|

  #   # search.pipeline = {
  #   #   tildes: <<-JS
  #   #     function(token, tokenIndex, tokens) {
  #   #       return token
  #   #         .replace('á', 'a')
  #   #         .replace('é', 'e')
  #   #         .replace('í', 'i')
  #   #         .replace('ó', 'o')
  #   #         .replace('ú', 'u');
  #   #     }
  #   #   JS
  #   # }


  #   # search.resources = ['src/blogs/iOS Development/','src/blogs/', 'index.php', 'src/desktop/HOME/index.php']
  #   # search.resources = ['src/blogs', 'index.html', 'build/src/desktop']
  #   # search.resources = ['src/blogs/', 'src/desktop/']
  #   search.resources = ['src/', 'src/blogs/', '*.markdown']
   
  #   search.index_path = 'search/lunr-index.json' # defaults to `search.json`
   
  #   search.fields = {
  #     title:   {boost: 100, store: true, required: true},
  #     content: {boost: 50},
  #     url:     {index: false, store: true},
  #     author:  {boost: 30}
  #   }
  # end



  # activate :asset_hash do |asset_hash|
  #   asset_hash.exts << '.json'
  # end



  # activate :i18n
  # activate :i18n, :path => "/langs/:locale/"
  activate :i18n, :path => "/src/desktop/:locale/",
           :lang_map => { 
                          :en => :en,
                          :es => :es, 
                          :th => :th 
                        }, 
           :templates_dir => "src/desktop/localizable",
           :mount_at_root => false # All languages will be prefixed




           
  
  activate :syntax, :line_numbers => true


  # Any files you want to ignore:
  ignore '/javascripts/javascript-blog-main/*'
  ignore '/javascripts/javascript-blog-moderna-details/*'
  ignore '/javascripts/javascript-blog-moderna-main/*'
  ignore '/javascripts/javascript-moderna-contact/*'
  ignore '/javascripts/javascript-moderna-home/*'
  ignore '/javascripts/javascript-moderna-portfolio/*'

  ignore '/stylesheets/stylesheet-blog-main/*'
  ignore '/stylesheets/stylesheet-blog-moderna-details/*'
  ignore '/stylesheets/stylesheet-blog-moderna-main/*'
  ignore '/stylesheets/stylesheet-moderna-contact/*'
  ignore '/stylesheets/stylesheet-moderna-home/*'
  ignore '/stylesheets/stylesheet-moderna-portfolio/*'

  ignore '/src/blogs/index-original.html.erb.tmp'
  ignore '/src/blogs_2016-01-04/*'

  ignore '/helper/*'
  ignore '/lib/*'

  # ignore '/src/blogs/Swift 2/*'




  # For example, change the Compass output style for deployment
  # activate :minify_css
  activate :php

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"

  activate :favicon_maker do |f|
    f.template_dir  = 'source/images'
    f.icons = {
      "_favicon_template.png" => [
        { icon: "apple-touch-icon-152x152-precomposed.png" },             # Same as apple-touch-icon-57x57.png, for retina iPad with iOS7.
        { icon: "apple-touch-icon-144x144-precomposed.png" },             # Same as apple-touch-icon-57x57.png, for retina iPad with iOS6 or prior.
        { icon: "apple-touch-icon-120x120-precomposed.png" },             # Same as apple-touch-icon-57x57.png, for retina iPhone with iOS7.
        { icon: "apple-touch-icon-114x114-precomposed.png" },             # Same as apple-touch-icon-57x57.png, for retina iPhone with iOS6 or prior.
        { icon: "apple-touch-icon-76x76-precomposed.png" },               # Same as apple-touch-icon-57x57.png, for non-retina iPad with iOS7.
        { icon: "apple-touch-icon-72x72-precomposed.png" },               # Same as apple-touch-icon-57x57.png, for non-retina iPad with iOS6 or prior.
        { icon: "apple-touch-icon-60x60-precomposed.png" },               # Same as apple-touch-icon-57x57.png, for non-retina iPhone with iOS7.
        { icon: "apple-touch-icon-57x57-precomposed.png" },               # iPhone and iPad users can turn web pages into icons on their home screen. Such link appears as a regular iOS native application. When this happens, the device looks for a specific picture. The 57x57 resolution is convenient for non-retina iPhone with iOS6 or prior. Learn more in Apple docs.
        { icon: "apple-touch-icon-precomposed.png", size: "57x57" },      # Same as apple-touch-icon.png, expect that is already have rounded corners (but neither drop shadow nor gloss effect).
        { icon: "apple-touch-icon.png", size: "57x57" },                  # Same as apple-touch-icon-57x57.png, for "default" requests, as some devices may look for this specific file. This picture may save some 404 errors in your HTTP logs. See Apple docs
        { icon: "favicon-196x196.png" },                                  # For Android Chrome M31+.
        { icon: "favicon-160x160.png" },                                  # For Opera Speed Dial (up to Opera 12; this icon is deprecated starting from Opera 15), although the optimal icon is not square but rather 256x160. If Opera is a major platform for you, you should create this icon yourself.
        { icon: "favicon-96x96.png" },                                    # For Google TV.
        { icon: "favicon-32x32.png" },                                    # For Safari on Mac OS.
        { icon: "favicon-16x16.png" },                                    # The classic favicon, displayed in the tabs.
        { icon: "favicon.png", size: "16x16" },                           # The classic favicon, displayed in the tabs.
        { icon: "favicon.ico", size: "64x64,32x32,24x24,16x16" },         # Used by IE, and also by some other browsers if we are not careful.
        { icon: "mstile-70x70.png", size: "70x70" },                      # For Windows 8 / IE11.
        { icon: "mstile-144x144.png", size: "144x144" },
        { icon: "mstile-150x150.png", size: "150x150" },
        { icon: "mstile-310x310.png", size: "310x310" },
        { icon: "mstile-310x150.png", size: "310x150" }
      ]
    }
  end
  
end

# config.rb
# Add bower's directory to sprockets asset path
after_configuration do
  #@bower_config = JSON.parse(IO.read("#{root}.bowerrc"))
  #sprockets.append_path File.join "#{root}", @bower_config["directory"]

  sprockets.append_path File.join "#{root}", "bower_components"
  sprockets.append_path File.join "#{root}", "source"
  #sprockets.import_asset 'jquery'
end





helpers do
  def categories(page)
    category_array(page.data[:categories])
  end

  def category_path(category)
    "/category/#{category.parameterize}.html"
  end

  def all_categories
    @all_categories ||= Hash[all_categories_unsorted.sort]
  end

  def category_array(categories)
    (categories || "Uncategorized").split(/,\s*/)
  end


  private

  def all_categories_unsorted
    Hash.new { [] }.tap do |all_categories|
      blog.articles.each do |article|
        categories(article).each do |ac|
          all_categories[ac] <<= article
        end
      end
    end
  end
end

