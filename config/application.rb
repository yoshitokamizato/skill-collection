require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module JointDev2
  class Application < Rails::Application
    config.load_defaults 5.2
    # 管理画面の日本語化
    config.i18n.default_locale = :ja
  end
end
