'use strict';

var mainApp = angular.module("todoApp", ['ngRoute']);

mainApp.config(function($routeProvider) {
	$routeProvider
		.when('/seccode', {
			templateUrl: 'partial/secret.jsp',
			controller: 'SecretCtrl'
		})
		.when('/register', {
			templateUrl: 'partial/register.jsp',
			controller: 'RegisterCtrl'
		})
		.otherwise({template : 'partial/login.jsp'});
		
});

mainApp.controller('SecretCtrl', ['$scope','$routeParams', function($scope, $routeParams) {
	$scope.secretcode = function () {
		 
	     var  mobile = $('#mobile').val();
		
          
		    var url = "http://localhost:8090/ngappboot/api/users/api/protei/secret";
		    var arr = {'mobile' : $('#mobile').val()}
		    $.ajax({
		        type: "POST",
		        url: url,
		        data:JSON.stringify(arr),
		        contentType: 'application/json; charset=utf-8',
		        dataType: "JSON",
		        success: function(resultData){
		        	
		        	var mymodal = $('#dlg');
		            mymodal.find('.modal-body').text(resultData.code + "\n" + resultData.status + "\n" + resultData.description  );
		            mymodal.modal('show');
		            
		        	
		        	
		        }
		
		    });
	}
	
	$scope.redirect = function () {
		 
	     var  mobile = $('#mobile').val();
	     window.location="/ngapp/#/register?mobile="+mobile;
         
		    
	}
}]);


mainApp.controller('RegisterCtrl', function($scope) {
	 $scope.registration = function () {
		
   		     var mobile = $('#mobile').val();
   			 var secert = $('#code').val();
   			 
   			 
   			var url = "http://localhost:8090/ngappboot/api/users/api/protei/registration";
   	 	    var arr = {'mobile' : $('#mobile').val(),'code':$('#code').val()}
   	 	    $.ajax({
   	 	        type: "POST",
   	 	        url: url,
   	 	        data:JSON.stringify(arr),
   	 	        contentType: 'application/json; charset=utf-8',
   	 	        dataType: "JSON",
   	 	        success: function(resultData){
   	 	        var mymodal = $('#dlg');
	            mymodal.find('.modal-body').text(resultData.code + "\n" + resultData.status + "\n" + resultData.description  );
	            mymodal.modal('show');
   	 	        }
   	 	        
   	 	    });
     };


});

mainApp.controller('InitCtrl1', ['$scope','$routeParams', function($scope, $routeParams) {
	$scope.init = function () {
	  var param1 = $routeParams.mobile;
	 
	  $('#mobile').val(param1)
	}
	}]);