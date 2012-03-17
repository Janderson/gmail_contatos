Simple gem to Sync Google Contacts

## Instalation

Add Gemfile:

	gem "gmail_contatos"
	
To set up a controller with google contacts, just add this before_filter:

	before_filter :get_gmail_contatos, :only=>:index

Note: In function that has the `:only` (in our case the index) returns an object `@gcontatos` that can be used, this variable contains an Array(`Google::Contact`) of objects with `[nome, email]`.

###Suggested Configuration for View

	<table>
		<thead>
		  <tr>
		    <th>Nome</th>
		    <th>email</th>
		  </tr>
		</thead>
		</tbody>
			<% @gcontatos.each do |c| %>
			  <tr>
			    <td><%= c.nome %></td>
			    <td><%= c.email %></td>
			  </tr>
			<% end %>
		</body>	
	</table>

### Your contributions are welcomed :D