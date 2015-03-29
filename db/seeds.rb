User.destroy_all
Subject.destroy_all


User.create!([
  { first_name: 'admin', last_name: 'admin', email: 'admin@example.com', password: 'test1234' },
  { first_name: 'teacher', last_name: 'teacher', email: 'teacher@example.com', password: 'test1234' },
  { first_name: 'student', last_name: 'student', email: 'student@example.com', password: 'test1234' }
])
p "Created #{User.count} users."



Subject.create!([
  { name: "English", description: "English course"},
  { name: "Math", description: "Math course"},
  { name: "Polish", description: "Polish course"}  
])
 
p "Created #{Subject.count} subjects."
