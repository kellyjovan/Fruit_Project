require 'bundler'
Bundler.require
require_relative 'models/fruit.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index  
  end

  get '/personality' do
    erb :personality
  end

  post '/questions' do
    score = Fruits_score.new()
    score.name = params[:name]
    if params[:fav_color] == "red"
      score.apple
    elsif params[:fav_color] == "green"
      score.lime
    elsif params[:fav_color] == "orange"
      score.orange
    elsif params[:fav_color] == "purple"
      score.grape
    end
    redirect("/results")
  end

  get "/results" do
    erb :results
  end

  get "/apple_result" do
    erb :apple_result
  end
end