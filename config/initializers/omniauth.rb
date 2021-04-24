Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter, ENV['CZVggSIF885GKO64pNxZG8lC4'], ENV['xhj57whjVaplGBjijn6PQiNMKn41dMI4QFRoIVjwqRJZOtK1SK']
  end