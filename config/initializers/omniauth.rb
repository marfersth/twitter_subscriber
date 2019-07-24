# OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'eKI4sPLbzBTcPQQchRl0q0pUF', 'GR3PiJEUTFxK0wSxwddxf5FrTAjVChJehdB5t6GpQKnBYNd0vM'
end
