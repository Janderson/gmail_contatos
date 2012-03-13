---- Simples Gem para Sincronizar com Google Contact ----


## Instalação

adicione no Gemfile:

```ruby
gem "gmail_contatos"
```

adicione a linha no routes.rb:
```ruby
mount GmailContatos::Engine => '/gmail_contatos'
```
	
no controller que deseja usar os contatos do google adicione:
```ruby
before_filter :get_gmail_contatos, :only=>:index
```


Obs: Na função que tiver o :only (nesse caso a index) o gmail_contatos retornará uma objetos @gcontatos que você pode usar 
como quiser, essa variável tera uma Array de objetos do tipo Google::Contact que tem os seguintes atributos [nome, email].

Uma sugestão de uso para a view é:
```ruby
<table border=1>
  <tr>
    <th>Nome</th>
    <th>email</th>
  </tr>

<% @gcontatos.each do |c| %>
  <tr>
    <td><%= c.nome %></td>
    <td><%= c.email %></td>
  </tr>
<% end %>
</table>
```

## Contribuições e dicas são bem vindas :D
