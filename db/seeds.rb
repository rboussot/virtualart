# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new(email: "a@a.a", password: "aaaaaa")
user.valid?
software = Software.new(title: "Premier Software")
software.valid?
course = Course.new(title: "Premier Cours")
course.valid?
lecture = Lecture.new(course: course, software: software)
lecture.valid?
users_lecture = UsersLecture.new(user: user, lecture:lecture)
users_lecture.valid?
realisation = Realisation.new(user: user, title: "Premiere Realisation", course: course)
realisation.valid?
stagetype = Stagetype.new(title: "Type de stage")
stagetype.valid?
stage = Stage.new(stagetype: stagetype, timeslot: "Date et Heure du stage")
stage.valid?
users_stage = UsersStage.new(user: user, stage: stage)
users_stage.valid?
timeslot = Timeslot.new(title: "Horaire de cours")
timeslot.valid?
users_course = UsersCourse.new(user: user, course: course, timeslot: timeslot)
users_course.valid?
block = Block.new(tag: "tagdublock")
block.valid?
