var config = require('../config'),
	pg = require('pg'),
	firebase = require("firebase-admin");

module.exports.insertPost = function insertPost(snapshot){
	console.log(snapshot.val()+config.inpostI);
	try
	{
		if(config.inpostI==0){
			config.inpostI=1;
			return true;
		}else{
			var snapData = snapshot.val(),dataKey;
			for (var key in snapshot.val()){
		  		if(snapshot.hasOwnProperty(key)){
		  			snapData = snapshot.val()[key];
		  		}
		  		break;
		  	}
		  	for (var key in snapData){
		  		if(snapData.hasOwnProperty(key)){
		  			snapData = snapData[key];
		  			dataKey = key;
		  		}
		  		break;
		  	}
		  	console.log(snapData);
			console.log('info', "Inside insertPost :: ")
			var connectionString = config.pgConnectionString;
			var Client = require('pg-native')

			var client = new Client()
			client.connectSync(connectionString)

			currentDate = new Date();
			creationdate = currentDate.toString();

			var data = {highestLevel:snapData.postTo,postId:dataKey,header:snapData.header, venue:"NotYetDecided", posted_by:snapData.postedby,post_time:creationdate ,conducted_by:"NotYetDecided",description:snapData.description,img_links:"NotYetDecided",links:"NotYetDecided"};
			rows = client.querySync('INSERT INTO Post_to (postid, header, venue, posted_by, post_time,conducted_by,description,img_links,links, highest_level) values($1, $2, $3, $4, $5, $6, $7,$8, $9,$10);',[data.postId,data.header,data.venue,data.posted_by,data.post_time,data.conducted_by,data.description,data.img_links,data.links,data.highestLevel]);
			if (rows.length == 0)
				return true
			else 
				return false
		}
	}catch(ex)
	{
		console.log('error', 'Error in insertPost :: '+ex );
		return false
	}
}

module.exports.getPosts = function getPosts(id, start){
	sendReturnData = {isValid : false, errmsg : 'id does not exists', data:[]}
	try{

		console.log('info', "Inside getPosts :: ");
		var connectionString = config.pgConnectionString;
		var Client = require('pg-native');

		var client = new Client();
		client.connectSync(connectionString);

		var data = {id:id, start:parseInt(start)+10};
		if(id=="2"){
			data = {id1:id,id2:'4',id3:'6',id4:'7',start:parseInt(start)+10};
		}else if(id=="3"){
			data = {id1:id,id2:'5',id3:'6',id4:'7',start:parseInt(start)+10};
		}else{
			data = {id1:id,id2:'4',id3:'5',id4:'7',start:parseInt(start)+10};
		}
		console.log(data);
		rows = client.querySync('SELECT * FROM Post_to WHERE highest_level=$1 OR highest_level=$2 OR highest_level=$3 OR highest_level=$5  LIMIT $4;',[data.id1,data.id2,data.id3,data.start,data.id4]);
		if (rows.length == 0) {
			return sendReturnData;
		}else{
			if(rows.length >= start){
				sendReturnData.isValid = true;
				sendReturnData.errmsg = 'NO ERR';
			 	 for(var i=start;i<rows.length;i++)
			 	 	sendReturnData.data.push(rows[i]);
			}
			else{
			 	sendReturnData.errmsg = 'NO MORE POSTS';
			}
			return sendReturnData;
		}

	}catch(ex){
		console.log('error', 'Error in getPosts :: '+ex );
		return false
	}
}

