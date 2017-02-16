<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table>
                       
                        <tr>
                            <td   class="auto-style49" style="font-size: 18px">UserName:</td>
                            <td  class="auto-style37">
                                <asp:TextBox ID="TextBox_User" runat="server"  class =" txtbox" Height="25px" Width="270px"></asp:TextBox>
                                
                            </td>
                          
                        </tr>
                        <tr>
                            <td   class="auto-style49" style="font-size: 18px">Password:</td>
                            <td  class="auto-style37">
                                <asp:TextBox ID="TextBox_Pass" runat="server" class =" txtbox" Height="25px"  Width="270px" TextMode="Password"></asp:TextBox>
                            </td>
                          
                            
                        </tr>
                        <tr>
                            <td   class="auto-style49" style="font-size: 18px">Confirm Password:</td>
                            <td  class="auto-style37">
                                <asp:TextBox ID="TextBox_Pass1" runat="server" class =" txtbox" Height="25px" Width="270px" TextMode="Password"></asp:TextBox>
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
                         
                        </tr>
                        <tr>
                            <td class="auto-style49" style="font-size: 18px">Roll:</td>
                            <td class="auto-style37">
                                <asp:TextBox ID="TextBox7" runat="server" class=" txtbox" Height="25px" Width="270px"></asp:TextBox>
                            </td>
                          
                        </tr>
                         <tr>
                <td class="auto-style45">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testDTBConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
                             </td>
                <td class="auto-style27">
                    <asp:Button ID="Button1" runat="server" Height="31px" class="styled-button" style="margin-left: 100px" Text="Submit" Width="139px" OnClick="Button1_Click" />
                             
                             </td>
                <td class="auto-style50">
                    &nbsp;</td>
            </tr>
                    </table>

    </div>
    </form>
</body>
</html>
