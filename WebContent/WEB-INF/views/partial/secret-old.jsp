<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en" ng-app="todoApp">
<div class="smart-style-4 body-container menu-on-top" id="wrapper">

		<header id="header">
			
			<script type="text/javascript">
			
			</script>

			<div id="headerdiv-head" class="pull-right">
				
				
				<div id="hide-menu" class="btn-header pull-right">
					<span> <a href="javascript:void(0);" data-action="toggleMenu" title="Collapse Menu"><i class="fa fa-reorder"></i></a> </span>
				</div>
							
				<div id="logout" class="btn-header transparent pull-right">
					<span> <a href="#" title="Sign Out" data-action="userLogout" data-logout-msg="You can improve your security further after logging out by closing this opened browser"><i class="fa fa-sign-out"></i></a> </span>
				</div>
				
				<ul class="header-dropdown-list hidden-xs">
					<li>
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img src="img/blank.gif" class="flag flag-us" alt="United States"> <span> US</span> <i class="fa fa-angle-down"></i> </a>
						<ul class="dropdown-menu pull-right">
							<li class="active">
								<a href="?lang=en"><img src="img/blank.gif" class="flag flag-us" alt="United States"> English (US)</a>
							</li>
							<li class="active">
								<a href="?lang=ar"><img src="img/blank.gif" class="flag flag-ar alt="Arabic"> Arabic</a>
							</li>

						</ul>
					</li>
				</ul>
				

			</div>
			

		</header>
		
		<aside id="left-panel">

			
			<div class="login-info">
				<span> 

				</span>
			</div>
			
			<nav>
				

				<ul>
					
					<li>
						<a href="#"><i class="fa fa-lg fa-fw fa-bar-chart-o"></i> <span class="menu-item-parent">Profile</span></a>
						<ul>
							<li>
								<a href="/ngapp/#/register" >  </label></a>
							</li>
							<li>
								<a href="/ngapp/#/seccode"><label th:text="#{ngapp.secret.code}"></label></a>
								
							</li>
							
						</ul>
					</li>
				
					
				</ul>
			</nav>

			
			
			
			

			<span class="minifyme" data-action="minifyMenu"> <i class="fa fa-arrow-circle-left hit"></i> </span>

		</aside>
		
		
		
		<div id="main" role="main" style="height: 100%">

			
			<div id="ribbon">

				<span class="ribbon-button-alignment"> 
					<span id="refresh" class="btn btn-ribbon" data-action="resetWidgets" data-title="refresh" rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true" data-reset-msg="Would you like to RESET all your saved widgets and clear LocalStorage?"><i class="fa fa-refresh"></i></span> 
				</span>

				
				<ol class="breadcrumb">
					
				</ol>
				

			</div>
			
			<div id="content">
              <div class="jarviswidget" id="wid-id-3" data-widget-editbutton="false" data-widget-custombutton="false">
				
				<header>
					<span class="widget-icon"> <i class="fa fa-edit"></i> </span>
					<h2> <label th:text="#{ngapp.secret.form}"></label></h2>				
					
				</header>

				
				<div>
					
					
					<div class="jarviswidget-editbox">
						
					</div>
					
					<div class="widget-body no-padding">
						
						<form id="secform" class="smart-form"  class="form-horizontal" novalidate >
							<header>
							</header>

							<fieldset>
								<div class="row" data-ng-controller="InitCtrl1" data-ng-init="init()">
									<section class="col col-6">
									   <label th:text="#{ngapp.mobile.secret.code}"></label>
										<label class="input"> <i class="icon-append fa fa-user"></i>
											<input type="text" id="mobile" name="mobile" 
											
											placeholder="MOBILE">
											
										</label>
									</section>
									
									<!-- <section class="col col-6">
										<label class="input"> <i class="icon-append fa fa-user"></i>
											<input type="text" id="code" name="code" placeholder="SECRETCODE">
											
										</label>
									</section> -->
									
								</div>

								
							</fieldset>

							
							<footer>
							<button type="submit" class="btn btn-primary" ng-click="redirect()">
									<label th:text="#{ngapp.code.next}"></label>
								</button>
								<button type="submit" class="btn btn-primary" ng-click="secretcode()">
									<label th:text="#{ngapp.code.send}"></label>
								</button>
							</footer>
						</form>

					</div>
					
					
				</div>
				
				
			</div>
			</div>
			
			

		</div>
		<div class="modal fade" id="dlg" tabindex="-1" role="dialog"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Response</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">{{code}} <br> {{status}} <br> {{description}}</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save
									changes</button>
							</div>
						</div>
					</div>
				</div>
		
		<div id="shortcut">
			<ul>
				<li>
					<a href="#ajax/inbox.html" class="jarvismetro-tile big-cubes bg-color-blue"> <span class="iconbox"> <i class="fa fa-envelope fa-4x"></i> <span>Mail <span class="label pull-right bg-color-darken">14</span></span> </span> </a>
				</li>
				<li>
					<a href="#ajax/calendar.html" class="jarvismetro-tile big-cubes bg-color-orangeDark"> <span class="iconbox"> <i class="fa fa-calendar fa-4x"></i> <span>Calendar</span> </span> </a>
				</li>
				<li>
					<a href="#ajax/gmap-xml.html" class="jarvismetro-tile big-cubes bg-color-purple"> <span class="iconbox"> <i class="fa fa-map-marker fa-4x"></i> <span>Maps</span> </span> </a>
				</li>
				<li>
					<a href="#ajax/invoice.html" class="jarvismetro-tile big-cubes bg-color-blueDark"> <span class="iconbox"> <i class="fa fa-book fa-4x"></i> <span>Invoice <span class="label pull-right bg-color-darken">99</span></span> </span> </a>
				</li>
				<li>
					<a href="#ajax/gallery.html" class="jarvismetro-tile big-cubes bg-color-greenLight"> <span class="iconbox"> <i class="fa fa-picture-o fa-4x"></i> <span>Gallery </span> </span> </a>
				</li>
				<li>
					<a href="#ajax/profile.html" class="jarvismetro-tile big-cubes selected bg-color-pinkDark"> <span class="iconbox"> <i class="fa fa-user fa-4x"></i> <span>My Profile </span> </span> </a>
				</li>
			</ul>
		</div>

		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script>
			if (!window.jQuery) {
				document.write('<script src="js/libs/jquery-2.1.1.min.js"><\/script>');
			}
		</script>

		<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
		<script>
			if (!window.jQuery.ui) {
				document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
			}
		</script>

		
		<script src="js/app.config.js"></script>

		
		<script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> 

		
		<script src="js/bootstrap/bootstrap.min.js"></script>

		
		<script src="js/notification/SmartNotification.min.js"></script>

		
		<script src="js/smartwidgets/jarvis.widget.min.js"></script>

		
		<script src="js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

		
		<script src="js/plugin/sparkline/jquery.sparkline.min.js"></script>

		
		<script src="js/plugin/jquery-validate/jquery.validate.min.js"></script>

		
		<script src="js/plugin/masked-input/jquery.maskedinput.min.js"></script>

		
		<script src="js/plugin/select2/select2.min.js"></script>

		
		<script src="js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

		
		<script src="js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

		
		<script src="js/plugin/fastclick/fastclick.min.js"></script>

		
		<script src="js/demo.min.js"></script>

		
		<script src="js/app.min.js"></script>

		
		<script src="js/speech/voicecommand.min.js"></script>

		
		<script src="js/smart-chat-ui/smart.chat.ui.min.js"></script>
		<script src="js/smart-chat-ui/smart.chat.manager.min.js"></script>

		
		<script type="text/javascript">
		
		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
		  _gaq.push(['_trackPageview']);
		
		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();
		
		  
		  var $orderForm = $("#secform").validate({
				// Rules for form validation
				rules : {
					mobile : {
						required : true
					}
				},
	
				// Messages for form validation
				messages : {
					mobile : {
						required : 'Please enter your Mobile'
					}
				},
	
				// Do not change code below
				errorPlacement : function(error, element) {
					error.insertAfter(element.parent());
				}
			});
		  
		</script>

	</div>
<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="dialogSmart">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      {{body}}
    </div>
  </div>
</div>
</html>
