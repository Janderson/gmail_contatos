module Google
  class GmailContatos::Contact < ActiveRecord::Base
    attr_accessor :name
    attr_accessor :email
    def initialize(name, email)
      @name = name
      @email = email
    end
    
    def self.all(token)
      # GET http://www.google.com/m8/feeds/contacts/default/base
      require 'net/http'
      require 'rexml/document'      

      http = Net::HTTP.new('www.google.com', 80)
      # by default Google returns 50? contacts at a time.  Set max-results to very high number
      # in order to retrieve more contacts
      path = "/m8/feeds/contacts/default/base?max-results=10000"
      headers = {'Authorization' => "AuthSub token=#{token}"}
      resp, data = http.get(path, headers)

      # extract the name and email address from the response data
      xml = REXML::Document.new(data)
      contacts = []
      xml.elements.each('//entry') do |entry|
        name = entry.elements['title'].text

        gd_email = entry.elements['gd:email']
        email = gd_email.attributes['address'] if gd_email
        person = self.new(name, email)
        contacts << person
      end
      return contacts
    end
  end
end

