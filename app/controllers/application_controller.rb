require_relative '../../config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    binding.pry
  end 
  
  get '/articles/new' do
    binding.pry
    erb :new
  end 
  
  post '/articles' do 
    
    @article = Article.create(params)
    redirect '/articles'
  end
  
  get '/articles' do
    @articles = Article.all
    erb :index
  end
  
end
