<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="shruti_project.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="top: 25px; left: 45px; position: absolute; width: 944px; height: 157px">

<h1 style="color: #0000FF; background-color: #66CCFF">LOGIN</h1>
<table style="top: 55px; left: 16px; position: absolute; height: 130px; width: 309px">
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Field can't be left empty" 
        ToolTip="Field can't be left empty">*</asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
<td><asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Field can't be left empty" 
        ToolTip="Field can't be left empty">*</asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td><asp:Label ID="Label3" runat="server" Text="Login Type"></asp:Label></td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Select.." 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Administrator</asp:ListItem>
        <asp:ListItem Text="Select One..">Employee</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="DropDownList1" ErrorMessage="Field can't be left empty" 
        ToolTip="Field can't be left empty">*</asp:RequiredFieldValidator>
</td>
</tr>

</table>
        <asp:Button ID="Button1" runat="server" Text="Sign In" 
            style="top: 202px; left: 94px; position: absolute; width: 60px; height: 26px" 
                onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
