require('dotenv').config()

const express = require("express");
const cors = require("cors");
const port = process.env.PORT || 4000;
const { v4: uuid } = require("uuid")
const pool = require('./db');


const app = express();

app.get("/", (req, res)=>{
    res.send(`Welcome...${process.env.MESSAGE}`)
})


// get all islands
app.get('/islands', async (req, res) => {
    //   console.log("your request...:", req)
     try {
      const islandsb = await pool.query('SELECT * FROM islands')
      res.json(islandsb.rows)
        } catch (err) {
            console.error(err)
        }
    })



app.listen(port, ()=> console.log("API srvr is running . . ."))