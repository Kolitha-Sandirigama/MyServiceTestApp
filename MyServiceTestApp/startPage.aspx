<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startPage.aspx.cs" Inherits="MyServiceTestApp.startPage" Async ="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
       </div>
        <div class="divGroup">
    <table class="cs1">
        <tr>
            <th colspan="3" style="font-size:small">
            <strong>Student List</strong></th>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="gvStudent" runat="server" 
                    AutoGenerateColumns="False" 
                    AllowPaging="false">
                    <Columns>
                       <asp:BoundField HeaderText="Student ID" DataField="StudentId">
                        <HeaderStyle Font-Size="8pt" />
                        <ItemStyle Width="100" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RollNo" HeaderText="Roll No">
                        <HeaderStyle Font-Size="8pt" />
                        <ItemStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FirstName" HeaderText="First Name">
                        <HeaderStyle Font-Size="8pt" />
                        <ItemStyle Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="LastName" HeaderText="Last Name">
                        <HeaderStyle Font-Size="8pt" />
                        <ItemStyle Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="College" HeaderText="College">
                        <HeaderStyle Font-Size="8pt" />
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Branch" HeaderText="Branch">
                        <HeaderStyle Font-Size="8pt" />
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        </table>
    </div>
    </form>
</body>
</html>
