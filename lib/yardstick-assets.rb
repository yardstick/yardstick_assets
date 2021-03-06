require "yardstick-assets/version"
require 'lesselements-rails'

module YardstickAssets
  class Engine < ::Rails::Engine
    initializer 'less-rails-bootstrap.setup', :after => 'less-rails.after.load_config_initializers', :group => :all do |app|
      app.config.less.paths << File.join(config.root, 'vendor', 'frameworks')
    end
  end
end
