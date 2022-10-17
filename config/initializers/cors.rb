Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # origins 'http://localhost:3000', 'https://roed-to-aide-fe.herokuapp.com/'
    origins '*'

    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head]
  end
end