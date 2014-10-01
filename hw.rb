data = []

100.times do |i|
	tweets = ["I'm user #{i}", "This is my second tweet"]
	user = {id: i, email: "user#{i}@gmail.com", username: "user_#{i}", age: (Random.new.rand(22..75)), tweets: tweets}
	data.push(user)
end

data.reverse!

# puts "=================="
# puts "user_#{user_number}'s tweets"
# puts "=================="
# puts "tweet: #{data[user_number][:tweets][0]}"
# puts "tweet: #{data[user_number][:tweets][1]}"

puts "Please enter the user ID you'd lke to look up"

search_id = gets.chomp.to_i

index_num = data.find_index {|h| h[:id] == search_id}

puts "user_#{search_id} is at index #{index_num} in the array"
