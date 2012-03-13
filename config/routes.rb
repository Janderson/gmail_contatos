GmailContatos::Engine.routes.draw do
  get "gauthorize" =>"contacts#authorize"
  get  "autorizar" => "contacts#new", :as => "autorizar"
end
