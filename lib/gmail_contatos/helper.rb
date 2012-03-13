require 'google/contact'
module GmailContatos
  module Helper
		include ActionController::UrlFor
		include ActionController
		include Google
		def get_gmail_contatos
				unless params.member?(:gtoken) then
					session[:back_url]  = request.url.to_s
					redirect_to "g_autorizar"
				else 
					puts "chamar".inspect
					@gcontatos = Google::Contact.all(params["gtoken"])
					puts "depois".inspect
				end
				
		end
  end
end
