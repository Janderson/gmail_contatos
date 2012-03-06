require "test/unit"
require "gmail_contatos"  # Added 
class GmailContatosTest < Test::Unit::TestCase
    def test_say_hello_to_the_world
      assert_equal "Hello World!", GmailContatos.say
    end
end
