require "active_support/dependencies"
require 'gmail_contatos/helper'
require "gmail_contatos/engine"
require "google/authorization"
module GmailContatos
		ActiveSupport.on_load(:action_controller) do
			include GmailContatos::Helper
		end
end
