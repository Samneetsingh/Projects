<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_employee.aspx.cs" Inherits="InsuranceManagementSystemProject.Shruti.add_employee" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            position: absolute;
            width: 59px;
            left: 129px;
            top: 425px;
        }
        .style2
        {
            width: 342px;
            height: 314px;
            position: absolute;
            left: 343px;
            top: 68px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<table class="style2">
<hr ><h1 style="color: #0000FF; background-color: #CCFF99">NEW EMPLOYEE</h1>
<tr>

<td>
    <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label></td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" Enabled="FALSE"  ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        Display="Dynamic" ErrorMessage="ID cannot be Empty" 
        ToolTip="ID cannot be Empty" ControlToValidate="TextBox1">!</asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td><asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></td>
<td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        Display="Dynamic" ErrorMessage="Name field cannot be left empty" 
        ToolTip="Name field cannot be left empty" ControlToValidate="TextBox2">!</asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td><asp:Label ID="Label3" runat="server" Text="Password"></asp:Label></td>
<td><asp:TextBox ID="TextBox3" runat="server" TextMode="Password" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="Password cannot be left blank" 
        ToolTip="Password cannot be left blank" ControlToValidate="TextBox3" 
        EnableTheming="False">!</asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td><asp:Label ID="Label4" runat="server" Text="Address"></asp:Label></td>
<td><asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        Display="Dynamic" ErrorMessage="Address cannot be left blank" 
        ToolTip="Address cannot be left blank" ControlToValidate="TextBox4">!</asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td><asp:Label ID="Label5" runat="server" Text="Contact Number"></asp:Label></td>
<td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ErrorMessage="This field cannot be empty" 
        ToolTip="This field cannot be empty" ControlToValidate="TextBox5">!</asp:RequiredFieldValidator>
    </td>
    <tr>
    <td>
    <asp:Label ID="Label6" runat="server" Text="E-Mail Address"></asp:Label>
    </td>
    <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Invalid" 
            ToolTip="Invalid">!</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="Invalid Format" 
            SetFocusOnError="True" ToolTip="Invalid Format" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <td>
<asp:Button ID="Button1" runat="server" Text="Done" CssClass="style1" 
            onclick="Button1_Click" /></td>
</tr>
</table>
    </div>
    </form>
</body>
</html>
