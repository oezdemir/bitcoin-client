module Bitcoinrpc
  autoload :Client, 'bitcoinrpc/client'
  autoload :API,    'bitcoinrpc/api'
  autoload :Request,'bitcoinrpc/request'
  autoload :RPC,    'bitcoinrpc/rpc'
  autoload :Errors, 'bitcoin/errors'
  autoload :Version,'bitcoinrpc/version'
  autoload :VERSION,'bitcoinrpc/version'
  autoload :DSL,    'bitcoinrpc/dsl'
  
  def self.included(base)
    base.send(:include, Bitcoinrpc::DSL)
    base.send(:extend,  Bitcoinrpc::DSL)
  end
end

def Bitcoinrpc(user, pass, options = {})
  ::Bitcoinrpc::Client.new(user, pass, options)
end
