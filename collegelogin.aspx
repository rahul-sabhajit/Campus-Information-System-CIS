<%@ Page Language="C#" AutoEventWireup="true" CodeFile="collegelogin.aspx.cs" Inherits="collegelogin" %>

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
<body bgcolor="#F0F8FF">
<form id="form1" runat="server">
<div>
<table style="z-index: 1; left: 208px; top: 463px; position: absolute; height: 116px; width: 388px">
<tr>
<td>
CollegeId:
</td>
<td>
<asp:TextBox ID="txtUserName" runat="server"/>
<asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter CollegeId" 
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
    ImageUrl="~/images/New folder (2)/books2.jpg" PostBackUrl="~/Default.aspx" 
    
    style="z-index: 1; left: 0px; top: 2px; position: absolute; height: 206px; width: 1531px" />
<asp:Image ID="Image1" runat="server" 
    ImageUrl="~/images/New folder (2)/thinkcollege.png" 
    style="z-index: 1; left: 712px; top: 308px; position: absolute; height: 395px; width: 586px" />
<asp:ImageButton ID="ImageButton2" runat="server" 
    ImageUrl="~/images/New folder (2)/fogetbutton.jpg" 
    PostBackUrl="~/forget_college.aspx" 
    style="z-index: 1; left: 409px; top: 549px; position: absolute; height: 24px; width: 140px" />
</form>
</body>
</html>
