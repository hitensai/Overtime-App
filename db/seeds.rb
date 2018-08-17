@user=User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "hiten", last_name: "sai")
puts "1 user created"

100.times do |post|
Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "A hundred posts are created"



