require 'rubygems'
require 'bundler/setup'
require 'twitter'

module UserComparer
  class User
  	attr_reader :username
  	def initialize(username)
  		@username = username
  	end

  	def followers
  	  client = Twitter::REST::Client.new do |config|
  	    config.consumer_key        = ENV['CONSUMER_KEY']
  	    config.consumer_secret     = ENV['CONSUMER_SECRET']
  	    config.access_token         = ENV['OAUTH_TOKEN']
  	    config.access_token_secret  = ENV['OAUTH_TOKEN_SECRET']
  	  end

  	  client.user(@username).followers_count
  	end

  end

  class Comparer
  	def initialize(user1, user2)
  		@user1 = user1
  		@user2 = user2
  	end

  	def compare
  		# returns user with more followers, or both if even
  		if @user1.followers > @user2.followers 
  			return "#{@user1.username} has more followers!"
  		elsif @user1.followers < @user2.followers
  			return "#{@user2.username} has more followers!"
  		else
  			return "#{@user1.username} and #{@user2.username} have the same number of followers!  Who knew!?"
  		end
  	end

  end
end


