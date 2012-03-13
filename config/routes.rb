GmailContatos::Engine.routes.draw do
  get "lista" => "contacts#index"
  get "gauthorize" =>"contacts#authorize"
  root :to=>"contacts#new"
end
