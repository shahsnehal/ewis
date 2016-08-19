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
	var col = 0;

	var yield = row.insertCell(col++);
	yield.innerHTML = '<input type="radio" name="yield">' 	
		
	var material = row.insertCell(col++);
	material.innerHTML = '<select class="form-control" name="material[]">'+
									'<option value="">Carton</option>'+
									'<option value="">Product Lable</option>'+
									'<option value="">Unlablled Vial</option>'+
								'</select>'
		
	var lot = row.insertCell(col++);
	lot.innerHTML = '<select class="form-control" name="lot[]">'+
									'<option value="">12345</option>'+
									'<option value="">4567</option>'+
									'<option value="">10230</option>'+
									'<option value="">32415</option>'+
								'</select>'
	
	var qty = row.insertCell(col++);
	qty.innerHTML = Math.floor(Math.random() * 100) + 1  

	var assignQty = row.insertCell(col++);
	assignQty.innerHTML = '<input type="number"  min="0" max="" class="form-control">' 
		
	var close = row.insertCell(col++);
	close.innerHTML = '<button type="button" class="removeMaterialForm btn btn-danger btn-sm " style="display: inline-block;"><span class="glyphicon glyphicon-remove"></span></button>'

	
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
