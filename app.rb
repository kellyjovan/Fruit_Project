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
      score.apple_point
      puts score.apple
    elsif params[:fav_color] == "green"
      puts score.apple
      score.lime_point
    elsif params[:fav_color] == "orange"
      puts score.apple
      score.orange_point
    elsif params[:fav_color] == "purple"
      puts score.apple
      score.grape_point
    end

    if score.apple > score.lime && score.apple > score.orange && score.apple > score.grape
      puts score.apple
      redirect("/apple_result")
    elsif score.lime > score.apple && score.lime > score.orange && score.lime > score.grape
      puts score.lime
      redirect("/lime_results")
    elsif score.orange > score.apple && score.orange > score.grape && score.orange > score.lime
      puts score.orange
      redirect("/orange_results")
    elsif score.grape > score.apple && score.grape > score.lime && score.grape > score.orange
      puts score.grape
      redirect("/grape_results")
    end
  end

  get "/results" do
    erb :results
  end

  get "/apple_result" do
    erb :apple_result
  end

  get "/lime_results" do 
    erb :lime_results
  end

  get "/orange_results" do
    erb :orange_results 
  end

  get "/grape_results" do
    erb :grape_results
  end
end