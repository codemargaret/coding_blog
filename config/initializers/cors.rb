Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://code-berry-blog.herokuapp.com/'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :delete, :options]
  end
end
