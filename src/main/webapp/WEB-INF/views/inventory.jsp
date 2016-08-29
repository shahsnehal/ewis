<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Inventory</title>
	<jsp:directive.include file="include_header_scripts.jsp" />
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid">
	<div class="row">
	
		<jsp:include page="leftNavigation.jsp">
			<jsp:param value="inventoryMenu" name="selectMenuItem"/>
		</jsp:include>
		
		<div class="col-sm-10">
			<div id="notificationArea">
				<div id="notification">
					<c:if test="${not empty message}">
						<div class="alert alert-success" >
						  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						  ${message}
						</div>
					</c:if>
				</div>
			</div>
			
			<h2 id="materialList">Inventory List </h2><br>
			
			<table class="table table-striped table-bordered table-hover" id="inventoryTable">
		    <thead>
		      <tr>
		      	<th>Lot ID</th>
		      	<th>Material ID</th>
		      	<th>Quantity</th>
		      	<th>Area</th>
		        <th>Location</th>
		        <th>QC Status</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		      	<td>12345</td>
		      	<td>MA002SA</td>
		      	<td>200</td>
		        <td>Area 1</td>
		        <td>Location 1</td>
		        <td>Status 1</td>
		      </tr>
		      <tr>
		      	<td>35412</td>
		      	<td>MA002RA</td>
		      	<td>300</td>
		       <td>Area 2</td>
		        <td>Location 2</td>
		        <td>Status 3</td>
		      </tr>
		      <tr>
		      	<td>23456</td>
		      	<td>MA003DY</td>
		      	<td>800</td>
		        <td>Area 5</td>
		        <td>Location 3</td>
		        <td>Status 2</td>
		      </tr>
		    </tbody>
		  </table>
		  
		 	<div id="context-menu">
	      	<ul class="dropdown-menu" role="menu">
	           <li><a tabindex="-1">Split</a></li>
	           <li><a tabindex="-1">Copy</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">Export</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">Where used</a></li>
	           <li><a tabindex="-1">Check out</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">Move Lot</a></li>
	           <li><a tabindex="-1">Waste Quantity</a></li>
	           <li><a tabindex="-1">Adjust Quantity</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">History</a></li>
	           <li><a tabindex="-1">Properties</a></li>
	      	</ul>
	      </div>
	      
	      <!-- Adjust Inventory Modal -->
			<div id="adjustInventoryModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			    	
			    	<form action="adjustInventoryData" id="adjustInventoryForm" method="get">
			    	
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">Adjust quantity</h4>
				      </div>
				     
				      <div class="modal-body">
				        
				        <label>Lot ID : </label> <span id="adjustLotIdLabel"></span><br>
				        <label>Quantity : </label> <span id="quantityLabel"></span>
				        <hr>
				        
				        <div class="form-group">
					      <label>New Quantity:</label>
					      <input type="number"  min="0" id="adjustedQuantity" class="form-control" id="quantity" >
					    </div>
				        
				      </div>
				     
				      <div class="modal-footer">
				        <button type="submit" class="btn btn-primary btn-sm" data-dismiss="modal" 
				        onclick='showNotification( document.getElementById("adjustedQuantity").value + " quantity set for Lot " + $("span#adjustLotIdLabel").text() )'>
				        Update</button>
				      </div>
			      
			      </form>
			    
			    </div>
			  </div>
			</div>
	      
	      
	      <!-- waste Inventory Modal -->
			<div id="wasteInventoryModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			    	
			    	<form action="wasteInventoryData" id="wasteInventoryForm" method="get">
			    	
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">Waste quantity</h4>
				      </div>
				     
				      <div class="modal-body">
				        
				        <label>Lot ID : </label> <span id="wastedLotIdLabel"></span><br>
				        <label>Quantity : </label> <span id="quantityLabel"></span>
				        <hr>
				        
				        <div class="form-group">
					      <label>Wasted Quantity:</label>
					      <input type="number"  min="0" id="wastedQuantity" class="form-control" id="quantity" >
					    </div>
				        
				      </div>
				     
				      <div class="modal-footer">
				        <button type="submit" class="btn btn-primary btn-sm" data-dismiss="modal"
				         onclick='showNotification(document.getElementById("wastedQuantity").value + " quantity wasted from Lot " + $("span#wastedLotIdLabel").text())'>
				         Update</button>
				      </div>
			      
			      </form>
			    
			    </div>
			  </div>
			</div>
			
			<!-- Move lot Modal -->
			<div id="moveLotModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			    	
			    	<form action="moveLotData" id="moveLotForm" method="get">
			    	
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">Move lot</h4>
				      </div>
				     
				      <div class="modal-body">
				        
				        <label>Lot ID : </label> <span id="moveLotIdLabel"></span><br>
				        <label>Quantity : </label> <span id="quantityLabel"></span><br>
				        <label>Current area : </label> <span id="areaLabel"></span><br>
				        <label>Current location : </label> <span id="locationLabel"></span>
				        <hr>
				        
				        <div class="form-group">
					      <label>Target area : </label>
					      <select class="form-control" name="targetArea" id="targetArea">
							<option value="Area 1" >Area 1</option>
							<option value="Area 2" >Area 2</option>
							<option value="Area 3" >Area 3</option>
							<option value="Area 4" >Area 4</option>
							<option value="Area 5" >Area 5</option>
							<option value="Area 6" >Area 6</option>
						  </select>
					    </div>
					    
					     <div class="form-group">
					      <label>Target location : </label>
					      <select class="form-control" name="targetLocation" id="targetLocation">
							<option value="location 1" >Location 1</option>
							<option value="location 2" >Location 2</option>
							<option value="location 3" >Location 3</option>
							<option value="location 4" >Location 4</option>
							<option value="location 5" >Location 5</option>
							<option value="location 6" >Location 6</option>
						  </select>
					    </div>
				        
				      </div>
				     
				      <div class="modal-footer">
				        <button type="submit" class="btn btn-primary btn-sm" data-dismiss="modal"
				         onclick='showNotification( " Lot " + $("span#moveLotIdLabel").text() + " moved from " + document.getElementById("locationLabel").innerHTML + " to " + document.getElementById("targetLocation").value + "" )'>
				         Move lot</button>
				      </div>
			      
			      </form>
			    
			    </div>
			  </div>
			</div>
			
			<!-- split lot Modal -->
			<div id="splitLotModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			    	
			    	<form class="" action="#" id="splitLotForm" method="get">
			    	
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">Split lot</h4>
				      </div>
				     
				      <div class="modal-body row">
				        
				        <div class="col-sm-12">
				        
				        <label>Lot ID : </label> <span id="splitLotIdLabel"></span>&nbsp&nbsp&nbsp&nbsp
				        <label>Quantity : </label> <span id="splitQuantityLabel"></span>
				        
				        <div class="splitFormParent">
				        <div class="splitFormChild">
				        
					        <div align="right"> 
					        	<button type="button" class="removeSplitForm btn btn-danger btn-sm" style="display: none;"><span class="glyphicon glyphicon-remove"></span></button>
					        </div>
					        <br>
					        
					        <div class="form-group col-sm-6">
					       	 	<label>Container ID:</label>
					      		<input type="text" class="form-control" id="container" placeholder="Container ID">
					    	</div>
					    
					        <div class="form-group col-sm-6">
						      <label>Quantity:</label>
							  <input type="number"  min="0" class="form-control" >
							</div>
						        
					        <div class="form-group col-sm-6">
						      <label>Target area : </label>
						      <select class="form-control" name="targetArea">
								<option value="Area 1" >Area 1</option>
								<option value="Area 2" >Area 2</option>
								<option value="Area 3" >Area 3</option>
								<option value="Area 4" >Area 4</option>
								<option value="Area 5" >Area 5</option>
								<option value="Area 6" >Area 6</option>
							  </select>
						    </div>
						    
						     <div class="form-group col-sm-6">
						      <label>Target location : </label>
						      <select class="form-control" name="targetLocation" id="targetLocation">
								<option value="location 1" >Location 1</option>
								<option value="location 2" >Location 2</option>
								<option value="location 3" >Location 3</option>
								<option value="location 4" >Location 4</option>
								<option value="location 5" >Location 5</option>
								<option value="location 6" >Location 6</option>
							  </select>
						    </div>
				        
				        </div>
				        
				        </div>
			        	<div class="splitExtraForm " id="splitExtraForm"></div>
				      
				      </div>
				      </div>
				     
				      <div class="modal-footer">
				      	<button id="addSplitForm" type="button" class="btn btn-default btn-sm" >
				      		<span class="glyphicon glyphicon-plus-sign"></span>Add container
				      	</button>
				       
				        <button type="submit" class="btn btn-primary btn-sm" data-dismiss="modal"
				         onclick='showNotification( " Lot " + $("span#splitLotIdLabel").text() + " successfully splited into containers ")'>
				         Split </button>
				      </div>
			      
			      </form>
			    
			    </div>
			  </div>
			</div>
	      
	      
		 </div>
	</div>
	</div>
	
	
