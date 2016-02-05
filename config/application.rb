require File.expand_path('../boot', __FILE__)

# Stephanie Beaton -
# The following line is commented out in effort to stop Rails from connecting to sqlite
# .. and get Rails to use ActiveResource
# .. and these extra requires were added in its place
#
require 'rails/all'
# require "action_controller/railtie"
# require "action_mailer/railtie"
# require "active_resource/railtie"
# require "rails/test_unit/railtie"
# require "sprockets/railtie"

# require 'active_resource'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LighthouseForum
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.

    # Stephanie Beaton - the following line was commented out in effort to stop Rails from using ActiveRecords

    config.active_record.raise_in_transactional_callbacks = true
  end
end
