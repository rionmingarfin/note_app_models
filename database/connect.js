'use strict'
const config = require('../config');
const mysql =require('mysql')

const connection =mysql.createConnection({
    host : config.HOST,
    user : config.ROOT,
    password : config.PASSWORD,
    database : config.DATABASE
})

connection.connect(function(error) {
    if (error) {
        throw error;
    }else {
        console.log('connection');
    }
})
module.exports = connection;