<script>

$(function () {

	$('#inventoryTable').contextmenu({
        target: '#context-menu',
        scopes: 'tbody > tr',
        onItem: function (row, e) {
            var name = $(row.children('*')[0]).text();
            var action = $(e.target).text();
           
            var lotId = $(row.children('*')[0]).text();
            var materialId = $(row.children('*')[1]).text();
            var quantity = $(row.children('*')[2]).text();
            var lotArea = $(row.children('*')[3]).text();
            var lotLocation = $(row.children('*')[4]).text();
            var qcStatus = $(row.children('*')[5]).text();
            
        	var notificationMessage = "";
        	
            if(action == "Copy"){
            	
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+'/editInventory';
            	
            }else if(action == "Export"){
            	
            	window.open(location.href.substr(0, (location.href).lastIndexOf('/'))+'/resources/exportInventory.xml', '_blank');
            	
            }else if(action == "Check out"){
            	
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+'/editInventory';
            	
            }else if(action == "Waste Quantity"){
            	
            	$('#wasteInventoryModal').on('show.bs.modal', function (event) {
          		  var modal = $(this)
          		  modal.find('.modal-body #wastedLotIdLabel').html(lotId)
           		  modal.find('.modal-body #quantityLabel').html(quantity)
          		})
          		$('#wasteInventoryModal').modal('toggle');
            	
            }else if(action == "Delete"){
            	
            	notificationMessage = name + " deleted successfully";
            	
            }else if(action == "Adjust Quantity"){

            	$('#adjustInventoryModal').on('show.bs.modal', function (event) {
            		  var modal = $(this)
            		  modal.find('.modal-body #adjustLotIdLabel').html(lotId)
             		  modal.find('.modal-body #quantityLabel').html(quantity)
            	})
            	$('#adjustInventoryModal').modal('toggle');
            	
            }else if(action == "Split"){
            	
            	$('#splitLotModal').on('show.bs.modal', function (event) {
          		  var modal = $(this)
          		  modal.find('.modal-body #splitLotIdLabel').html(lotId)
           		  modal.find('.modal-body #splitQuantityLabel').html(quantity)
          		})
          		$('#splitLotModal').modal('toggle');
            	
            }else if(action == "Move Lot"){
            	
            	$('#moveLotModal').on('show.bs.modal', function (event) {
            		  var modal = $(this)
            		  modal.find('.modal-body #moveLotIdLabel').html(lotId)
             		  modal.find('.modal-body #quantityLabel').html(quantity)
             		  modal.find('.modal-body #areaLabel').html(lotArea)
             		  modal.find('.modal-body #locationLabel').html(lotLocation)
            		})
            	$('#moveLotModal').modal('toggle');
            	
            }else if(action == "Properties"){
            	
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+'/container?lotId='+lotId;
            	
            }else if(action == "History"){
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+"/inventoryHistory";
            }
            
            showNotification(notificationMessage)
            
            //alert('You right clicked on ' + name + '\'s row and selected menu item "' + action  + '".');
        }
    });
});

