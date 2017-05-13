<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forget_student.aspx.cs" Inherits="forget_student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 <html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        
        style="z-index: 1; left: 681px; top: 383px; position: absolute; height: 148px; width: 374px">
<tr><td></td><td><b>Forgot Password </b></td></tr>
<tr><td><b>Enter Your Email:</b></td><td><asp:TextBox ID="txtEmail" runat="server" 
        Width="184px" /></td></tr>
<tr><td></td><td><asp:button ID="btnSubmit" Text="Submit"  runat="server" onclick="btnSubmit_Click" CssClass="Button"/></td></tr>
<tr><td colspan="2" style=" color:red"><asp:Label ID="lbltxt" runat="server"/></td></tr>
</table>
</div>
<asp:ImageButton ID="ImageButton1" runat="server" 
    ImageUrl="~/images/New folder (2)/books2.jpg" 
    
    style="z-index: 1; left: 3px; top: 4px; position: absolute; height: 166px; width: 1535px" 
    PostBackUrl="~/student_login.aspx" />
<asp:Image ID="Image1" runat="server" 
    ImageUrl="~/images/New folder (2)/forfetpass.jpg" 
    style="z-index: 1; left: 118px; top: 267px; position: absolute; width: 486px; height: 336px" />
</form>
</body>
</html>
