<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_login.aspx.cs" Inherits="student_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 <html xmlns="http://www.w3.org/1999/xhtml">
<head  runat="server">
<title></title>
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
<table style="z-index: 1; left: 72px; top: 378px; position: absolute; height: 128px; width: 406px">
<tr>
<td>
StudentId:
</td>
<td>
<asp:TextBox ID="txtUserName" runat="server"/>
<asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter StudentId" 
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
    
    style="z-index: 1; left: 0px; top: 2px; position: absolute; height: 200px; width: 1556px" 
    PostBackUrl="~/Default.aspx" />
<asp:Image ID="Image2" runat="server" 
    ImageUrl="~/images/New folder (2)/Student-login.jpg" 
    
    style="z-index: 1; left: 484px; top: 262px; position: absolute; height: 434px; width: 1035px" />
<asp:ImageButton ID="ImageButton2" runat="server" 
    ImageUrl="~/images/New folder (2)/fogetbutton.jpg" 
    PostBackUrl="~/forget_student.aspx" 
    
    
    style="z-index: 1; left: 263px; top: 477px; position: absolute; width: 154px; height: 22px" />
</form>
</body>
</html>
