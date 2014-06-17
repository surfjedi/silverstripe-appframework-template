<!DOCTYPE html>
<html>
<head>
    <title>Intel Appframework Demo</title>


<!-- 	this script so that enters the site from any url not the root it will redirect to the home page -->
	<script>
		var nowUrl = window.location.href;
		if (nowUrl != "http://www.yoursite.com/")
		window.location.href = "http://www.yoursite.com/";
		console.log(nowUrl);
	</script>


    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0;" />
    
    <link rel="stylesheet" type="text/css" href="$ThemeDir/appframework/af.ui.css" />
    <link rel="stylesheet" type="text/css" href="$ThemeDir/appframework/icons.css" />
    <link rel="stylesheet" type="text/css" href="$ThemeDir/css/icons.css" />

    <script type="text/javascript" charset="utf-8" src="$ThemeDir/appframework/appframework.ui.min.js"></script>
    <!--AppFramework plugin for sliding side menu-->
    <script type="text/javascript" charset="utf-8" src="$ThemeDir/appframework/plugins/af.slidemenu.js"></script>



    <script>

		$.ui.autoLaunch = false;
		$.ui.animateHeaders = false;
		$.ui.splitview = false;        
		

		
		$(document).ready(function(){
		    $.ui.setLeftSideMenuWidth(270);
		    
		    
		    $.ui.setRightSideMenuWidth(220);
		    
/* 		    Comment out the below line to disable swipe */
		    $.ui.slideSideMenu = false;
		    
		    
		    $.ui.launch();
		    
		    
		    var myScroller=$("#image_scroller").scroller({
			   verticalScroll:false,
			   horizontalScroll:true,
			   autoEnable:true
			   
			   
			})
			
			$('#contact-us ul').hide();
			var kill = $('nav li a').get(2);
			$(kill).parent().hide();
			
		});
		
		
    </script>
    <style>

    </style>    
</head>
<body> 
<div id="afui">
    
    <!--left side menu Navigation bar -->
    <nav>
        <ul class="list">
			<li class="divider">Menus</li>
            <% control Menu(1) %>
                		<li><a href="#$URLSegment">$MenuTitle</a></li>
            <% end_control %>
        </ul>
    </nav>
    
    <!--right side menu Navigation bar -->
    <aside>
        <ul class="list">
	            	<% control ChildrenOf(blog) %>
	            		<li class=""><a href="#$URLSegment">$MenuTitle</a></li>
	            	<% end_control %>
        </ul>
    </aside>    
    
    <div id="content" style=""> 
        
    <!--Main Pages-->
        
        <% control Menu(1) %>
        	<div class="panel" title="$URLSegment" id="$URLSegment" data-footer="none" >
	        	<header>
	                <a onclick='$.ui.toggleLeftSideMenu()' class='button icon add big' style="float:left">Menu</a>
	                <a onclick='$.ui.toggleRightSideMenu()' class='button icon home big' style="float:right">blog</a>
	                <h1>$Title</h1>
	            </header>
	
	            <h1>$Title</h1>
	            <div id="ss_content">
					<% if allChildren %>
	    				<ul class="list">
						<% control allChildren %>
							<li class="arrow"><a href="#$URLSegment" title="Go to the $Title.XML page" >$MenuTitle.XML</a></li>
						<% end_control %>
				  		</ul> 
				  	<% end_if %>
	            	$Content
				</div>
        	</div> 		
        <% end_control %>
        
        <% control Menu(1) %>
            	<% control allChildren %>
                		<div class="panel" title="$URLSegment" id="$URLSegment" data-footer="none" >
				        	<header>
				                <a onclick='$.ui.toggleLeftSideMenu()' class='button icon add big' style="float:left">Menu</a>
				                <a onclick='$.ui.toggleRightSideMenu()' class='button icon home big' style="float:right">Properties</a>
				                <h1>$Title</h1>
				            </header>
								<h1>$Title</h1>

									
  		                		$Content
								
		                </div>
		                <% end_control %>
       		<% end_control %>
       		
	      <div class="panel" title="Landing Page" id="landing" data-footer="none" selected="true">
            <header>
                <a onclick='$.ui.toggleLeftSideMenu()' class='button icon add big' style="float:left">Menu</a>
                <a onclick='$.ui.toggleRightSideMenu()' class='button icon home big' style="float:right">Properties</a>
                <h1>landing page</h1>
            </header>
            <% control Page(home) %>
            
            	$Content
            <% end_control %>
            
        </div>

    </div>
</div>
	
</body>
</html>    