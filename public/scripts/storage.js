

urlQuest = "/v0.1/quests/";

function localCreateUser(email){
	globalUser = {
		email: email
	}
}


function serverFetch(type, id, success, error){
	var url = urlQuest;
	if (id != null){
		url += id;
	}

	$.ajax({
        type: 'GET',
        url: url,
        dataType: "json",
        success: success,
        error: error
    });
}

function serverCreate(type, data, success, error){
	var url = urlQuest;
	$.ajax({
        type: 'POST',
        contentType: 'application/json',
        dataType: "json",
        url: url,
        data: data,
        success: success,
        error: error
    });
}

function serverUpdate(type, id, data, success, error){
	var url = urlQuest;
	if (id != null){
		url += id;
	}
	$.ajax({
        type: 'PUT',
        contentType: 'application/json',
        dataType: "json",
        data: data,
        url: url,
        success: success,
        error: error
    });
}


function addUserIdentity(object){
	object.user = globalUser;
	return object;
}



