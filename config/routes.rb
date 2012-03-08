GmailContatos::Application.routes.draw do
  get "gcontacts" => "gmail_contatos/contacts#index" 
  get "gc" => "gmail_contatos/contacts#index" 
end