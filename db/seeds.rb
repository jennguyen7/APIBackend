# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Profile.destroy_all
GameEpisode.destroy_all
Question.destroy_all
Answer.destroy_all
AnswerSelection.destroy_all

#gryffindor = House.create(name:"Gryffindor", img_url:"http://images1.wikia.nocookie.net/__cb20120922143611/harrypotter/images/7/70/G_final.jpg")

ge01 = GameEpisode.create(title:"Pronoun Party")
ge02 = GameEpisode.create(title:"Silly Synonyms")
ge03 = GameEpisode.create(title:"Asshole Adverbs")
ge04 = GameEpisode.create(title:"Hell Homonyms")

q1 = Question.create(task_question_answer:"He is under the table and she is slamming the door.")
q2 = Question.create(task_question_answer:"He ordered pizza and she called Uber.")
q3 = Question.create(task_question_answer:"Which one is he?")
q4 = Question.create(task_question_answer:"Which one is she?")
q5 = Question.create(task_question_answer:"Who dognapped the puppes?")
q6 = Question.create(task_question_answer:"She grabbed the cats while he stopped the lab technicians.")
q7 = Question.create(task_question_answer:"He climbed up the tree while she ate her snack.")
q8 = Question.create(task_question_answer:"Who drank all the vodka?")

a1 = Answer.create(task_question_answer:, max_score:2, question_id:)
a2 = Answer.create(task_question_answer:, max_score:2, question_id:)
a3 = Answer.create(task_question_answer:, max_score:2, question_id:)
a4 = Answer.create(task_question_answer:, max_score:2, question_id:)
a5 = Answer.create(task_question_answer:, max_score:2, question_id:)
a6 = Answer.create(task_question_answer:, max_score:2, question_id:)
a6 = Answer.create(task_question_answer:, max_score:2, question_id:)
a8 = Answer.create(task_question_answer:, max_score:2, question_id:)
a9 = Answer.create(task_question_answer:, max_score:2, question_id:)
a10 = Answer.create(task_question_answer:, max_score:2, question_id:)
a11 = Answer.create(task_question_answer:, max_score:2, question_id:)
a12 = Answer.create(task_question_answer:, max_score:2, question_id:)
a13 = Answer.create(task_question_answer:, max_score:2, question_id:)
a14 = Answer.create(task_question_answer:, max_score:2, question_id:)
a15 = Answer.create(task_question_answer:, max_score:2, question_id:)
a16 = Answer.create(task_question_answer:, max_score:2, question_id:)