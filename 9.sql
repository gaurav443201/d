// Create Database
use CollegeDB

// Insert Data
db.student.insertMany([
  {id:1, name:"Gaurav", course:"BCA", marks:85},
  {id:2, name:"Rahul", course:"BBA", marks:90},
  {id:3, name:"Amit", course:"BCA", marks:75},
  {id:4, name:"Neha", course:"BBA", marks:88},
  {id:5, name:"Riya", course:"BCA", marks:92}
])

// Aggregation: Group by course and calculate avg
db.student.aggregate([
  {$group: {_id: "$course", avgMarks: {$avg: "$marks"}}}
])

// Aggregation: Count students per course
db.student.aggregate([
  {$group: {_id: "$course", totalStudents: {$sum: 1}}}
])

// Aggregation: Filter then group
db.student.aggregate([
  {$match: {marks: {$gt:80}}},
  {$group: {_id: "$course", highScorers: {$sum:1}}}
])

// Create Index
db.student.createIndex({name:1})

// Compound Index
db.student.createIndex({course:1, marks:-1})

// Show Indexes
db.student.getIndexes()

// Drop Index
db.student.dropIndex({name:1})
