<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assign_job.aspx.cs" Inherits="project_connecting_database.Assign_job" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Assign Jobs</h1>
    <h3>Select the customer(s) from the list</h3>
    <asp:Button ID="CheckAll" runat="server" Text="Check All" 
            onclick="CheckAll_Click" />
 
<asp:Button ID="UncheckAll" runat="server" Text="Uncheck All" 
            onclick="UncheckAll_Click" />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" >
            <RowStyle BackColor="White" ForeColor="#003399" />


            <Columns>
            
           <asp:TemplateField HeaderText="Select">
           
    <ItemTemplate>
       <asp:CheckBox ID="CheckBox1" runat="server" Enabled="True" EnableViewState="true"/>
    </ItemTemplate>
    <HeaderTemplate>
    </HeaderTemplate>
   </asp:TemplateField>
      </Columns>


            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        </asp:GridView>    <br><br>
        
        
        <h3>Select Employee</h3>
        <asp:DropDownList ID="DropDownList1" runat="server" DataValueField="Name" 
            AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="Name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:insuranceConnectionString2 %>" 
            SelectCommand="SELECT [Name] FROM [employee_info] ORDER BY [Name]">
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
