var express = require('express')
var connect = require('../connect')
module.exports.getPointByStudentId = function(id, callback){
    var sql = `SELECT name, math, english, national_language, year, class from students s INNER JOIN transcripts t ON s.id = t.student_id WHERE s.id = ${id} ORDER BY year DESC`
    connect.query(sql, callback);
}
module.exports.editPointForStudent = function(student_id, year, newData, callback){
    var sql = `UPDATE transcripts SET 
    english = ${newData.english}, 
    math = ${newData.math},
    national_language = ${newData.national_language} 
    WHERE student_id = ${student_id} AND year = ${year}`
    connect.query(sql, callback);
}
