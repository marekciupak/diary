User.destroy_all
Subject.destroy_all
Division.destroy_all



user_admin = User.create!( first_name: 'admin', last_name: 'admin', email: 'admin@example.com', password: 'test1234' )
user_teacher = User.create!( first_name: 'teacher', last_name: 'teacher', email: 'teacher@example.com', password: 'test1234' )
user_student = User.create!( first_name: 'student', last_name: 'student', email: 'student@example.com', password: 'test1234' )
p "Created #{User.count} users."

division_1 = Division.create!( year: '2000', letter: 'A' )
division_2 = Division.create!( year: '2000', letter: 'B' )
division_3 = Division.create!( year: '2000', letter: 'C' )
p "Created #{Division.count} users."

user_student.division_id = division_1.id
user_student.save
p 'User_student have division'

subject_1 = Subject.create!(name: "English", description: "English course")
subject_2 = Subject.create!(name: "Math", description: "Math course")
subject_3 = Subject.create!(name: "Polish", description: "Polish course")
p "Created #{Subject.count} subjects."

subject_1.user_id = user_teacher.id
subject_1.save
