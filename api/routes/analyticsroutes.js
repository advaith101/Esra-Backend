var express = require('express');
var router = express.Router();
const userMethods = require('../db_modules/usermodules');
require('dotenv').config();
const jwt = require('jsonwebtoken')
const ENV = process.env.NODE_ENV || 'development';
const config = require(`../config/${ENV}.js`);
const {spawn} = require('child_process');

router.post('/analytics', (req, res) => {
 
    var dataToSend;
    // spawn new child process to call the python script
    const python = spawn('python', ['{analytics script name}.py'], arg1, arg2);
    // collect data from script
    python.stdout.on('data', function (data) {
     console.log('Pipe data from python script ...');
     dataToSend = data.json();
    });
    // in close event we are sure that stream from child process is closed
    python.on('close', (code) => {
    console.log(`child process close all stdio with code ${code}`);
    // send data to browser
    res.send(dataToSend)
    })
});

