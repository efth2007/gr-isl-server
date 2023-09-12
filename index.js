const express = require("express");
const cors = require("cors");
const port = 4000
const { v4: uuid } = require("uuid")
const pool = require('./db');


const app = express();

app.get("/", (req, res)=>{
    res.send("WORKIN........")
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