# Main block for all problems

data = []

100.times do |i|
	tweets = ["I'm user #{i}", "This is my second tweet"]
	user = {id: i, email: "user#{i}@gmail.com", username: "user_#{i}", age: (Random.new.rand(22..75)), tweets: tweets}
	data.push(user)
end

data.reverse!

# Solution to numbers 1 and 2

# puts "=================="
# puts "user_#2's tweets"
# puts "=================="
# puts "tweet: #{data[2][:tweets][0]}"
# puts "tweet: #{data[2][:tweets][1]}"

# Solution to number 4

# puts "Please enter the user ID you'd lke to look up"

# search_id = gets.chomp.to_i

# index_num = data.find_index {|h| h[:id] == search_id}

# puts "user_#{search_id} is at index #{index_num} in the array"

# Multiline solution to number 5

# puts "SEARCH RESULTS"
# puts "username     age"
# puts "========     ==="
# data.each do |h|
# 	if h[:age] < 26
# 		puts "#{h[:username]}      #{h[:age]}"
# 	end
# end

# Single line solution to number 5

puts "SEARCH RESULTS"
puts "username     age"
puts "========     ==="
data.select { |h| h[:age] <= 25}.each { |nh| puts "#{nh[:username]}      #{nh[:age]}"}