module.exports.getNextLevel = function getNextLevel(id){
	sendReturnData = {isValid : false, errmsg : 'id does not exists', data:[]}
	try{
		console.log('info', "Inside getNextLevel :: ");
		var connectionString = config.pgConnectionString;
        var Client = require('pg-native');
        var client = new Client();
		client.connectSync(connectionString);
        var data = {id:id};
        rows = client.querySync("SELECT Userid.users,Userid.id,Userid.is_leaf FROM Userid, Parent_child WHERE Parent_child.root_id = $1 and Parent_child.child_id =Userid.id;",[data.id]);
        if(rows.length==0){
        	return sendReturnData;
        }else{
        	sendReturnData.isValid = true;
        	sendReturnData.errmsg = 'NO ERR';
        	for(var	i=0;i<rows.length;i++){
        		if(rows[i]['users'] == 'Faculty' || rows[i]['users'] == 'Satff'){
        			sendReturnData.data.push([rows[i]['users'],'login']);
        		}
        		else if(rows[i]['is_leaf'] == 1 ){
        			sendReturnData.data.push([rows[i]['users'],'leaf']);
        		}
        		else{
        			sendReturnData.data.push([rows[i]['users'],rows[i]['id']]);
        		}
          	}
        }
        return sendReturnData;
	}catch(ex){
		console.log('error','Error in getNextLevel :: '+ex);
		return false;
	}

}

module.exports.postEvent = function postEvent(snap){
	try{
		var snapData,snapkey;
		console.log('info',"Inside postEvent ::");
		snapData = snap.val();

		var connectionString = config.pgConnectionString;
		var Client = require('pg-native')
		var client = new Client()
		client.connectSync(connectionString)

	  	for (var key in snapData){
	  		if(snapData.hasOwnProperty(key)){
	  			snapkey = key;
	  			snapData = snapData[key];
	  		}
	  		break;
	  	}

	  	// console.log(snapData.header,snapData.venue,snapData.postedBy,snapData.time,snapData.description);

	  	var eventTime = new Date(snapData.time).toISOString().slice(0, 19).replace('T', ' ');
	  	console.log(eventTime);

		var data = {eventTime:eventTime, highestLevel:snapData.postTo,postId:snapkey,header:snapData.header, venue:snapData.venue, posted_by:snapData.postedby,post_time:snapData.time ,conducted_by:"NotYetDecided",description:snapData.description,img_links:"NotYetDecided",links:"NotYetDecided"};
		rows = client.querySync('INSERT INTO Post_to (postid, header, venue, posted_by, post_time,conducted_by,description,img_links,links, highest_level,eventtime) values($1, $2, $3, $4, $5, $6, $7,$8, $9,$10,$11);',[data.postId,data.header,data.venue,data.posted_by,data.post_time,data.conducted_by,data.description,data.img_links,data.links,data.highestLevel,data.eventTime]);
		return true;
	}catch(ex){
		console.log('error','Error in postEvent :: '+ex);
		return false;
	}
}

module.exports.getCalendarEvents = function getCalendarEvents(id){
	sendReturnData = {isValid : false, errmsg : 'id does not exists', data:[]};
	try{
		console.log('info',"Inside getCalendarEvents ::");
		var connectionString = config.pgConnectionString;
		var Client = require('pg-native');

		var client = new Client();
		client.connectSync(connectionString);

		var data = {id:id};
		if(id=="2"){
			data = {id1:id,id2:'4',id3:'6',id4:'7'};
		}else if(id=="3"){
			data = {id1:id,id2:'5',id3:'6',id4:'7'};
		}else{
			data = {id1:id,id2:'4',id3:'5',id4:'7'};
		}
		console.log(data);

		var nextDate = new Date(),prevDate = new Date();
		nextDate.setMonth(nextDate.getMonth() + 6);
		prevDate.setMonth(prevDate.getMonth() - 6);
		rows = client.querySync('SELECT header,eventtime FROM Post_to WHERE highest_level=$1 OR highest_level=$2 OR highest_level=$3 OR highest_level=$4;',[data.id1,data.id2,data.id3,data.id4]);

		if (rows.length == 0) {
			return sendReturnData;
		}else{
			sendReturnData.isValid = true;
			sendReturnData.errmsg = 'NO ERR';
		 	var temp = new Date();
		 	 for(var i=0;i<rows.length;i++){
		 	 	temp = new Date(rows[i].eventtime);
		 	 	temp.setMinutes(temp.getMinutes()+30);
		 	 	sendReturnData.data.push({title:rows[i].header,startTime:rows[i].eventtime.toUTCString(),endTime:temp.toUTCString(),allDay:false});
		 	 }
			return sendReturnData;
		}

	}catch(ex){
		console.log('error','Error in getCalendarEvents ::' +ex);
		return false;
	}
}