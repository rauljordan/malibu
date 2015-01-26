
module Malibu
  class Client < API
  	Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}

    # Includes each of the client mixins 
    include Malibu::Client::Utils
    include Malibu::Client::Accounts
  end
end