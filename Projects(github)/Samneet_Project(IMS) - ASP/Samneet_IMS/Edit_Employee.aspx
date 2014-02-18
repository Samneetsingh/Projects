<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Employee.aspx.cs" Inherits="PLogin.Edit_Employee" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 148px;
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
    <center><h1><u><b>Edit Personal Details</b></u></h1></center>
    </asp:panel>
   
   
   <%-- <table cellpadding="11" cellspacing="8" 
        style="top: 82px; left: 99px; position: absolute; height: 245px; width: 552px">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" CssClass="style3" Text="Employee ID" 
                    Width="120px"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server" height="22px" width="188px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="EmployeeRequired">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" CssClass="style3" Text="Password"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox2" runat="server" height="22px" width="188px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" CssClass="style3" Text="Name"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox3" runat="server" height="22px" width="188px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" CssClass="style3" Text="Address"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox4" runat="server" height="22px" width="188px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" CssClass="style3" Text="Contact No." 
                    Width="110px"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox5" runat="server" Width="188px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
--%>

<table cellpadding="8" cellspacing="7" 
            style="top: 87px; left: 133px; position: absolute; height: 210px; width: 489px">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Employee ID" CssClass="style3"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" width="261px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Employee ID is Required" ToolTip="Employee ID is Required" 
                        ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Password" CssClass="style3"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" width="261px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Password is Required" ToolTip="Password is Required" 
                        ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" 
                        style="font-size: large; font-family: Georgia" Text="New Password"></asp:Label>
                </td>
                <td>  
                    <asp:TextBox ID="TextBox6" runat="server" height="22px" TextMode="Password" 
                    width="259px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="New Password Required" 
                    style="top: 120px; left: 448px; position: absolute; height: 19px; width: 16px" 
                    ToolTip="New Password Required">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="Password Doesn't Match!" 
                    style="top: 120px; left: 448px; position: absolute; height: 19px; width: 8px" 
                    ToolTip="Password Doesn't Match!">*</asp:CompareValidator>
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Name" CssClass="style3"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" width="261px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Name is Required" ToolTip="Name is Required" 
                        ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Address" CssClass="style3"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="76px" 
                        width="261px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Address is Required" ToolTip="Address is Required" 
                        ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        
                        style="top: 420px; left: -19px; position: absolute; height: 38px; width: 276px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Contact No." CssClass="style3"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="261px"></asp:TextBox>
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
        style="top: 462px; left: 311px; position: absolute; height: 26px; width: 105px" 
        Text="Enter" />
    </form>
</body>
</html>

