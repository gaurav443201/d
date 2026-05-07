// Create Database
use CollegeDB

// Create (Insert using save method)
db.student.insertOne({id:1, name:"Gaurav", marks:85})
db.student.insertOne({id:2, name:"Rahul", marks:90})
db.student.insertOne({id:3, name:"Amit", marks:70})

// Read (All)
db.student.find()

// Read with condition (Logical Operator)
db.student.find({$and:[{marks:{$gt:80}}, {marks:{$lt:100}}]})

// Read with OR
db.student.find({$or:[{name:"Gaurav"}, {marks:70}]})

// Update
db.student.updateOne({id:1}, {$set:{marks:95}})

// Update multiple
db.student.updateMany({marks:{$lt:80}}, {$set:{marks:80}})

// Delete
db.student.deleteOne({id:2})

// Delete multiple
db.student.deleteMany({marks:{$lt:80}})
