Rails.application.routes.draw do |map|
  get "g_auth" =>"gmail_contatos/contacts#authorize"
  get  "g_autorizar" => "gmail_contatos/contacts#new"
end
