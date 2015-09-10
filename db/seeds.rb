# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ActiveRecord::Base.transaction do
user_1 = User.create!(name: 'John Smith')
user_2 = User.create!(name: 'Jane Doe')
poll_1 = Poll.create!(title: 'Sample poll 1', author_id: user_1.id)
poll_2 = Poll.create!(title: 'Sample poll 2', author_id: user_2.id)
question_1 = Question.create!(body: 'Who do you want to vote for?', poll_id: poll_1.id)
question_2 = Question.create!(body: 'What issue concerns you?', poll_id: poll_1.id)
question_3 = Question.create!(body: 'Who is your favorite celebrity?', poll_id: poll_2.id)
answer_choice_1 = AnswerChoice.create!(body: "Clinton", question_id: question_1.id)
answer_choice_2 = AnswerChoice.create!(body: "Bernie", question_id: question_1.id)
answer_choice_3 = AnswerChoice.create!(body: "Economy", question_id: question_2.id)
answer_choice_4 = AnswerChoice.create!(body: "Health Care", question_id: question_2.id)
answer_choice_5 = AnswerChoice.create!(body: "Emma Stone", question_id: question_3.id)
answer_choice_6 = AnswerChoice.create!(body: "Natilie Portman", question_id: question_3.id)
end
