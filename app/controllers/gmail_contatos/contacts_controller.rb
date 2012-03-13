# -*- encoding: utf-8 -*-
module GmailContatos
  class ContactsController < GmailContatos::ApplicationController
    def new
			# refatorar para funcionar com qualquer config de rota
      redirect_to Google::Authorization.build_auth_url("http://#{request.env["HTTP_HOST"]}/g_auth")
    end

    def authorize
      token = Google::Authorization.exchange_singular_use_for_session_token(params[:token])

      unless token == false
				redirect_to "#{session[:back_url]}?gtoken=#{token}"
      else
        flash[:error] = "Sua tentativa de autenticação com o google falhou."
        # refatorar há um problema aqui, ele redireciona para root_url da aplicação,deve faltar algum include 
        redirect_to root_url
      end
    end
  end
end
