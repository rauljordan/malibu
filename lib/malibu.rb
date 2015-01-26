require File.expand_path('../malibu/api', __FILE__)
require File.expand_path('../malibu/client', __FILE__)

module Malibu
  extend Configuration

  # Alias for Malibu::Client.new
  #
  # @return [Malibu::Client]
  def self.client(options={})
    Malibu::Client.new(options)
  end

  # Delegate to Malibu::Client
  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end

  # Delegate to Malibu::Client
  def self.respond_to?(method, include_all=false)
    return client.respond_to?(method, include_all) || super
  end
end