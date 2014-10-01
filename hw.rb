data = []

5.times do |i|
	tweets = ["I'm user #{i}", "This is my second tweet"]
	user = {id: i, email: "user#{i}@gmail.com", username: "user_#{i}", age: (Random.new.rand(22..75)), tweets: tweets}
	data.push(user)
end

user_number = gets.chomp.to_i
puts "=================="
puts "user_#{user_number}'s tweets"
puts "=================="
puts "tweet: #{data[user_number][:tweets][0]}"
puts "tweet: #{data[user_number][:tweets][1]}"
