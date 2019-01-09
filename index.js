const express = require('express');
var bodyParser = require("body-parser");
const db = require('./dbconfig')
var cors = require('cors')
var path = require('path');
const app = express();
var multer = require('multer');
var chrono = require('chrono-node')
var fs = require("fs")
var storage = multer.diskStorage({
    destination: function (req, file, callback) {
        callback(null, './uploads');
    },
    filename: function (req, file, callback) {
        callback(null, file.fieldname + ".xlsx");
    }
});
let info = [
    {
        when: "today",
        open: true,
        members: ["family", "friends"],
        people: 3,
        discount: {
            restaurant: "no",
            park: "some"
        },
        outsideFood: "not"
    },
    {
        when: "tomorrow",
        open: true,
        members: ["family", "friends"],
        people: 3,
        discount: {
            restaurant: "some",
            park: "some"
        },
        outsideFood: "not"
    },
    {
        when: "today",
        open: true,
        members: ["friend"],
        people: 2,
        discount: {
            restaurant: "no",
            park: "no"
        },
        outsideFood: "not"
    },
    {
        when: "tommorow",
        open: true,
        members: ["friend"],
        people: 2,
        discount: {
            restaurant: "no",
            park: "no"
        },
        outsideFood: "not"
    },
    {
        when: "friday",
        open: false
    }
]
var upload = multer({ storage: storage }).single('questionAnswer');
var xlsx = require('node-xlsx')
app.use(express.static(path.join(__dirname, 'uploads')));
app.use(cors());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json())
app.post("/upload", function (req, res) {
    console.log()
    upload(req, res, (err) => {
        if (err) {
            return res.end("Error uploading file.");
        }
        const xlsx = require('xlsx')
        var dir = "./uploads/"
        var workbook = xlsx.readFile(dir + req.file.fieldname + ".xlsx")
        var sheet = workbook.SheetNames;
        var data = xlsx.utils.sheet_to_json(workbook.Sheets[sheet[0]])
        data.forEach(function (detail) {
            if(detail.Bangalore!=null)
            {
                db.query("insert into quesans (`questions`,`answers`) values (?,?)", [detail.Metonyms, detail.Bangalore], function (err, result) {
                if (err) throw err;
                })
            }
        })

    });
})
app.post("/holiday",function(req,res){
    console.log("succ")
    upload(req, res, (err) => {
        if (err) {
            console.log(err)
            return res.end("Error uploading file.");
        }
        const xlsx = require('xlsx')
        var dir = "./uploads/"
        var workbook = xlsx.readFile(dir + req.file.fieldname + ".xlsx")
        var sheet = workbook.SheetNames;
        var data = xlsx.utils.sheet_to_json(workbook.Sheets[sheet[0]])
        data.forEach(function (detail) {
            db.query("insert into holiday (`date`,`reason`) values (?,?)", [chrono.parseDate(detail.date), detail.reason], function (err, result) {
                if (err) throw err;
            })
        })

    });
})
const monthNames = ["January", "February", "March", "April", "May", "June",
  "July", "August", "September", "October", "November", "December"
];
var keyWords=["open","available","close","not available"];
app.post("/send", function (req, res) {
    let details = {
        message:"",
        sender:"admin"
    }
    var chronoDate = chrono.parseDate(req.body.message,{forwardDate:true})
    console.log(chronoDate)
    if(chronoDate!=null)
    {
        var str=req.body.message;
        var date = new Date(chronoDate)
        var keyFlag=false;
        for(let i=0;i<keyWords.length;i++)
        {
            if(str.includes(keyWords[i]))
            {
                keyFlag=true;
                db.query("SELECT * from holiday where date = ?",[chronoDate],(err,dbResult)=>{
                    if(err) throw err;
                    if(dbResult.length > 0){
                        details.message+="we are not Open on "+monthNames[date.getMonth()]+" "+date.getDate()
                        res.send(details)
                    }
                    else{
                        details.message+="yes we are Open on "+monthNames[date.getMonth()]+" "+date.getDate()
                        res.send(details)    
                    }
                })
                break;
            }
        }
        if(!keyFlag)
        {
            details.message = "What You want to know about the date "+monthNames[date.getMonth()]+" "+date.getDate()
            res.send(details)       
        }
    }
    else{
        
        var str = req.body.message;
        // var str = "lost";
        // var arr = str.split(" ");
        var temp = str.trim();
        var replaced = temp.replace(/ /g, "%' OR questions like '%")
        // console.log("SELECT * from quesans WHERE questions like '%"+replaced+"%' ")
        var query="SELECT * from quesans WHERE questions like '%"+replaced+"%'";
        // var query = "SELECT * from quesans WHERE ARRAY["+arr+"] && questions"
        console.log(query)
        db.query(query,(err,response)=>{
            if(err) throw err;
            console.log(response.length);
            if(response.length > 0 )
            {
                details.message=response[0].answers;
               
            }
            else{
                details.message="Please enter the valid question";
            }
            // console.log(details)
            res.send(details)
        })
    }
})
app.get("/test",function(req,res){
    res.send("success")
})



app.listen(5000);