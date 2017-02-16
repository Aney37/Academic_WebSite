<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowResults.aspx.cs" Inherits="ShowResults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .table-bordered {
            width: 218px;
        }
    </style>
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
    	<p>
            &nbsp;</p>
        <div runat="server" id ="all_slides" >
        <br />

        <h3>Marks</h3>
    	<p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" GridLines="Vertical" CellPadding="4" CssClass="table table-striped table-bordered" EmptyDataText="There are no data records to display." DataKeyNames="Id">
                <Columns>
                    <asp:BoundField DataField="Roll" HeaderText="Roll" SortExpression="Roll" />
                    <asp:BoundField DataField="Mark" HeaderText="Mark" SortExpression="Mark" />
                    
                </Columns>
            </asp:GridView>
            </p>
            
            </div>

  
            
    <!--aside class="right">
    	
    </aside-->
   
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
             <!-- Text Section End -->
    
    </div>
    </form>
</body>
</html>
