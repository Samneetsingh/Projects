<%-- 
    Document   : index
    Created on : 6 Nov, 2012, 12:16:22 PM
    Author     : hp
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="images/favicon.html" />

<meta charset="UTF-8" />

<meta name="robots" content="index, follow" />

<meta name="keywords" content="" />

<meta name="description" content="" />

     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="style.css" type="text/css">
       <link rel="stylesheet" href="skitter.styles.css" media ="all" type="text/css">
        <title>Music Store</title>
        <script type="text/javascript" src="jquery-1.6.4.min.js"> </script>

<script type="text/javascript" src="jquery.easing.1.3.js"> </script>

<script type="text/javascript" src="jquery.animate-colors-min.js"> </script>

<script type="text/javascript" src="jquery.skitter.js"> </script>

<script type="text/javascript" src="hoverIntent.js"> </script>

<script type="text/javascript" src="superfish.js"> </script>
<script type="text/javascript" src="supersubs.js"> </script>

<script type="text/javascript">
jQuery(document).ready(function(){

	//Menu
	jQuery("ul.sf-menu").supersubs({
 
	minWidth		: 12,		// requires em unit.

	maxWidth		: 27,		// requires em unit.

	extraWidth		: 3	// extra width can ensure lines don't sometimes turn over due to slight browser differences in how they round-off values
						  
 	// due to slight rounding differences and font-family
 
	}).superfish();  // call supersubs first, then superfish, so that subs are
			 // not display:none when measuring. Call before initialising
			 // containing tabs for same reason.

	jQuery(document).ready(function() {

		jQuery(".box_skitter_large").skitter({

			animation: "random",

			interval: 3000,

			numbers: false,
 
			numbers_align: "right",
 
 			hideTools: true,

			controls: false,

			focus: false,

			focus_position: true,

			width_label:'340px',
 
			enable_navigation_keys: true,
   
 			progressbar: false

		});
	});
		 
});
</script>   
    </head>
    <body>
       <div id="outer-container">

	<div id="container">

    	<div id="top">

        	<div id="logo"><a href="index.jsp"><img src="images/logo.png" alt=""  /></a></div><!-- end #logo -->

            <div id="nav">

                <ul id="topnav" class="sf-menu">

                    <li><a href="index.jsp"  class="current">Home</a></li>
                <li><a href="about.jsp">About</a>

                       
                    </li>

                    <li><a href="products.jsp">Products</a></li>

                    <li><a href="services.jsp">Services</a></li>

                    <li><a href="#">Video</a>

                        <ul>

                          <li><a href="Video3.html">Video Three Column</a></li>

                            <li><a href="Video4.html">Video Four Column</a></li>

                        </ul>
                    </li>

                     <li><a href="contact.jsp">Contact</a></li>

                </ul><!-- #topnav -->

            </div><!-- #nav -->
	
        </div><!-- end #top -->
        <div id="header">

        	<div id="slider-container">

            	
                <div class="box_skitter box_skitter_large">

                    <ul>

                        <li>

                            <a href="#"><img src="images/themes/4.jpg" alt="" height="500" width = "600"/></a>

                            <div class="label_text">

                                <h3 class="colortext uppercase"> Music Store entertains you.</h3>

                                <span>Music is the universal language of mankind..</span>

                            </div>

                        </li>

                        <li>

                            <a href="#"><img src="images/themes/7.jpg" alt="" height="500" width = "600"/></a>

                            <div class="label_text">

                                <h3 class="colortext uppercase">Replay Responive Music Express Themes</h3>

                                <span>Music is the wine which inspires one to new generative processes, and I am Bacchus who presses out this glorious wine for mankind and makes them spiritually drunken.</span>

                            </div>

                        </li>

                        <li>

                            <a href="#"><img src="images/themes/3.jpg" alt="" height="500" width = "600"/></a>

                            <div class="label_text">

                                <h3 class="colortext uppercase">Music is the poetry of the air</h3>

                                <span>Music cleanses the understanding; inspires it, and lifts it into a realm which it would not reach if it were left to itself</span>

                            </div>

                        </li>

                    </ul>

                </div>

                <div id="shadow-img-slider"></div>

            </div><!-- end #slider-container -->

       </div><!-- end #header -->

        
        <div id="after-header">

        	<h1> <span class="colortext">Music</span>
		 is what feelings sound like!! <span class="colortext"></span><br/>Music Store provides a platform to meet your feelings..</h1>

        </div><!-- end #after-header -->

        
        <div id="before-content" class="patternbox">

        	<div class="shadow"></div>

                <div class="container940">

            	<ul class="customlist">

                	<li>

                        <img src="images/icons/download.jpg" alt="" class="alignleft" height="250" width="250"/><br/>
                        <h3 class="valignmiddle"><b>Definition</b> </h3><br/>

                        <span>Music is an art form whose medium is sound and silence. Its common elements are pitch , rhythm , dynamics, and the sonic qualities of timbre and texture. </span>

                    </li>

                	<li>

                        <img src="images/icons/music.jpg" alt="" class="alignleft" height="250" width="250"/><br/>
                        <h3 class="valignmiddle"><b>History</b></h3><br/>

                        <span>The creation, performance, significance, and even the definition of music vary according to culture and social context. Music ranges from strictly organized compositions, through improvisational music to aleatoric forms. </span>

                    </li>

                	<li class="last">

                        <img src="images/icons/rr.jpg" alt="" class="alignleft" height="250" width="250"/><br/>
			<h3 class="valignmiddle"><b>Great Support</b></h3><br/>

                        <span>Professional musicians are employed by a range of institutions and organisations, including armed forces, churches and synagogues, symphony orchestras, broadcasting or film production companies, and music schools.  </span>

                    </li>

                </ul>

                <div class="clear"></div><!-- clear float -->

            </div><!-- end container940 -->

        </div><!-- end #before-content -->

        
        <div id="footer">
   
     		<div id="footer-pattern">


		<div class="container940">

            	<div id="footcol1">

                	<ul>

                    	<li class="widget-container">
 
                           <h2 class="widget-title">Latest Articles</h2>

                            <ul id="recentpostwidget">

                                <li>

                                    <img src="images/content/pic5.jpg" alt="" class="alignleft frame" />
 
                                   <h5><a href="article1.html">NASHVILLE, TN &mdash; (October 30, 2012)</a></h5>

                                    <span>BIG DADDY WEAVE&rsquo;S HIT SINGLE &rsquo;REDEEMED&rsquo; TOPS NATIONAL CHRISTIAN AUDIENCE (NCA) CHART AND REMAINS
					 IN NO. 1 SPOT ON CHRISTIAN AC MONITORED CHART FOR SECOND WEEK IN A ROW</span>
 
                               </li>

                                
                       </ul>
                        </li>
                    </ul>
                </div>

		<div id="footcol2">

                	<ul>

                        <li class="widget-container">

                        	<h2 class="widget-title">music</h2>

                            <ul>

                            	<li><span>Music is a moral law. It gives soul to the universe, wings to the mind, flight to the imagination, 
					and charm and gaiety to life and to everything.</span>
				</li>

                            </ul>

                        </li>

                    </ul>

                </div>

 
                       <div id="footcol3">

                	<ul>

                        <li class="widget-container">

                            <h2 class="widget-title"><a href="index.html">Gallery</a></h2>

                            <ul id="flickr">

                            	<li><a href="images/muvi/d.jpg"><img src="images/muvi/d.jpg" alt="" class="frame" height="50" width="50"/></a></li>

                                <li><a href="images/muvi/e.jpg"><img src="images/muvi/e.jpg" alt="" class="frame" height="50" width="50" /></a></li>

                                <li class="nomargin">
				<a href="images/muvi/b.jpg"><img src="images/muvi/b.jpg" alt="" class="frame" height="50" width="50"/></a></li>

                                <li><a href="images/muvi/a.jpg"><img src="images/muvi/a.jpg" alt="" class="frame" height="50" width="50"/></a></li>

                                <li><a href="images/muvi/c.jpg"><img src="images/muvi/c.jpg" alt="" class="frame" height="50" width="50"/></a></li>

                                <li class="nomargin">
				<a href="images/muvi/f.jpg"><img src="images/muvi/f.jpg" alt="" class="frame" height="50" width="50"/></a></li>

                            </ul>
                        </li>
                    </ul>
                </div>

		                <div id="footcol4">

                	<ul>

                        <li class="widget-container">

                        	<h2 class="widget-title">About Music Store</h2>

                            <div class="textwidget">

                            <p>It is designed that the Client&rsquo;s requirement deals with opening an online music store that will enable the client to mobilize
 			its business through  buying the different music related items in the website.
 			It will enable a customer to have access to online shopping that is the site should be dynamic and more customer
 			centric business procedure thereby maximizing the profit of the organization.</p>

                            
                            </div>
                        </li>
                    </ul>
                </div>

           
            <div class="clear"></div><!-- clear float -->

            </div><!-- end container940 -->

            
        </div><!-- end #footer-pattern -->
  
		</div><!-- end #footer -->

        
        <div id="after-footer">
 
       	<div class="container940">
   
             <div id="sn">
       
         	<ul>

                    	<li><a href="#"><img src="images/icons/fb.png" alt="" /></a></li>

                        <li><a href="#"><img src="images/icons/stumbleupon.png" alt="" /></a></li>

                        <li><a href="#"><img src="images/icons/lastfm.png" alt="" /></a></li>

                        <li><a href="#"><img src="images/icons/twitter.png" alt="" /></a></li>

                        <li><a href="#"><img src="images/icons/youtube.png" alt="" /></a></li>

                    </ul>
                </div>

                <div id="footertext">
                    Copyright &copy;hemant All Rights Reserved.
                </div>

               <div class="clear"></div>
		<!-- clear float -->

            </div><!-- end container940 -->

        </div><!-- end #after-footer -->

        
	</div><!-- end #container -->
		
</div><!-- end #outer-container -->

		
		
</body>
		


</html>




