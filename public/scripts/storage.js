

urlQuest = "/quests";

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
        success: success,
        error: error
    });
}

function serverCreate(type, data, success, error){
	var url = urlQuest;
	$.ajax({
        type: 'POST',
        url: url,
        json: data,
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
        json: data,
        url: url,
        success: success,
        error: error
    });
}


function addUserIdentity(object){
	object.user = globalUser;
	return object;
}



