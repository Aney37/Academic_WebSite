<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lecture.aspx.cs" Inherits="lecture" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>Recently Uploaded Slides </h3>
        <!-- Replace all text with what you want -->
    	<p>
            
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="3" CssClass="table table-striped table-bordered" EmptyDataText="There are no data records to display."  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" DataSourceID="SqlDataSource1" DataKeyNames="Id">
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
    <div class="clearfix">
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
                <asp:SessionParameter Name="Batch" SessionField="user" Type="String" />
                <asp:SessionParameter Name="Batch2" SessionField="user" Type="String" />
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
            </div> <!-- Text Section End -->
    
    </div>
    </form>
</body>
</html>
