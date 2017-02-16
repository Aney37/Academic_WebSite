<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_page.aspx.cs" Inherits="login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
   <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0"/>


<!-- Website Title -->
<title>Login</title>
<!-- END OF Website Title -->


<!-- DON'T TOUCH THIS SECTION -->
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700|Cookie' rel='stylesheet' type='text/css'/>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
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
            width: 200px;
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

        
        .auto-style17 {
            width: 129%;
        }
        .auto-style18 {
            width: 111%;
        }

        
        .auto-style19 {
            height: 76px;
        
        }

        
        .auto-style21 {
            width: 150%;
        }

        
        .auto-style22 {
            height: 24px;
        }
        .auto-style23 {
            height: 64px;
        }

        
    </style>

   

</head>

<body>
    <form id="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>

    <div/>

        <div class="wrapper">
	<div id="top">
        <div id="logo">
            <img id="logoimage" src="images/logo.png" alt="logo">	<!-- Logo image -->
            <h1 id="logotitle">CSE Notice Board</h1>	<!-- Logo text -->
        </div><!--/logo-->
    
        <nav class="auto-style16">	<!-- Navigation Start -->
            <ul class="auto-style16">
                <li><a href="home_page.aspx">HOME</a></li>
                <li><a href="login_page.aspx" class="auto-style18">TEACHER</a></li>
                <li ><a href="Student_login.aspx" class="auto-style17">STUDENT</a></li>
                
            </ul>      
        </nav>	<!-- Navigation End -->
    </div><!--/top-->
    
    
    <hr/><!-- Horizontal Line -->
     
    <header>	<!-- Header Title Start -->
         <marquee behaviour="scroll" scrollamount="15" draggable="true" style="font-size:35px;color:chocolate">
        &nbsp;
		<i>Welcome to the CSE Notice Board</i></marquee>
    	
    </header>	<!-- Header Title End -->
   
    
    <header>	<!-- Header Title Start -->
    	<h1>&nbsp;Login Here..</h1>
    </header>	<!-- Header Title End -->
    <section id="slideshow">	<!-- Slideshow Start -->
        <!--/html_carousel-->
    </section>
            <!-- Slideshow End -->
    
    
    <div class="clearfix">
    
    
    <aside id="about" class=" left"> <!-- Text Section Start -->
    	<h1 id="logotitle">Teacher Login</h1><!-- Replace all text with what you want -->
        <br/>
        <br/>
       <br/>
        <asp:panel defaultbutton="Button1" runat="server">           
           
                    <table border="1" class="auto-style21">
                        <tr>
                            <td   class="auto-style19" style="font-size: 18px">UserName:</td>
                            <td  class="auto-style19">
                                <asp:TextBox ID="TextBox_User" runat="server"  class =" txtbox" Height="25px" Width="270px"></asp:TextBox>
                                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                            </td>
                             
                            
                        </tr>
                        <tr>
                            <td   class="auto-style19" style="font-size: 18px">Password:</td>
                            <td  class="auto-style19">
                                <asp:TextBox ID="TextBox_Pass" runat="server" class =" txtbox" Height="25px"  Width="270px" TextMode="Password"></asp:TextBox>
                            </td>
                            
                           
                        </tr>
                        
                    
                         <tr>
                        <td class="auto-style22">
                            <asp:Button ID="Button1" runat="server" BackColor="Fuchsia" class="styled-button" ForeColor="#6666FF" Height="32px" Text="Login" Width="100px" OnClick="Button1_Click" />
                        </td>
                         <td class="auto-style22">

                             &nbsp;</td>
                    </tr>

                    <tr>
                        <td class="auto-style23">
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Keep me Login"  ForeColor="#CC0099" OnCheckedChanged="CheckBox1_CheckedChanged"   />
                            </td>

                    </tr>

                    <tr>
                        <td class="auto-style22">
                            <p style="color:chocolate; width: 131px;"><h1>New User ???</h1>
                                <p>
                                </p>
                                <p>
                                </p>
                                <p>
                                </p>
                                <p>
                                </p>
                            </p>
                            
                        </td>
                        <td class="auto-style22">
                            <p style="color:chocolate"><a href="teacher_reg.aspx" target="_blank"><h1>Registration here.</h1></a>
                                
                                <p>
                                </p>
                                <p>
                                </p>
                                
                                <p>
                                </p>
                                
                                </p>
                           
                        </td>
                    </tr>
                    </table>


                
                <asp:Label ID="Label1" runat="server"></asp:Label>
                
            </asp:panel>
        
    	<p>&nbsp;</p>
    </aside>
            </div> <!-- Text Section End -->
            

            
    
    
    <section id="work"> <!-- Work Links Section Start -->
        
        
        <div class="clearfix"></div>
    </section> <!-- Work Links Section End -->
    
    
    <section id="bottom"> <!-- Last Words Section Start -->
    	<h3>&nbsp;</h3>
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