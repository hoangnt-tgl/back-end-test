var express = require('express');
var router = express.Router();
var Student = require('../models/student');

router.post('/getpointforstudent', function(req, res, next) {
    var id = req.body.id
    Student.getPointByStudentId(id, function(err, result){
        if (err) res.status(500).json(err)
        else if (result){
            res.status(200).json(result)
        } else {
            res.status(404).json({message: "Not Found"})
        }
    })
})

router.post('/updatepointforstudent', function(req, res, next){
    var student_id = req.body.student_id
    var year = req.body.year
    var newData = req.body.data
    Student.editPointForStudent(student_id, year, newData, function(err, result){
        if (err) res.status(500).json(err)
        else if (result){
            res.status(200).json(result)
        } else {
            res.status(404).json({message: "Not Found"})
        }
    })
})

module.exports = router