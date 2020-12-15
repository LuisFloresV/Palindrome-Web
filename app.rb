require 'sinatra'
require 'naoko_palindrome'
get '/' do
    @title = "Home"
    erb :index
end

get '/about' do
    @title = "About"
    erb :about
end

get '/palindrome' do
    @title = "Palindrome"
    erb :palindrome
end

post '/check' do
    @phrase = params[:phrase]
    @phrase.strip!
    erb :result
end
