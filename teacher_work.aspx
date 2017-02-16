<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_work.aspx.cs" Inherits="teacher_work" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
   <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0"/>


<!-- Website Title -->
<title>CSE Notice Board</title>
<!-- END OF Website Title -->



<!-- DON'T TOUCH THIS SECTION -->
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700|Cookie' rel='stylesheet' type='text/css'/>
<link rel="stylesheet" type="text/css" href="css/type.css"/>
    <link rel="stylesheet" type="text/css" href="css/view.css"/>
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
            width: 90%;
            height: 138px;
            margin: auto;
        }

        
        .auto-style7 {
            height: 150px;
        }
        .auto-style8 {
            height: 49px;
            margin-top: 22;
        }

        
        .auto-style10 {
            height: 130px;
        }

        
        .auto-style13 {
            height: 53px;
            width: 797px;
            margin-left: 48;
        }

        
        .auto-style18 {
            height: 51px;
        }

        
        .auto-style19 {
            width: 20%;
        }

        
        .auto-style21 {
            width: 80%;
        }
        .auto-style22 {
            width: 18%;
        }
        .auto-style23 {
            width: 86%;
        }
        .auto-style24 {
            width: 10%;
        }

        
        .auto-style27 {
            width: 22%;
        }

        
    </style>
</head>

<body>
    <form id="form1" runat="server">
    

        <div class="wrapper">
	<div id="top">
        <div id="logo">
            <img id="logoimage" src="images/logo.png" alt="logo"/>	<!-- Logo image -->
            <h1 id="logotitle">CSE Notice Board</h1>	<!-- Logo text -->
        </div>
        <!--/logo-->
    
        <nav>	<!-- Navigation Start -->
            <ul>
            	<li><a href="#top">HOME</a></li>
                <li><a href="#about">About</a></li>
                 <li>
                                                	<a href="#work">Work</a>
													<ul>
                                                    	<li><a href="CR_Routine.aspx">Class Routine</a></li>
                                                        <li><a href="lecture.aspx">Class Lecture</a></li> 
                                                         <li><a href="lecture.aspx">Exam Schedules</a></li>
                                                         <li><a href="lecture.aspx">Exam Syllabus</a></li>                            
                                                    </ul>
                                                </li>
                 <li>
                    <asp:Button style="margin-top:15px" ID="Button1" runat="server" class="styled-button" Text="LOGOUT" OnClick="Button1_Click"   /></li>
                
            </ul>      
        </nav>	<!-- Navigation End -->
    </div><!--/top-->
    
    
    <hr/><!-- Horizontal Line -->
    
    
   <header>	<!-- Header Title Start -->
         <marquee behaviour="scroll" scrollamount="15" draggable="true" style="font-size:35px;color:chocolate">
        &nbsp;
		<i>Welcome to the CSE Notice Board</i></marquee>
    	
    </header>	<!-- Header Title End -->
   
            <!-- Slideshow End -->
    
    
    <aside id="about" class=" left"> <!-- Text Section Start -->
    	<!-- Replace all text with what you want -->
    	<p>
            &nbsp;</p>
    	<p>&nbsp;</p>
    </aside>
    <div class="clearfix"></div> <!-- Text Section End -->
    
    
    <section id="work"> <!-- Work Links Section Start -->
    	<div class="item">
        	<a href="ClassTest.aspx"><img src="images/work/thumbs/item.png" alt="image 1" class="auto-style7"/></a><!-- Image must be 400px by 300px -->
            <h3>Exam Schedules</h3><!--Title-->
            </div>
        <!--/item-->
        
        <div class="item">
        	<a href="ClassRoutine.aspx"><img src="images/work/thumbs/item2.png" alt="image 2" class="auto-style7"/></a><!-- Image must be 400px by 300px -->
        	<h3>Class Schedules</h3><!--Title-->
            <!--Category-->
        </div><!--/item-->
        
        <div class="item">
        	<a href="Result.aspx"><a href="ClassRoutine.aspx"><img src="images/work/thumbs/item3.png" alt="image 3" class="auto-style7"/></a><!-- Image must be 400px by 300px -->
        	<h3>Marks</h3><!--Title-->
            <!--Category-->
        </div><!--/item-->
        
        <div class="item">
        	<a href="LectureUpload.aspx"><img src="images/work/thumbs/item4.png" alt="image 4" class="auto-style7"/></a><!-- Image must be 400px by 300px -->
        	<h3 class="auto-style8">Class Lectures</h3>
            <!--Title-->
            <!--Category-->
        </div><!--/item-->
        
        <div class="item">
        	<a href="ClassTest.aspx"><img src="images/work/thumbs/item5.png" alt="image 5" class="auto-style7"/></a><!-- Image must be 400px by 300px -->
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
    
    
    <section id="bottom"> <!-- Last Words Section Start -->
    </section><!-- Last Words Section End-->
</div>

<!-- TO MAKE THE PHP FORM WORK, ALL YOU NEED TO DO IS OPEN UP THE FILE CALLED 'submitemail.php' AND CHANGE WHERE IT SAYS 'your email goes here' -->

<!-- DON'T TOUCH THIS SECTION -->



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
        </form>
</body>
   
</html>



