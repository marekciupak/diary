Subject.destroy_all
Subject.create!([
  { name: "English", description: "English course"},
  { name: "Math", description: "Math course"},
  { name: "Polish", description: "Polish course"}  
])
 
p "Created #{Subject.count} subjects."