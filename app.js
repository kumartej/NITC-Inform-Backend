var express = require("express"),
	config = require("./config"),
	firebase = require("firebase-admin");
	serviceAccount = require("./ionicfirebase-9f74c-firebase-adminsdk-sdgpt-4d444f9c61.json"),
	routes = require('./routes/index'),
	utilities = require('./middleware/utilities'),
	cors = require('cors');

var app = express();
var firebaseDb,ref;

app.get("/",routes.index);

app.get("/posts",routes.getPosts);

app.get("/nextLevel",routes.getNextLevel);

app.get("/postEvent",routes.postEvent);

app.use(function(req, res, next) {
  res.header('Access-Control-Allow-Origin', '*');
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

app.listen(3000, function(){
	firebase.initializeApp({
		credential: firebase.credential.cert(serviceAccount),
		databaseURL: "https://ionicfirebase-9f74c.firebaseio.com"
	});
	firebaseDb = firebase.database();
	ref = firebaseDb.ref("posts");
	ref.orderByKey().limitToLast(1).on("value",utilities.insertPost,function(errorObject){
		console.log("The Read Failed:::"+errorObject.code);
	});
	console.log("express App Started at port 3000");
});