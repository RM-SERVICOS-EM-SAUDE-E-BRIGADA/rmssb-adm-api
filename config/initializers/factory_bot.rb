Rails.application.config do |config|
  config.generators do |g|
    g.factory_bot false, suffix: "factory"
  end
end