<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change_Pass.aspx.cs" Inherits="PLogin.Change_Pass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 151px;
        }
        .style2
        {
            width: 59px;
            font-weight: bold;
        }
        .style3
        {
            font-family: Georgia;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
      <asp:panel id="p1" runat="server">
    <center><h1><u><b>Change Password</b></u></h1></center>
    </asp:panel>
    </div>
    <table cellpadding="9" cellspacing="8" 
        style="top: 111px; left: 142px; position: absolute; height: 135px; width: 555px">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" CssClass="style3" Text="Username"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server" Width="162px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Username Required" 
                    style="top: 16px; left: 446px; position: absolute; height: 19px; width: 20px; margin-top: 0px" 
                    ToolTip="Username Required">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" CssClass="style3" Text="Password"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox2" runat="server" height="22px" TextMode="Password" 
                    width="162px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Password Required" 
                    style="top: 65px; left: 444px; position: absolute; height: 19px; width: 22px" 
                    ToolTip="Password Required">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" CssClass="style3" Text="New Password" 
                    Width="150px"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox3" runat="server" height="22px" TextMode="Password" 
                    width="162px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="New Password Required" 
                    style="top: 124px; left: 442px; position: absolute; height: 19px; width: 16px" 
                    ToolTip="New Password Required">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="Password Doesn't Match!" 
                    style="top: 124px; left: 442px; position: absolute; height: 19px; width: 8px" 
                    ToolTip="Password Doesn't Match!">*</asp:CompareValidator>
            </td>
        </tr>
    </table>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="top: 285px; left: 326px; position: absolute; height: 26px; width: 56px" 
            Text="Enter" />
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        style="top: 331px; left: 10px; position: absolute; height: 38px; width: 651px" />
    </form>
</body>
</html>
