# -*- encoding: utf-8 -*-
module GmailContatos
  class ContactsController < GmailContatos::ApplicationController
    def new
      redirect_to Google::Authorization.build_auth_url("http://#{request.env["HTTP_HOST"]}/admin/gauthorize")
    end

    def authorize
      token = Google::Authorization.exchange_singular_use_for_session_token(params[:token])

      unless token == false
        redirect_to "http://#{request.env["HTTP_HOST"]}/admin/lista?token=#{token}"
      else
        flash[:error] = "Sua tentativa de autenticação com o google falhou."
        redirect_to root_url
      end
    end

    def index
      #render :text=>"aaa"
      @contacts = GmailContatos::Contact.all(params[:token])
      raise @contacts.inspect
    end
  end
end
