# Create Topics
15.times do
	Topic.create!(
		name: Faker::StarWars.character,
		description: Faker::Lorem.paragraph
	)
end
topics = Topic.all

# Create Posts
50.times do
	Post.create!(
		topic: topics.sample,
		title: Faker::Name.name,
		body: Faker::Lorem.paragraph
	)
end
posts = Post.all

# Create Comments
100.times do
	Comment.create!(
		post: posts.sample,
		body: Faker::StarWars.quote
	)
end

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"