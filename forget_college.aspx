<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forget_college.aspx.cs" Inherits="forget_college" %>

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
        
        
        style="z-index: 1; left: 614px; top: 406px; position: absolute; height: 126px; width: 415px">
<tr><td></td><td><b>Forgot Password</b></td></tr>
<tr><td><b>Enter Your Email:</b></td><td><asp:TextBox ID="txtEmail1" runat="server" 
        Width="204px" /></td></tr>
<tr><td></td><td><asp:button ID="btnSubmit1" Text="Submit"  runat="server" onclick="btnSubmit1_Click" CssClass="Button"/></td></tr>
<tr><td colspan="2" style=" color:red"><asp:Label ID="lbltxt1" runat="server"/></td></tr>
</table>
</div>
<asp:ImageButton ID="ImageButton1" runat="server" 
    ImageUrl="~/images/New folder (2)/books2.jpg" PostBackUrl="~/collegelogin.aspx" 
    
    style="z-index: 1; left: 4px; top: 1px; position: absolute; height: 220px; width: 1520px" />
<asp:Image ID="Image1" runat="server" 
    ImageUrl="~/images/New folder (2)/forfetpass.jpg" 
    style="z-index: 1; left: 84px; top: 281px; position: absolute; height: 329px" />
</form>
</body>
</html>
