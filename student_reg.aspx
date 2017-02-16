<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_reg.aspx.cs" Inherits="student_reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
   <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0"/>


<!-- Website Title -->
<title>Registration</title>
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

        
        .auto-style13 {
            height: 53px;
            width: 737px;
            margin-left: 48px;
        }

        
        .auto-style14 {
            height: 83px;
            width: 732px;
        }
        .auto-style17 {
            width: 197%;
        }
        .auto-style18 {
            width: 122%;
        }

        
        .auto-style20 {
            background: #f78096;
            background: -moz-linear-gradient(top,#f78096 0%,#f56778 100%);
            background: -webkit-gradient(linear,left top,left bottom,color-stop(0%,#f78096),color-stop(100%,#f56778));
            background: -webkit-linear-gradient(top,#f78096 0%,#f56778 100%);
            background: -o-linear-gradient(top,#f78096 0%,#f56778 100%);
            background: -ms-linear-gradient(top,#f78096 0%,#f56778 100%);
            background: #f78096;
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#f78096',endColorstr='#f78096',GradientType=0);
            padding: 5px 4px;
            color: #fff;
            font-family: 'Helvetica Neue',sans-serif;
            font-size: 12px;
            border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border: 1px solid #ae4553;
            height: 30px;
            width: 66px;
        }

        
        .auto-style21 {
            width: 150%;
        }

        
        .auto-style37 {
            height: 76px;
            width: 481px;
        }
        .auto-style45 {
            width: 352px;
        }
        .auto-style49 {
            height: 76px;
            width: 352px;
        }

        
        .auto-style50 {
            width: 169px;
        }
        .auto-style51 {
            width: 169px;
            height: 76px;
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
            <img id="logoimage" src="images/logo.png" alt="logo"/>	<!-- Logo image -->
            <h1 id="logotitle">CSE Notice Board</h1>	<!-- Logo text -->
        </div><!--/logo-->
    
       <nav class="auto-style13">	<!-- Navigation Start -->
            <ul class="auto-style14">
                <li><a href="home_page.aspx">HOME</a></li>
                <li><a href="Teacher_reg.aspx" class="auto-style18">TEACHER REGISTRATION</a></li>
                <li ><a href="Student_reg.aspx" class="auto-style17">STUDENT REGISTRATION</a></li>
                
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
    	<h1>&nbsp;Register Here..</h1>
    </header>	<!-- Header Title End -->
    <section id="slideshow">	<!-- Slideshow Start -->
        <!--/html_carousel-->
    </section>
            <!-- Slideshow End -->
    
    
    <div class="clearfix">
    
    
    <aside id="about" class=" left"> <!-- Text Section Start -->
    	<h3>Student/C.R. Registration</h3><!-- Replace all text with what you want -->
        <asp:panel defaultbutton="Button1" runat="server">           
           
                    <table border="1" class="auto-style21">
                       
                        <tr>
                            <td   class="auto-style49" style="font-size: 18px">Username:</td>
                            <td  class="auto-style37">
                                <asp:TextBox ID="TextBox_User" runat="server"  class =" txtbox" Height="25px" Width="270px"></asp:TextBox>
                                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                            </td>
                           <td class="auto-style50" style="font-size: 18px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_User" ErrorMessage="Username is required." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td   class="auto-style49" style="font-size: 18px">Password:</td>
                            <td  class="auto-style37">
                                <asp:TextBox ID="TextBox_Pass" runat="server" class =" txtbox" Height="25px"  Width="270px" TextMode="Password"></asp:TextBox>
                            </td>
                          
                            <td class="auto-style50" style="font-size: 18px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_Pass" ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td   class="auto-style49" style="font-size: 18px">Confirm Password:</td>
                            <td  class="auto-style37">
                                <asp:TextBox ID="TextBox_Pass1" runat="server" class =" txtbox" Height="25px" Width="270px" TextMode="Password"></asp:TextBox>
                            </td>
                           
                           <td class="auto-style51" style="font-size: 18px">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_Pass1" ErrorMessage="Confirm Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                 <br />
                                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_Pass" ControlToValidate="TextBox_Pass1" ErrorMessage="Both Password must be same." ForeColor="Red"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td   class="auto-style49"style="font-size: 18px">Categoty:</td>
                            <td  class="auto-style37">
                                <asp:DropDownList ID="DropDownList1" runat="server" class =" txtbox" Height="30px" Width="290px">
                                    <asp:ListItem >Select Category</asp:ListItem>
                                    <asp:ListItem>Teacher</asp:ListItem>
                                    <asp:ListItem>Class Representative</asp:ListItem>
                                    <asp:ListItem>Student</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                           
                             <td class="auto-style50" style="font-size: 18px">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Category." ForeColor="Red" InitialValue="Select Category"></asp:RequiredFieldValidator>
                            </td>
                                
                        </tr>
                        <tr>
                            <td class="auto-style49" style="font-size: 18px">Year:</td>
                            <td  class="auto-style37">
                                <asp:DropDownList ID="DropDownList2" runat="server" class =" txtbox" Height="30px" Width="290px">
                                    <asp:ListItem >Select Year</asp:ListItem>
                                    <asp:ListItem Value="1st">1st</asp:ListItem>
                                    <asp:ListItem Value="2nd">2nd</asp:ListItem>
                                    <asp:ListItem Value="3rd">3rd</asp:ListItem>
                                    <asp:ListItem Value="4th">4th</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                           <td class="auto-style50" style="font-size: 18px">
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select Year." ForeColor="Red" InitialValue="Select Year"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style49" style="font-size: 18px">Roll:</td>
                            <td class="auto-style37">
                                <asp:TextBox ID="TextBox7" runat="server" class=" txtbox" Height="25px" Width="270px"></asp:TextBox>
                            </td>
                           <td class="auto-style50" style="font-size: 18px">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Roll is required." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                         <tr>
                <td class="auto-style45"></td>
                <td class="auto-style27">
                    <asp:Button ID="Button1" runat="server" Height="31px" class="styled-button" style="margin-left: 100px" Text="Submit" Width="139px" OnClick="Button1_Click"  />
                             
                             </td>
                <td class="auto-style50">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testDTBConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
                             </td>
            </tr>
                    </table>

                    &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
                
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
