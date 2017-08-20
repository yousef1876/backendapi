<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="${lang}" ng-app="todoApp" dir="ltr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <style type="text/css">
        html, body {
            height: 100%;
            margin: 0;
        }

        #wrapper {
            min-height: 100%; 
        }
        #header{
        background-color: white;
        }
        #headerdiv-head{
        background-color: white;
        }
        #headerdiv{
           min-width: 100%; 
           background-color: white;
        }
       .content {
    width: 200px;
    height: 600px;
   

    position:absolute;
    top:50%;
    right:30%;
    
}

/*
 * Forced text alignments
 */
.text-align-center,.text-center {
    text-align: center !important;
}
 
.text-align-left,.text-left {
    text-align: left !important;
}
 
.text-align-right,.text-right {
    text-align: right !important;
}
 
/*
 * Font Weights
 */
.semi-bold {
    font-weight: 400 !important;
}
 
.ultra-light {
    font-weight: 300 !important;
}
 
/*
 * Font Sizes
 */
.font-xs {
    font-size: 85% !important;
}
 
.font-sm {
    font-size: 95% !important;
}
 
.font-md {
    font-size: 130% !important;
}
 
.font-lg {
    font-size: 160% !important;
}
 
.font-xl {
    font-size: 200% !important;
}
 
.font-400 {
    font-size: 400% !important;
}
 
/*
 * Center Canvas
 */
.center-canvas,.center-child-canvas > canvas {
    display: block !important;
    margin: 0 auto !important;
}
 
/*
 * Margins
 */
 
.no-margin {
    margin: 0 !important;
}
 
.margin-top-5 {
    margin-top: 5px !important;
}
 
.margin-top-10 {
    margin-top: 10px !important;
}
 
.margin-bottom-5 {
    margin-bottom: 5px !important;
}
 
.margin-bottom-10 {
    margin-bottom: 10px !important;
}
 
.margin-right-5 {
    margin-right: 5px !important;
}
 
/*
 * No border
 */
.no-border,.well[class*=" bg-"].no-border {
    border-width: 0 !important;
}
 
.no-border-transparent {
    border-color: transparent !important;
}
 
.no-border-radius {
    border-radius: 0;
    -moz-border-radius: 0;
    -webkit-border-radius: 0;
}
 
/*
 * Inlines
 */
.display-inline {
    display: inline-block !important;
}
 
.display-normal {
    display: inline !important;
}
 
/*
 * Images
 */
.hover-transparent {
    opacity: .5;
}
 
.hover-transparent:hover {
    opacity: 1;
}
 
/*
 * JUST A BORDER 
 */
.bordered {
    border: 1px solid rgba(0,0,0,.2);
}
 
.bordered:hover {
    border: 1px solid rgba(0,0,0,.4);
}
 
/*
 * CURSORS
 */
.cursor-pointer {
    cursor: pointer;
}
.padding-5 {
    padding: 5px !important;
}
 
.padding-7 {
    padding: 7px !important;
}
 
.padding-10 {
    padding: 10px !important;
}
 
.padding-top-10 {
    padding-top: 10px !important;
}
 
.padding-bottom-10 {
    padding-bottom: 10px !important;
}
    </style>
	<title>Protei</title>		
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
		
		<link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="css/font-awesome.min.css">

		
		
		<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-production-plugins.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-production.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-skins.min.css">

		
		<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-rtl.min.css"> 

		

		
		<link rel="stylesheet" type="text/css" media="screen" href="css/demo.min.css">

		
		<link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon">
		<link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon">

		
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

	
		<link rel="apple-touch-icon" href="img/splash/sptouch-icon-iphone.png">
		<link rel="apple-touch-icon" sizes="76x76" href="img/splash/touch-icon-ipad.png">
		<link rel="apple-touch-icon" sizes="120x120" href="img/splash/touch-icon-iphone-retina.png">
		<link rel="apple-touch-icon" sizes="152x152" href="img/splash/touch-icon-ipad-retina.png">
		
		<link rel="apple-touch-startup-image" href="img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
		<link rel="apple-touch-startup-image" href="img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
		<link rel="apple-touch-startup-image" href="img/splash/iphone.png" media="screen and (max-device-width: 320px)">

	 <script type="text/javascript" src="js/lib/angular.min.js"></script>
	 <script type="text/javascript" src="js/lib/angular-resource.min.js"></script>
	 <script type="text/javascript" src="js/lib/angular-route.min.js"></script>
	 
	
	 <script type="text/javascript" src="js/app.js"></script>
	
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     
     
</head>
<body>
	<div ng-view></div>
</body>
</html>