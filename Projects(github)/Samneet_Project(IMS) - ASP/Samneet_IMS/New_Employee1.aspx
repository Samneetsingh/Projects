<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New_Employee1.aspx.cs" Inherits="PLogin.New_Employee1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 160px;
            font-family: Georgia;
            font-weight: bold;
            font-size: medium;
        }
        .style2
        {
            width: 160px;
            font-family: Georgia;
            font-weight: bold;
            font-size: medium;
            height: 95px;
        }
        .style3
        {
            height: 95px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:panel id="p1" runat="server">
    <center><h1><u><b>New Employee </b></u></h1></center>
    </asp:panel>
        <table cellpadding="8" cellspacing="7" 
            style="top: 87px; left: 133px; position: absolute; height: 210px; width: 489px">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" width="254px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Employee ID is Required" ToolTip="Employee ID is Required" 
                        ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" width="254px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Password is Required" ToolTip="Password is Required" 
                        ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" width="254px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Name is Required" ToolTip="Name is Required" 
                        ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="76px" 
                        width="254px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Address is Required" ToolTip="Address is Required" 
                        ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        style="top: 394px; left: 6px; position: absolute; height: 38px; width: 276px" />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="Contact No."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="254px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Contact No. isRequired" ToolTip="Contact No. isRequired" 
                        ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        &nbsp;</p>
    <asp:Button ID="Button1" runat="server" 
        style="top: 418px; left: 340px; position: absolute; height: 26px; width: 56px" 
        Text="Enter" />
    </form>
</body>
</html>
