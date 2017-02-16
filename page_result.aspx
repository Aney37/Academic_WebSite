<%@ Page Language="C#" AutoEventWireup="true" CodeFile="page_result.aspx.cs" Inherits="page_result" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager runat="server"></asp:ToolkitScriptManager>
    <h3>All Marks</h3>
        <!-- Replace all text with what you want -->
    	<p>
            
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="3" CssClass="table table-striped table-bordered" EmptyDataText="There are no data records to display." BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" DataSourceID="SqlDataSource1" DataKeyNames="Id" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Full_Marks" HeaderText="Full_Marks" SortExpression="Full_Marks" />
                    <asp:BoundField DataField="Teacher_Name" HeaderText="Teacher_Name" SortExpression="Teacher_Name" />
                    <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" SortExpression="Course_Name" />
                    <asp:BoundField DataField="Course_No" HeaderText="Course_No" SortExpression="Course_No" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                    <asp:TemplateField ItemStyle-HorizontalAlign = "Center">
            <ItemTemplate>
                <asp:LinkButton ID="LinkShow" runat="server" Text="Show"
                    CommandArgument='<%# Eval("Id") %>' PostBackUrl='<%#"~/ShowResults.aspx?id="+Eval("Id")%>'></asp:LinkButton>
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
                
            </p>
        <p>
            &nbsp;</p>

         
            <table class="auto-style28">
                 <tr>
                            <td class="auto-style29" style="font-size: 18px">Date:</td>
                            <td class="auto-style30">
                                <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="200px" class =" txtbox"></asp:TextBox>
 
                               
                                <asp:CalendarExtender ID="TextBox5_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox5">
                                </asp:CalendarExtender>
 
                               
                            </td>
                    </tr>
                <tr>
                    <td class="auto-style29" style="font-size: 18px">Batch:</td>
                    <td class="auto-style30">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Select Year</asp:ListItem>
                            <asp:ListItem Value="1st">1st Year</asp:ListItem>
                            <asp:ListItem Value="2nd">2nd Year</asp:ListItem>
                            <asp:ListItem Value="3rd">3rd Year</asp:ListItem>
                            <asp:ListItem Value="4th">4th Year</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29" style="font-size: 18px">Course No.:</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="200px" class =" txtbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29" style="font-size: 18px">Course Name:</td>
                    <td class="auto-style30">
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
                    <td class="auto-style29" style="font-size: 18px">Full_Mark:</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="200px" class =" txtbox"></asp:TextBox>
                    </td>
                </tr>
                 
                <tr>
                    <td class="auto-style29" style="font-size: 18px">CT_ID:</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="200px" class =" txtbox"></asp:TextBox>
                    </td>
                </tr>
            </table>
           
    	
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testDTBConnectionString %>" SelectCommand="SELECT [Full_Marks], [Teacher_Name], [Course_Name], [Course_No], [Date], [Batch], [Id] FROM [ResultTable]">
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate_Marksheet" Width="186px" />
        <br />
    </form>
</body>
</html>
