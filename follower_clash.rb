require 'rubygems'
require 'bundler/setup'
require_relative 'lib/user_comparer'

user1 = UserComparer::User.new('aaronhayslip')
user2 = UserComparer::User.new('justinbieber')
puts "#{user1.username}'s follower count: #{user1.followers}"
puts "#{user2.username}'s follower count: #{user2.followers}"
comparer = UserComparer::Comparer.new(user1, user2)
puts "#{user1.username}'s friend count: #{user1.friends}"
puts "#{user2.username}'s friend count: #{user2.friends}"
puts "#{user1.username}'s tweet count: #{user1.tweets}"
puts "#{user2.username}'s tweet count: #{user2.tweets}"
puts "#{user1.username}'s favorite count: #{user1.lists}"
puts "#{user2.username}'s favorite count: #{user2.lists}"
puts "#{user1.username} is from #{user1.location}"
puts "#{user2.username} is from #{user2.location}"
puts "#{user1.username}'s last tweet says: #{user1.status}"
puts "#{user2.username}'s last tweet says: #{user2.status}"
puts "And the user with the most followers is: #{comparer.compare}"
puts "And the user with the most friends is: #{comparer.comp_friends}"
puts "And the user with the most tweets is: #{comparer.comp_tweets}"
puts "And the user with the most lists is: #{comparer.comp_lists}"