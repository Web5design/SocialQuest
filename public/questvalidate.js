





function validationError(id, errorMsg){
	$("#" + id).after($('<p class="validationError"></p>').text(errorMsg))
}


function validateNotEmpty(id, prettyName){
	if ($("#" + id).val() == ""){
		validationError(id, prettyName + " is not filled out")
		return false
	}else{
		return true
	}
}

function validateOneSelected(id, prettyName){
	if ($("#" + id + " input:checked").length == 0){
		validationError(id, "Select one")
		return false
	}else{
		return true
	}
}


function validateQuest(){
		removeValidationError()
		var v1 = validateNotEmpty("title", "Title") 
		var v2 = validateNotEmpty("email", "Mail")
		//var v3 = validateNotEmpty("date", "Date")
		var v4 = validateNotEmpty("description", "description")
		var v5 = validateOneSelected("types");
		
		return v1 && v2 && v4 && v5
	
}

function removeValidationError(){
	$(".validationError").remove()
}

$(function(){

	$("#submit").click(function(event){
		event.preventDefault()
		
		alert("valiation successfull: " + validateQuest())
		
	})

})

/*

the ids

title
mediaUrl
date
description


*/

