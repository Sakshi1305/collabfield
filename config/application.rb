require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Collabfield
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.action_controller.include_all_helpers = false
    config.secret_key_base = '154c77e2da58cc5d461322c990ab7c032a6464db8f2aac81fdfeb66425419b488bcf7d90b6edb9dcf88d99b9be990b3554a88329cad6ecbd0f0fd9615638449b'

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
