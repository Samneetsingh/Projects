<%-- 
    Document   : products
    Created on : 6 Nov, 2012, 12:31:06 PM
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

<link href="ie8.css" rel="stylesheet" type="text/css" />

<![endif]-->

<!-- ////////////////////////////////// -->

<!-- //      Javascript Files        // -->

<!-- ////////////////////////////////// -->

<script type="text/javascript" src="jquery-1.6.4.min.js"></script>

<script type="text/javascript" src="hoverIntent.js"></script>
 
<script type="text/javascript" src="superfish.js"></script>
 
<script type="text/javascript" src="supersubs.js"></script>

<script type="text/javascript">

jQuery(document).ready(function(){

	//Menu
	jQuery("ul.sf-menu").supersubs({
 
	minWidth		: 12,		// requires em unit.

	maxWidth		: 27,		// requires em unit.

	extraWidth		: 3	
	// extra width can ensure lines don't sometimes turn over due to slight browser differences in how they round-off values

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

        	<div id="logo"><a href="index.jsp">
                        <img src="images/logo.png" alt=""  /></a></div><!-- end #logo -->

            <div id="nav">

                <ul id="topnav" class="sf-menu">

                    <li><a href="index.jsp">Home</a></li>

                    <li><a href="about.jsp">About</a>

                        <ul>

                            <li><a href="elements.jsp">Elements</a></li>

                            <li><a href="single-product.jsp">Product Details</a></li>

                         </ul>

                    </li>

                    <li><a href="product.jsp" class="current">Products</a></li>

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

        
        <div id="header" class="innerpage">

        	<div class="shadow"></div>

        	<div class="container940">

        		<h1 class="pagetitle">Product</h1>

                <div class="pagedesc">The score of your life...</div>

                <div class="clear"></div><!-- clear float -->

            </div><!-- end container940 -->

        </div><!-- end #header -->

        
        
		<div id="content" class="withsidebar">

        	<div id="main">

            	<div id="maincontent">

                    
                     <div id="ts-display-product-container">

                     <ul id="ts-display-product">

                        <li>

                            <div class="ts-display-product-img">

                               <a href="single-product.html">
	 			<img src="images/dd.jpg" alt="" height="150" width="150"/></a>

                            </div>

                            <div class="ts-display-product-text">

                            <h2 class="colortext">Electronic Drums</h2>

                            <span class="productprice">$ 870.00</span>

                            <a href="single-product.html" class="button">Add to Cart</a>

                            </div>

                        </li>

                        <li>

                            <div class="ts-display-product-img">

                               <a href="single-product.html">
			 <img src="images/aa.jpg" alt="" height="150" width="150"/></a>

                            </div>

                            <div class="ts-display-product-text">

                            <h2 class="colortext">Electric basses</h2>

                            <span class="productprice">$ 150.00</span>

                            <a href="single-product.html" class="button">Add to Cart</a>

                            </div>

                        </li>

                        <li class="nomargin">

                            <div class="ts-display-product-img">

                               <a href="single-product.html"> <img src="images/gg.jpg" alt="" height="150" width="150"/></a>

                            </div>

                            <div class="ts-display-product-text">

                            <h2 class="colortext">Electric guitar</h2>

                            <span class="productprice">$ 270.00</span>

                            <a href="single-product.html" class="button">Add to Cart</a>

                            </div>

                        </li>

                        <li>

                            <div class="ts-display-product-img">

                               <a href="single-product.html"> <img src="images/ss.jpg" alt="" height="150" width="150"/></a>

                            </div>

                            <div class="ts-display-product-text">

                            <h2 class="colortext">Speakers</h2>

                            <span class="productprice">$ 470.00</span>

                            <a href="single-product.html" class="button">Add to Cart</a>

                            </div>

                        </li>

                        <li>

                            <div class="ts-display-product-img">

                               <a href="single-product.html"> <img src="images/mm.jpg" alt="" height="150" width="150"/></a>

                            </div>

                            <div class="ts-display-product-text">

                            <h2 class="colortext">Mixing table</h2>

                            <span class="productprice">$ 500.00</span>

                            <a href="single-product.html" class="button">Add to Cart</a>

                            </div>

                        </li>

                        <li class="nomargin">

                            <div class="ts-display-product-img">

                               <a href="single-product.html"> <img src="images/qq.jpg" alt="" height="150" width="150"/></a>

                            </div>

                            <div class="ts-display-product-text">

                            <h2 class="colortext">CD/MP3 Players</h2>

                            <span class="productprice">$ 550.00</span>

                            <a href="single-product.html" class="button">Add to Cart</a>

                            </div>

                        </li>

                        <li>

                            <div class="ts-display-product-img">

                               <a href="single-product.html"> <img src="images/12.jpg" alt="" height="150" width="150"/></a>

                            </div>

                            <div class="ts-display-product-text">

                            <h2 class="colortext">Digital Synthesizers</h2>

                            <span class="productprice">$ 390.00</span>

                            <a href="single-product.html" class="button">Add to Cart</a>

                            </div>

                        </li>

                        <li>

                            <div class="ts-display-product-img">

                               <a href="single-product.html"> <img src="images/123.jpg" alt="" height="150" width="150"/></a>

                            </div>

                            <div class="ts-display-product-text">

                            <h2 class="colortext">Microphones</h2>

                            <span class="productprice">$ 11.00</span>

                            <a href="single-product.html" class="button">Add to Cart</a>

                            </div>

                        </li>

                        <li class="nomargin">

                            <div class="ts-display-product-img">

                               <a href="single-product.html"> <img src="images/as.jpg" alt="" height="150" width="150"/></a>

                            </div>

                            <div class="ts-display-product-text">

                            <h2 class="colortext">Digital Piano</h2>

                            <span class="productprice">$ 300.00</span>

                            <a href="single-product.html" class="button">Add to Cart</a>

                            </div>

                        </li>

                     </ul>
			</div><!-- end #sidebar -->
    
            
                <div class="clear"></div><!-- clear float -->
 
           		    </div>
			    <!-- end #main -->
	      
		    </div><!-- end #content -->
	


                     
            <div id="sidebar">

                	<ul>

                    	<li class="widget-container">

                <div class="clear"></div><!-- clear float -->

                </div><!-- end #maincontent -->

                <div id="sidebar">

                	<ul>

                    	<li class="widget-container">

                            <h2 class="widget-title">Shooping Cart</h2>

                            <ul id="shoppingcartwidget">

                                <li>

                                    <a href="#"><img src="images/11.jpg" alt="" class="alignleft" height="50" width="50"/></a>

                                    <span class="colortext">Oriental Keyboards</span><br/>

                                    <span>1x  $ 950.00</span>

                                    <span class="clear"></span>

                                </li>

                                <li>

                                    <a href="#"><img src="images/tt.jpg" alt="" class="alignleft" height="50" width="50"/></a>

                                    <span class="colortext">Tympani</span><br/>

                                    <span>1x  $ 550.00</span>

                                    <span class="clear"></span>

                                </li>

                            </ul>

                            <div class="shopping_textwidget">

                                <span class="totalprice">Subtotal:  $1500.00</span>

                                <a href="#" class="button">View Cart</a>

                                <a href="#" class="button">Checkout</a>

                            </div>

                        </li>

                    	<li class="widget-container">

                        	<h2 class="widget-title">Customer Login</h2>

                            <form action="#" method="get" id="login">

                            <fieldset>

                            <label for="username" id="username_label">Username</label>

                            <input type="text" name="username" id="username" /><br/><br/>

                            <label for="password" id="password_label">Password</label>

                            <input type="text" name="password" id="password" /><br/><br/>

                            <div class="lost"><a href="#" class="colortext">Lost Password?</a></div>

                            <input type="submit" name="submit" value="Login"/>

                            </fieldset>

                            </form>

                        </li>

                    	<li class="widget-container">

                        	<h2 class="widget-title">Product Categories</h2>

                            <ul>

                            	<li><a href="#">All Categories</a></li>

                                <li><a href="#">Guitars (20)</a></li>

                                <li><a href="#">Basses (30)</a></li>

                                <li><a href="#">Drums (15)</a></li>

                            </ul>

                        </li>

                    	<li class="widget-container">

                            <h2 class="widget-title">Featured Products</h2>

                            <ul id="recentproductwidget">

                                <li>

                                    <a href="#"><img src="images/rr_1.jpg" alt="" class="alignleft" height="50" width="50"/></a>

                                    <span class="colortext">Upright basses</span><br/>

                                    <span>$ 350.00</span>

                                    <span class="clear"></span>

                                </li>

                                <li>

                                    <a href="#"><img src="images/ww.jpg" alt="" class="alignleft" height="50" width="50"/></a>

                                    <span class="colortext">Saxophones</span><br/>

                                    <span>$ 550.00</span>

                                    <span class="clear"></span>

                                </li>

                                <li>

                                    <a href="#"><img src="images/ee.jpg" alt="" class="alignleft" height="50" width="50"/></a>

                                    <span class="colortext">Euphoniums</span><br/>

                                    <span>$ 120.00</span>

                                    <span class="clear"></span>

                                </li>

                            </ul>

                        </li>

                    </ul>

                </div><!-- end #sidebar -->

                
<div class="clear"></div><!-- clear float -->

                        
        
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

