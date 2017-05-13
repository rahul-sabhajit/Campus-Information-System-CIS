<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 <html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Login Form</title>
 <script type="text/javascript" language="javascript">
     function DisableBackButton() {
         window.history.forward()
     }
     DisableBackButton();
     window.onload = DisableBackButton;
     window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
     window.onunload = function () { void (0) }
</script>
</head>
<body>
<form id="form1" runat="server">
<div>
<table style="z-index: 1; left: 274px; top: 360px; position: absolute; height: 92px; width: 438px">
<tr>
<td>
AdminId:
</td>
<td>
<asp:TextBox ID="txtUserName" runat="server"/>
<asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter AdminId" 
        ControlToValidate="txtUserName" runat="server" ForeColor="Red" />
</td>
</tr>
<tr>
<td>
Password:
</td>
<td>
<asp:TextBox ID="txtPWD" runat="server" TextMode="Password"/>
<asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txtPWD" 
        ErrorMessage="Please enter Password" ForeColor="Red"/>
</td>
</tr>
<tr>
<td>
</td>
<td>
<asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />
</td>
</tr>
</table>
</div>
<asp:ImageButton ID="ImageButton1" runat="server" 
    ImageUrl="~/images/New folder (2)/books2.jpg" 
    
    
    style="z-index: 1; left: 3px; top: 3px; position: absolute; height: 172px; width: 1570px" 
    PostBackUrl="~/Default.aspx" />
<asp:Image ID="Image1" runat="server" 
    ImageUrl="~/images/New folder/adminicon.jpg" 
    style="z-index: 1; left: 676px; top: 215px; position: absolute; width: 616px; height: 468px" />
</form>
</body>
</html>