$(document).ready(function() {
    
	$('#inventoryTable').DataTable({
        dom: 'l<"toolbar">frtip',
        initComplete: function(){
           $("#inventoryTable_filter").append('&nbsp <div class="btn-group"> <label class="btn btn-primary btn-sm">'+
		        '<span class="glyphicon glyphicon-import"></span> Import <input type="file" id="import" style="display: none;">'+
			    '</label> <a href="addInventory" class="btn btn-primary btn-sm">'+
				'<span class="glyphicon glyphicon-plus"></span> Add'+
				'</a> </div>'); 
			$("#inventoryTable_length").css("float","left");
        }
     });
    
    var importFile = document.getElementById("import");
	importFile.onclick = function () {
	    this.value = null;
	};
	
	importFile.onchange = function () {
	    var notificationMessage = this.value.substr((this.value).lastIndexOf('\\')+1)+" imported successfully"
	    showNotification(notificationMessage)
	};
	
	var splitChildDiv = $(".splitFormParent").children();
	var splitChildDivNo = 1;
 	
	$("#addSplitForm").click(function(){
		
		if(splitChildDivNo <3 ){
			splitChildDiv.clone(true,true).appendTo(".splitExtraForm");	
			$(".splitExtraForm .splitFormChild:last-child").find("input").val(''); 
			$(".splitExtraForm .splitFormChild:last-child .removeSplitForm").css("display","block");
			splitChildDivNo += 1 ;
		}
		if(splitChildDivNo == 3){
			$("#addSplitForm").css("visibility","hidden");
		}
		
	});
	
	$(".removeSplitForm").click(function(){
  		$(this).closest('.splitFormChild').remove();
  		splitChildDivNo -= 1;
  		$("#addSplitForm").css("visibility","visible");
  		//$(".modal-dialog").width($(".splitFormChild").width()*splitChildDivNo);
  		
     });
	
} );

</script>
<jsp:directive.include file="include_body_scripts.jsp" />

</body>
</html>