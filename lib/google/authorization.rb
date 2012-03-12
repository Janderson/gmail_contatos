module Google
  class Authorization
    def self.build_auth_url(return_url)
      # The URL of the page that Google should redirect the user to after authentication.
      return_url = return_url
      # Indicates that the application is requesting a token to access contacts feeds. 
      scope_param = "http://www.google.com/m8/feeds/"
      # Indicates whether the client is requesting a secure token.
      secure_param = 0
      # Indicates whether the token returned can be exchanged for a multi-use (session) token.
      session_param = 1
      # root url
      root_url = "https://www.google.com/accounts/AuthSubRequest"
  
      root_url + "?scope=#{scope_param}&session=#{session_param}&secure=#{secure_param}&next=#{return_url}"
    end

    def self.exchange_singular_use_for_session_token(token)
      require 'net/http'
      require 'net/https'

      http = Net::HTTP.new('www.google.com', 443)
      http.use_ssl = true
      path = '/accounts/AuthSubSessionToken'
      headers = {'Authorization' => "AuthSub token=#{token}"}
      resp, data = http.get(path, headers)

      if resp.code == "200" 
        token = ''
        data.split.each do |str|
          if not (str =~ /Token=/).nil?
            token = str.gsub(/Token=/, '')
          end
        end
        return token
      else
        return false
      end
    end
  end
end
