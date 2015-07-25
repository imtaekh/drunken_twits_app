class HomeController < ApplicationController
  def index
    @list = [] # add names and twitter ids in hashes. {"name"=>"twitterid"} for example,
    # @list = [{"Katy Perry"=>"katyperry"},{"Donald Trump"=>"realdonaldtrump"},{"Justin Bieber"=>"justinbieber"},{"Barack Obama"=>"BarackObama"},{"Rihanna"=>"rihanna"},{"Lady Gaga"=>"ladygaga"}]
  end

  def show
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_CONSUMER_KEY1"]
      config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET1"]
      config.access_token        = ENV["TWITTER_ACCESS_TOKEN1"]
      config.access_token_secret = ENV["TWITTER_ACCESS_SECRET1"]
    end
    @tweets = @client.user_timeline(params[:id], :count => 5)
  end
end
