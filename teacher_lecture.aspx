<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_lecture.aspx.cs" Inherits="teacher_lecture" %>

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

        
        .auto-style7 {
            height: 150px;
        }
        .auto-style8 {
            height: 49px;
            margin-top: 22;
        }

        
        .table-bordered {}
        .auto-style28 {
            height: 25px;
        }
        .auto-style29 {
            height: 26px;
        }
        .auto-style30 {
            height: 27px;
        }
        .auto-style31 {
            height: 28px;
        }
        .auto-style32 {
            height: 44px;
        }
        .auto-style33 {
            height: 29px;
        }
        .auto-style34 {
            height: 35px;
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
                                                    	<li><a href="teacher_routine.aspx">Class Routine</a></li>
                                                        <li><a href="teacher_lecture.aspx">Class Lecture</a></li> 
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
            &nbsp;
             <h3>Recently Uploaded Slides </h3>
        <!-- Replace all text with what you want -->
    	<p>
            
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="3" CssClass="table table-striped table-bordered" EmptyDataText="There are no data records to display."  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" DataSourceID="SqlDataSource1" DataKeyNames="Id" Height="236px" Width="906px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Course_No" HeaderText="Course_No" SortExpression="Course_No" />
                    <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" SortExpression="Course_Name" />
                    <asp:BoundField DataField="Teacher_Name" HeaderText="Teacher_Name" SortExpression="Teacher_Name" />
                    <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="ContentType" HeaderText="ContentType" SortExpression="ContentType" />
                    <asp:TemplateField ItemStyle-HorizontalAlign = "Center">
            <ItemTemplate>
                <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"
                    CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
            </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
        </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
                
            &nbsp;</p>
        <div runat="server" id ="all_slides" >
        <br />

       
            <h3>Upload Slides</h3>
            <p>
            &nbsp;</p>
            <table class="auto-style28">
                <tr>
                    <td class="auto-style32" style="font-size: 18px">Batch:</td>
                    <td class="auto-style32">
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="23px">
                            <asp:ListItem>Select Year</asp:ListItem>
                            <asp:ListItem Value="1st">1st Year</asp:ListItem>
                            <asp:ListItem Value="2nd">2nd Year</asp:ListItem>
                            <asp:ListItem Value="3rd">3rd Year</asp:ListItem>
                            <asp:ListItem Value="4th">4th Year</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34" style="font-size: 18px">Course No.:</td>
                    <td class="auto-style34">
                        <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="200px" class =" txtbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34" style="font-size: 18px">Course Name:</td>
                    <td class="auto-style34">
                        <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="200px" class =" txtbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29" style="font-size: 18px">Teacher Name:</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="200px" class =" txtbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29" style="font-size: 18px">Title:</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="200px" class =" txtbox"></asp:TextBox>
                    </td>
                </tr>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </table>
            <p class="auto-style31">
                <asp:Button ID="Button2" runat="server"  Text="Upload"  Width="160px" class="styled-button" OnClick="Button2_Click"/>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </p>
            
            </div>
  
            
    <!--aside class="right">
    	
    </aside-->
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testDTBConnectionString %>" SelectCommand="SELECT [Id], [Course_No], [Course_Name], [Teacher_Name], [Batch], [Title], [Data], [ContentType] FROM [lectureTable] WHERE (([Batch] = @Batch) AND ([Batch] = @Batch2))" DeleteCommand="DELETE FROM [lectureTable] WHERE [Id] = @Id" InsertCommand="INSERT INTO [lectureTable] ([Course_No], [Course_Name], [Teacher_Name], [Batch], [Title], [Data], [ContentType]) VALUES (@Course_No, @Course_Name, @Teacher_Name, @Batch, @Title, @Data, @ContentType)" UpdateCommand="UPDATE [lectureTable] SET [Course_No] = @Course_No, [Course_Name] = @Course_Name, [Teacher_Name] = @Teacher_Name, [Batch] = @Batch, [Title] = @Title, [Data] = @Data, [ContentType] = @ContentType WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Course_No" Type="String" />
                <asp:Parameter Name="Course_Name" Type="String" />
                <asp:Parameter Name="Teacher_Name" Type="String" />
                <asp:Parameter Name="Batch" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Data" Type="Object" />
                <asp:Parameter Name="ContentType" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Teacher_Name" SessionField="user" Type="String" />
                <asp:SessionParameter Name="Teacher_Name" SessionField="user" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Course_No" Type="String" />
                <asp:Parameter Name="Course_Name" Type="String" />
                <asp:Parameter Name="Teacher_Name" Type="String" />
                <asp:Parameter Name="Batch" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Data" Type="Object" />
                <asp:Parameter Name="ContentType" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    	</p>
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




