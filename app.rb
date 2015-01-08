require 'bundler'
Bundler.require
require_relative 'models/tweet.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index  
  end

  get '/personality' do
    erb :personality
  end

  post '/questions' do
    if params[:fav_color] == "red"
      @apple += 1
    elsif params[:fav_color] == "green"
      @limes += 1
    elsif params[:fav_color] == "orange"
      @orange += 1
    elsif params[:fav_color] == "purple"
      @grapes += 1
    end
    redirect("/results")
  end

  get "/results" do
   
  end
end