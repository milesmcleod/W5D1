# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Goal.destroy_all
Comment.destroy_all

40.times do
  user = User.create(username: Faker::Hipster.word, password: 'password')
  5.times do
    goal = Goal.create(body: Faker::ChuckNorris.fact, user_id: user.id, private: true)
    3.times do
      comment = Comment.create(body: Faker::TheFreshPrinceOfBelAir.quote, author_id: user.id, commentable_id: goal.id, commentable_type: 'Goal')
    end
  end
end
