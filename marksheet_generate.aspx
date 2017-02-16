<%@ Page Language="C#" AutoEventWireup="true" CodeFile="marksheet_generate.aspx.cs" Inherits="marksheet_generate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>Test Details</h3>
        <!-- Replace all text with what you want -->
    	<p>
            
            <table class="table table-striped table-bordered">
            <tr>
                <td class="auto-style34">
                    <asp:Label ID="Label2" runat="server" Text="Id :"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label_id" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    <asp:Label ID="Label4" runat="server" Text="Batch"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label_batch" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label_date" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    <asp:Label ID="Label6" runat="server" Text="Course No"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label_course_no" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    <asp:Label ID="Label7" runat="server" Text="Course Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label_course_name" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    <asp:Label ID="Label8" runat="server" Text="Teacher Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label_teacher_name" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    <asp:Label ID="Label9" runat="server" Text="Full Mark"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label_full" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        </p>
    </div>
        
        
     
        
        
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Roll" HeaderText="Roll" SortExpression="Roll" />
                <asp:BoundField DataField="Mark" HeaderText="Mark" SortExpression="Mark" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="CT_ID" HeaderText="CT_ID" SortExpression="CT_ID" />
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
        
        
        <br />
        <br />
        <br />
        
        
        <br />
        
        
     <table class="auto-style28">
                 <tr>
                            <td class="auto-style29" style="font-size: 18px">Roll:</td>
                            <td class="auto-style30">
                                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="200px" class =" txtbox"></asp:TextBox>
 
 
                            </td>
                    </tr>
               
                <tr>
                    <td class="auto-style29" style="font-size: 18px">Name:</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="200px" class =" txtbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29" style="font-size: 18px">Mark:</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="200px" class =" txtbox"></asp:TextBox>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style29" style="font-size: 18px">CT_ID:</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="200px" class =" txtbox"></asp:TextBox>
                    </td>
                </tr>
            </table>
           
        
        
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" Width="151px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testDTBConnectionString %>" DeleteCommand="DELETE FROM [MarkTable] WHERE [Id] = @Id" InsertCommand="INSERT INTO [MarkTable] ([Roll], [Mark], [Name], [CT_ID]) VALUES (@Roll, @Mark, @Name, @CT_ID)" SelectCommand="SELECT * FROM [MarkTable] WHERE ([CT_ID] = @CT_ID)" UpdateCommand="UPDATE [MarkTable] SET [Roll] = @Roll, [Mark] = @Mark, [Name] = @Name, [CT_ID] = @CT_ID WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Roll" Type="String" />
                <asp:Parameter Name="Mark" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="CT_ID" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="CT_ID" SessionField="ct" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Roll" Type="String" />
                <asp:Parameter Name="Mark" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="CT_ID" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
           
        
        
    </form>
</body>
</html>
