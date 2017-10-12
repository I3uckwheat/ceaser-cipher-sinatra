require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'encrypt.rb'

get '/' do
  message = message_selector
  erb :index, locals: { message: message }
end

def message_selector
  return '' if params['cipher'].empty?
  Encrypt.hide(params['secret_word'].downcase, params['cipher'].to_i)
end
