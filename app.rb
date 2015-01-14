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
      score.lime_point
    elsif params[:fav_color] == "orange"
      score.orange_point
    elsif params[:fav_color] == "purple"
      score.grape_point
    end

    if score.apple > score.lime && score.apple > score.orange && score.apple > score.grape
      puts score.apple
      redirect("/apple_result")
    elsif score.lime > score.apple && score.lime > score.orange && score.lime > score.grape
      redirect("/lime_results")
    elsif score.orange > score.apple && score.lime > score.orange && score.lime > score.lime
      redirect("/orange_results")
    elsif score.grape > score.apple && score.lime > score.lime && score.lime > score.orange
      redirect("/grape_results");
    else
      redirect("results")
    end
  end

  get "/results" do
    erb :results
  end

  get "/apple_result" do
    erb :apple_result
  end
end