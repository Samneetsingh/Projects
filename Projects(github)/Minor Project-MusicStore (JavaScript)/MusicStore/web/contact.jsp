<%-- 
    Document   : contact
    Created on : 6 Nov, 2012, 12:31:31 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html lang="en">


<head>

<link rel="shortcut icon" href="images/favicon.html" />

<meta charset="UTF-8" />

<meta name="robots" content="index, follow" />

<meta name="keywords" content="" />

<meta name="description" content="" />

<title>Music Store</title>

<!-- ////////////////////////////////// -->

<!-- //      Start Stylesheets       // -->

<!-- ////////////////////////////////// -->

<link href="style.css" rel="stylesheet" type="text/css" />

<link href="inner.css" rel="stylesheet" type="text/css" />

<!--[if lt IE 9]>

<link href="styles/ie8.css" rel="stylesheet" type="text/css" />

<![endif]-->

<!-- ////////////////////////////////// -->

<!-- //      Javascript Files        // -->

<!-- ////////////////////////////////// -->

<script type="text/javascript" src="jquery-1.6.4.min.js"></script>

<script type="text/javascript" src="hoverIntent.js"></script>
 
<script type="text/javascript" src="superfish.js"></script>
 
<script type="text/javascript" src="supersubs.js"></script>

<script type="text/javascript" src="contact.js"></script>

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

                    <li><a href="index.jsp">Home</a></li>

                    <li><a href="about.jsp">About</a>

                      </li>

                    <li><a href="products.jsp">Products</a></li>

                    <li><a href="services.jsp">Services</a></li>

                    <li><a href="#">Video</a>

                        <ul>

                          
                            <li><a href="video3.html">Video Three Column</a></li>

                            <li><a href="video4.html">Video Four Column</a></li>

                        </ul>

                    </li>

                    

                    <li><a href="contact.jsp" class="current">Contact</a></li>

                </ul><!-- #topnav -->

            </div><!-- #nav -->
	
        </div><!-- end #top -->

        
        <div id="header" class="innerpage">

        	<div class="shadow"></div>

        	<div class="container940">

        		<h1 class="pagetitle">Contact Us</h1>

                <div class="pagedesc">The score of your life...</div>

                <div class="clear"></div><!-- clear float -->

            </div><!-- end container940 -->

        </div><!-- end #header -->

        
        
		<div id="content" class="withsidebar">

        	<div id="main">

            	<div id="maincontent">

                    <h2 class="title_pattern uppercase"><span>Keep In Touch With Us</span></h2>

                    <p>User feedback is a way for you to improve an existing product by listening to your users&rsquo; opinions. Getting useful user feedback can be tricky, so you will have to think outside the box and study your users&rsquo; actions well!
		 <span class="colortext">.</span>
			Thus, the team of Music Store requests you to give your valuable feedback and stay connected to us so that we can improve upon ourselves and provide you with better services..</p>

                    
                    <div class="separator line"></div>

                    
                    
                    <div id="contactform">

                      <form id="contact" action="#">

                        <fieldset>

                          <label for="name" id="name_label">Name:</label>

                          <input type="text" name="name" id="name"  value="" class="text-input" /><br/>

                          <label for="email" id="email_label">E-mail:</label>

                          <input type="text" name="from" id="email"  value="" class="text-input" /><br/>

                          <label for="subject" id="subject_label">Subject:</label>

                          <input type="text" name="subject" id="subject"  value="" class="text-input" /><br/>

                          <label for="msg" id="msg_label">Message:</label>

                         <textarea cols="60" rows="10" name="msg" id="msg" ></textarea> <br class="clear" />

                          <input type="submit" name="submit" class="butcontact" id="submit_btn" value="Send Mail"/>

                        </fieldset>

                      </form>

                      <br class="clear" />

                      <span class="error" id="name_error">Please enter name !</span>

                      <span class="error" id="email_error">Please enter email address !</span>

                      <span class="error" id="email_error2">Please enter valid email address !</span>

                      <span class="error" id="msg_error">Please enter message !</span>

                      
                    </div><!-- end #contactform -->

                    
                     <div class="clear"></div><!-- clear float -->

                </div><!-- end #maincontent -->

                <div id="sidebar">

                	<ul>

                    	<li class="widget-container">

                        	<h2 class="widget-title">Contact Us</h2>

                            <div class="textwidget">

                           <p> G-8 Area, Rajouri Garden<br/>

                             New Delhi - 110064</p>

                            <p>
               Telephone:  +91 11 45599900 <br/>

                             Email: <a href="mailto:4musicstore@gmail.com" class="colortext">4musicstore@gmail.com</a><br/>

                                               </p>

                            </div>

                        </li>

                    	<li class="widget-container">

                        	<h2 class="widget-title">Our Map</h2>

                            <div class="textwidget">

                            <iframe width="300" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Guru+Tegh+Bahadur+Institute+of+Technology,+Mahakavi+Goswami+Tulsidas+Marg,+Hari+Nagar,+New+Delhi,+Delhi&amp;aq=0&amp;oq=guru+tegh+bahad&amp;sll=20.98352,82.752628&amp;sspn=45.458666,86.572266&amp;ie=UTF8&amp;hq=Guru+Tegh+Bahadur+Institute+of+Technology,+Mahakavi+Goswami+Tulsidas+Marg,+Hari+Nagar,+New+Delhi,+Delhi&amp;ll=28.631744,77.116215&amp;spn=0.006295,0.006295&amp;t=m&amp;output=embed"></iframe><br /><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Guru+Tegh+Bahadur+Institute+of+Technology,+Mahakavi+Goswami+Tulsidas+Marg,+Hari+Nagar,+New+Delhi,+Delhi&amp;aq=0&amp;oq=guru+tegh+bahad&amp;sll=20.98352,82.752628&amp;sspn=45.458666,86.572266&amp;ie=UTF8&amp;hq=Guru+Tegh+Bahadur+Institute+of+Technology,+Mahakavi+Goswami+Tulsidas+Marg,+Hari+Nagar,+New+Delhi,+Delhi&amp;ll=28.631744,77.116215&amp;spn=0.006295,0.006295&amp;t=m" style="color:#0000FF;text-align:left">View Larger Map</a></small>
                            </div>

                        </li>

                    </ul>

                </div><!-- end #sidebar -->

                
                <div class="clear"></div><!-- clear float -->

            </div><!-- end #main -->

		</div><!-- end #content -->


        
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
