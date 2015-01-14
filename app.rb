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
    elsif params[:fav_color] == "green"
      score.lime_point
    elsif params[:fav_color] == "orange"
      score.orange_point
    elsif params[:fav_color] == "purple"
      score.grape_point
    end
    scores = {:apple => score.apple, :lime => score.lime, :orange => score.orange, :grape => score.grape};
    scores.sort_by {|k,v| v}.reverse
    if score.last == 
      redirect("/apple_result");
    else
      redirect("/results")
    end
  end

  get "/results" do
    erb :results
  end

  get "/apple_result" do
    erb :apple_result
  end
end