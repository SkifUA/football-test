Apipie.configure do |config|
  config.app_name                = "FootballTest"
  config.api_base_url            = ""
  config.doc_base_url            = "/apipie"
  # where is your API defined?
  config.api_controllers_matcher = Rails.root.join('app', 'controllers', 'api', '**', '*.rb')
  config.translate = false
  config.default_locale = nil
  # config.default_version = "v1"
end
