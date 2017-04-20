var config = require('../config'),
	util = require('../middleware/utilities'),
	firebase = require("firebase-admin");

module.exports.index = index;
module.exports.getPosts = getPosts;

function index(req,res,next){
	res.send("HELLO GUYS\n");
	// next();
}

function getPosts(req,res,next){
	console.log(req.query);
	res.header('Access-Control-Allow-Origin', '*');
  	res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
	var retData = util.getPosts(req.query.id,req.query.start)
	res.json(retData);
	// next();
}

module.exports.getNextLevel = function getNextLevel(req,res,next){
	console.log(req.query);
	res.header('Access-Control-Allow-Origin', '*');
  	res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
	var retData = util.getNextLevel(req.query.id);
	res.json(retData);
	// next();
}

module.exports.postEvent = function postEvent(req,res,next){
	console.log(req.query);
	
	firebaseDb = firebase.database();
	ref = firebaseDb.ref("posts");
	ref.orderByKey().equalTo(req.query.key).once("value",util.postEvent)

	res.header('Access-Control-Allow-Origin', '*');
  	res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  	res.json({isValid : true, errmsg : 'NO ERR', data:[]});
}