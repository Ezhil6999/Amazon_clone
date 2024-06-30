const express = require('express');

app=express()

app.post('/api/signup',(req, res, next)=>{
    console.log(req.body)
})

mongo_db_url = "mongodb+srv://ezhil6999:india@123@clusterfree.mcymyme.mongodb.net/?retryWrites=true&w=majority&appName=ClusterFree";
