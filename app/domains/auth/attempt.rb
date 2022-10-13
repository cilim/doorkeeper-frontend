module Auth
  class Attempt
    include ActiveModel::Model
    include ActiveModel::Attributes
    UNDERLINE_OAUTH_URL = 'http://localhost:3000/oauth/authorize'.freeze

    attribute :email
    attribute :password
    attribute :params

    def remote_url
      "#{UNDERLINE_OAUTH_URL}?#{params.to_query}"
    end
  end
end
