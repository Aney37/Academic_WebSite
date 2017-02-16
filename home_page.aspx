<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home_page.aspx.cs" Inherits="home_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />


<!-- Website Title -->
<title>
	CSE Notice Board
</title>
<!-- END OF Website Title -->


<!-- DON'T TOUCH THIS SECTION -->
<link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Cookie" rel="stylesheet" type="text/css" /><link rel="stylesheet" type="text/css" href="css/style.css" />
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Cookie" rel="stylesheet" type="text/css" /><link rel="stylesheet" type="text/css" href="extra/style.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="scripts/jquery.carouFredSel-5.5.2.js" type="text/javascript"></script>
<script type="text/javascript" src="scripts/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="scripts/jquery.form.js"></script> 
<script type="text/javascript" src="scripts/scripts.js"></script> 
    <style type="text/css">
        
        .txtbox{
            background: white;
            border: 1px double #DDD;
            border-radius: 5px;
            box-shadow: 0 0 5px #333;
            color: #666;
            float: left;
            padding: 5px 10px;
            width: 165px;
           outline: none;

        }
        .styled-button {
	background:#f78096;
	background:-moz-linear-gradient(top,#f78096 0%,#f56778 100%);
	background:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#f78096),color-stop(100%,#f56778));
	background:-webkit-linear-gradient(top,#f78096 0%,#f56778 100%);
	background:-o-linear-gradient(top,#f78096 0%,#f56778 100%);
	background:-ms-linear-gradient(top,#f78096 0%,#f56778 100%);
	background:linear-gradient(top,#f78096 0%,#f56778 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f78096',endColorstr='#f78096',GradientType=0);
	padding:5px 4px;
	color:#fff;
	font-family:'Helvetica Neue',sans-serif;
	font-size:12px;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border:1px solid #ae4553
}

        
        .auto-style4 {
            width: 98%;
            height: 468px;
            margin: auto 0px auto auto;
        }

        
        .auto-style5 {
            height: 63px;
        }
        .auto-style6 {
            height: 39px;
            width: 148px;
        }

        
        .auto-style7 {
            height: 150px;
        }
        .auto-style8 {
            height: 49px;
            margin-top: 22;
        }

        
        .auto-style9 {
            height: 42px;
        }

        
        .auto-style10 {
            height: 63px;
            width: 148px;
        }
        .auto-style14 {
            height: 42px;
            width: 148px;
        }
        .auto-style15 {
            height: 40px;
            width: 148px;
        }

        
    </style>
  
</head>

<body>
    <form id="form1" runat="server">

    <div/>

        <div class="wrapper">
	<div id="top">
        <div id="logo">
            <img id="logoimage" src="images/logo.png" alt="logo"/>	<!-- Logo image -->
            <h1 id="logotitle">CSE Notice Board</h1>	<!-- Logo text -->
        </div><!--/logo-->
    
        <nav>	<!-- Navigation Start -->
            <ul>
            	<li><a href="#top">HOME</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#work">Work</a></li>
                <li><a href="login_page.aspx">Login</a></li>
            </ul>      
        </nav>	<!-- Navigation End -->
    </div><!--/top-->
    
    <hr/><!-- Horizontal Line -->
    
    
    <header>	<!-- Header Title Start -->
    <marquee behaviour="scroll" scrollamount="15" draggable="true" style="font-size:35px;color:chocolate; width: 622px;">
        &nbsp;
		<i>Welcome to the CSE Notice Board</i></marquee>
    </header>	<!-- Header Title End -->
    <section id="slideshow">	<!-- Slideshow Start -->
        <div class="html_carousel">
			<div id="slider">
            
				<div class="slide">
					<img src="images/slideshow/sliderimage1.jpg" width="3000" height="783" alt="image 1"/><!-- Replace these images with your own but make sure they are 3000px wide and 783px high or the same ration -->
				</div><!--/slide-->
                
				<div class="slide">
					<img src="images/slideshow/sliderimage2.jpg" width="3000" height="783" alt="image 2"/><!-- Replace these images with your own but make sure they are 3000px wide and 783px high or the same ration -->
				</div><!--/slide-->
                
                <div class="slide">
					<img src="images/slideshow/sliderimage3.jpg" width="3000" height="783" alt="image 3"/><!-- Replace these images with your own but make sure they are 3000px wide and 783px high or the same ration -->
				</div><!--/slide-->
                
			</div><!--/slider-->
			<div class="clearfix"></div>
		</div><!--/html_carousel-->
    </section>	<!-- Slideshow End -->
    
    
    <aside id="about" class=" left"> <!-- Text Section Start -->
    	<h3>Honorable Teachers</h3><!-- Replace all text with what you want -->
    	<p>
            Isn&#39;t it annoying that when you want to set up a C.T. or change the schedule or even pass a class lecture to the students but the CR is yet to show up?? We know the value of your precious and productive time and that&#39;s why we came with this project to manage your time in a better way and save you from making some calls to the students.Upload your class lectures,&nbsp; announce/update C.T. routine and syllabus and more!!
        </p>
    	<p>&nbsp;</p>
    </aside>
    <aside class="right">
    	<h3>Students!!</h3>
    	<p>
            This website is mainly targeted for the stuents who find it difficult to memorize day to day <u>class routine</u> &amp;<u> class test routine</u> &amp; c<u>lass test schedules</u>. Get your C.T. schedules online and you don&#39;t need to run for your &#39;geeky&#39; class-mate for <u>class lectures</u> anymore. This website aims to make your life easy, comfortable and convenient of course!!
        </p>
    	<p>&nbsp;</p>
    </aside>
    <div class="clearfix"></div> <!-- Text Section End -->
    
    
    <section id="work"> <!-- Work Links Section Start -->
    	<div class="item">
        	<img src="images/work/thumbs/item.png" alt="image 1" class="auto-style7"/><!-- Image must be 400px by 300px -->
            <h3>Exam Schedules</h3><!--Title-->
            </div>
        <!--/item-->
        
        <div class="item">
        	<img src="images/work/thumbs/item2.png" alt="image 2" class="auto-style7"/><!-- Image must be 400px by 300px -->
        	<h3>Class Schedules</h3><!--Title-->
            <!--Category-->
        </div><!--/item-->
        
        <div class="item">
        	<img src="images/work/thumbs/item3.png" alt="image 3" class="auto-style7"/><!-- Image must be 400px by 300px -->
        	<h3>Marks</h3><!--Title-->
            <!--Category-->
        </div><!--/item-->
        
        <div class="item">
        	<img src="images/work/thumbs/item4.png" alt="image 4" class="auto-style7"/><!-- Image must be 400px by 300px -->
        	<h3 class="auto-style8">Class Lectures</h3>
            <!--Title-->
            <!--Category-->
        </div><!--/item-->
        
        <div class="item">
        	<img src="images/work/thumbs/item5.png" alt="image 5" class="auto-style7"/><!-- Image must be 400px by 300px -->
            <h3 class="auto-style8">Exam Syllabus</h3>
        	<!--Title-->
            <!--Category-->
        </div><!--/item-->
        
        	<!--/item-->
        
        <!--/item-->
        
        <!--/item-->
        
        <!--/item-->
        
         <!--/item-->
        
        <div class="clearfix"></div>
    </section> <!-- Work Links Section End -->
    
    
    
</div>

<!-- TO MAKE THE PHP FORM WORK, ALL YOU NEED TO DO IS OPEN UP THE FILE CALLED 'submitemail.php' AND CHANGE WHERE IT SAYS 'your email goes here' -->

<!-- DON'T TOUCH THIS SECTION -->

<footer id="footer">
	
<!-- DON'T TOUCH THIS SECTION END -->        
        
    	<section class="right social"> <!-- Social Icons Start -->
		<a href="http://plus.google.co.uk"><img class="icon" src="images/icons/google.png" width="32" height="32" alt="google"/></a><!-- Replace with any 32px x 32px icons -->
        <a href="http://youtube.com"><img class="icon" src="images/icons/youtube.png" width="32" height="32" alt="youtube"/></a><!-- Replace with any 32px x 32px icons -->
        <a href="http://facebook.com"><img class="icon" src="images/icons/facebook.png" width="32" height="32" alt="facebook"/></a><!-- Replace with any 32px x 32px icons -->
        <a href="http://twitter.com"><img class="icon" src="images/icons/twitter.png" width="32" height="32" alt="twitter"/></a><!-- Replace with any 32px x 32px icons -->
        </section> <!-- Social Icons End -->
        
       
    
    <div class="clearfix"></div>
</footer>

<!-- SLIDESHOW SCRIPT START -->
<script type="text/javascript">
    $("#slider").carouFredSel({
        responsive: true,
        scroll: {
            fx: "crossfade",
            easing: "swing",
            duration: 1000,

        },
        items: {
            visible: 1,
            height: "27%"
        }
    });
</script>
<!-- SLIDESHOW SCRIPT END -->
        
<div class="aspNetHidden">

	
</div>
       

<!-- Visual Studio Browser Link -->
<script type="application/json" id="__browserLink_initializationData">
    {"appName":"Firefox","requestId":"f13120a23ab2437db5368104e70deead"}
</script>
<script type="text/javascript" src="http://localhost:6339/05bc2fb5a4404dbfa0088a2e198fb65f/browserLink" async="async"></script>
<!-- End Browser Link -->

    </form>

</body>
   
</html>


