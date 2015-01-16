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
    @name = params[:name]

    def score_each(score)
      apple_choices  = ["red", "optimist", "unicorn", "sweet", "action", "math", "fire_fighter", "cheap", "laser", "average", "read"]
      lime_choices   = ["green", "optimist", "godzilla", "sour", "horror", "science", "wrestler", "fast", "flight", "extreme", "sports"]
      orange_choices = ["orange", "pessimist", "king_kong", "sweet", "romance", "ela", "teacher", "broken", "door", "worthless", "bully"]
      grape_choices  = ["purple", "pessimist", "willy", "sour", "comedy", "social", "musician", "truck", "invisibility", "cool", "chill"]

      params.each do |k,v|
        if apple_choices.include?(v) && lime_choices.include?(v)
          puts "Apple n Lime"
          score.apple_point
          score.lime_point
        elsif orange_choices.include?(v) && grape_choices.include?(v)
          puts "Orange n Grape"
          score.orange_point
          score.grape_point
        elsif apple_choices.include?(v) && orange_choices.include?(v)
          puts "Apple n Orange"
          score.apple_point
          score.orange_point
        elsif lime_choices.include?(v) && grape_choices.include?(v)
          puts "Lime n Grape"
          score.lime_point
          score.grape_point
        elsif apple_choices.include?(v)
          puts "Apple"
          score.apple_point
        elsif lime_choices.include?(v)
          # score.lime_point
          puts "Lime"
          score.lime_point
        elsif orange_choices.include?(v)
          # score.orange_point
          puts "Orange"
          score.orange_point
        elsif grape_choices.include?(v)
          # score.grape_point
          puts "Grape"
          score.grape_point
        end
      puts "Key: #{k}"
      puts "Value: #{v}"
      end
      puts "Apple: #{score.apple}"
      puts "Lime: #{score.lime}"
      puts "Orange: #{score.orange}"
      puts "Grape: #{score.grape}"
    end

    score_each(score)

    # if params[:fav_color] == "red"
    #   score.apple_point
    #   puts score.apple
    # elsif params[:fav_color] == "green"
    #   puts score.apple
    #   score.lime_point
    # elsif params[:fav_color] == "orange"
    #   puts score.apple
    #   score.orange_point
    # elsif params[:fav_color] == "purple"
    #   puts score.apple
    #   score.grape_point
    # end

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