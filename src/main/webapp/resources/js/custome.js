/**
 * 
 */
function onClickShow(divName) {
	document.getElementById(divName).style.display = "block";
}
function onClickHide(divName) {
	document.getElementById(divName).style.display = "none";
}
function onCheckedShow(checkBox,divName) {
	document.getElementById(divName).style.display = checkBox.checked ? "block" : "none";
}
function onCheckedEnable(checkBox,fieldName) {
	document.getElementById(fieldName).disabled  = checkBox.checked ? false : true;
}
function onCheckedDisable(checkBox,fieldName) {
	document.getElementById(fieldName).disabled  = checkBox.checked ? true	: false;
}
function onClickEnable(fieldName) {
	document.getElementById(fieldName).disabled = false;
}
function onClickDisable(fieldName) {
	document.getElementById(fieldName).disabled = true;
}

function addRow(tableID) {
	var table = document.getElementById(tableID);
	var rowCount = table.rows.length;
	var row = table.insertRow(rowCount);

	var cell1 = row.insertCell(0);
	cell1.innerHTML = '<input type="radio" name="yield">' 	
		
	var cell2 = row.insertCell(1);
	cell2.innerHTML = '<select class="form-control" name="lot[]">'+
									'<option value="">Lot 1</option>'+
									'<option value="">Lot 2</option>'+
									'<option value="">Lot 3</option>'+
									'<option value="">Lot 4</option>'+
								'</select>'
	
	var cell3 = row.insertCell(2);
	cell3.innerHTML = Math.floor(Math.random() * 100) + 1  

	var cell4 = row.insertCell(3);
	cell4.innerHTML = '<input type="number"  min="0" max="" class="form-control" id="quantity" >' 
		
	var cell5 = row.insertCell(4);
	cell5.innerHTML = '<button type="button" class="removeMaterialForm btn btn-danger btn-sm " style="display: inline-block;"><span class="glyphicon glyphicon-remove"></span></button>'

	
}
function deleteRow(row, tableId) {
	var i = row.parentNode.parentNode.rowIndex;
	document.getElementById(tableId).deleteRow(i);
}

function showCheckBoxes(checkBox,fieldName) {
	var fields = document.getElementsByName(fieldName);
	if(checkBox.checked){
		for (var i = 0; i < fields.length; i++) {
	        fields[i].disabled = false;
	    }
	}else{
		for (var i = 0; i < fields.length; i++) {
	        fields[i].disabled = true;
	    }
	}
}

function deleteDiv(element) {
	alert("helo");
	element.parentElement.parentElement.parentElement.remove();
	onclick="deleteDiv(this);"
}

function showNotification(notificationMessage){
	
	//Remove Existing Notification
    var notification = document.getElementById("notification");
	if (notification != null) {
		notification.parentNode.removeChild(notification);
	}
	
	if(notificationMessage != ""){
    	
        var div = document.createElement("div");
        div.id = "notification"
        div.innerHTML = '<div class="alert alert-success" >'
		  	+ '<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'
		  	+ notificationMessage
			+ '</div>';
        
        document.getElementById("notificationArea").appendChild(div);
    }
}

function formSubmit(formId) {
	document.getElementById(formId).submit();
}
function setActiveMenu(menuId) {
	document.getElementById(menuId).className += " active";
}
