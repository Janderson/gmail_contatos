# CURRENT FILE :: app/controllers/team_page/team_controller.rb
module GmailContatos
  class ContactsController < ApplicationController
    def new
      redirect_to Google::Authorization.build_auth_url("http://#{request.env["HTTP_HOST"]}/contacts/authorize")
    end
  
    def authorize
      token = Google::Authorization.exchange_singular_use_for_session_token(params[:token]) 
  
      unless token == false
        redirect_to "http://#{request.env["HTTP_HOST"]}/contacts?token=#{token}"
      else
        flash[:error] = "Sua tentativa de autenticação com o google falhou."
      end
    end
    
    def index
      @contacts = Google::Contact.all(params[:token])
    end
  end
end
