<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forget_company.aspx.cs" Inherits="forget_company" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head  runat="server">
<title></title>
<style type="text/css">
.Button
{
background-color :#FF5A00;
color: #FFFFFF;
font-weight: bold;
margin-right: 2px;
padding: 4px 20px 4px 21px;
}
</style>
</head>
<body>
<form id="form1" runat="server">
<div>
<table cellspacing="2" cellpadding="2" border="0" 
        
        style="width: 396px; z-index: 1; left: 730px; top: 433px; position: absolute; height: 132px">
<tr><td></td><td><b>Forgot Password</b></td></tr>
<tr><td><b>Enter Your Email:</b></td><td><asp:TextBox ID="txtEmail2" runat="server" 
        Height="22px" Width="196px" /></td></tr>
<tr><td></td><td><asp:button ID="btnSubmit2" Text="Submit"  runat="server" onclick="btnSubmit2_Click" CssClass="Button"/></td></tr>
<tr><td colspan="2" style=" color:red"><asp:Label ID="lbltxt2" runat="server"/></td></tr>
</table>
</div>
<asp:Image ID="Image1" runat="server" 
    ImageUrl="~/images/New folder (2)/forfetpass.jpg" 
    style="z-index: 1; left: 165px; top: 323px; position: absolute; height: 355px; width: 396px" />
<asp:ImageButton ID="ImageButton1" runat="server" Height="220px" 
    ImageUrl="~/images/New folder (2)/books2.jpg" PostBackUrl="~/companylogin.aspx" 
    style="z-index: 1; left: 4px; top: 5px; position: absolute; width: 1522px" />
</form>
</body>
</html>
