# CURRENT FILE :: lib/team_page.rb
# Requires
require "active_support/dependencies"

module GmailContatos

  # Our host application root path
  # We set this when the engine is initialized
  mattr_accessor :app_root

  # Yield self on setup for nice config blocks
  def self.setup
    yield self
  end


  # Require our engine
  require "gmail_contatos/engine"
end
