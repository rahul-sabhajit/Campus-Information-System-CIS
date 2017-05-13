<%@ Page Language="C#" AutoEventWireup="true" CodeFile="companylogin.aspx.cs" Inherits="companylogin" %>

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
<table style="z-index: 1; left: 10px; top: 343px; position: absolute; height: 112px; width: 416px">
<tr>
<td>
CompanyId:
</td>
<td>
<asp:TextBox ID="txtUserName" runat="server"/>
<asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter CompanyId" 
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
    style="z-index: 1; left: 0px; top: 3px; position: absolute; height: 212px; width: 1546px" />
<asp:ImageButton ID="ImageButton2" runat="server" 
    ImageUrl="~/images/New folder (2)/fogetbutton.jpg" 
    PostBackUrl="~/forget_company.aspx" 
    
    
    style="z-index: 1; left: 218px; top: 425px; position: absolute; height: 24px; width: 115px;" />
<asp:Image ID="Image1" runat="server" 
    ImageUrl="~/images/New folder (2)/companylogin.jpg" 
    style="z-index: 1; left: 562px; top: 284px; position: absolute; height: 348px; width: 495px" />
</form>
</body>
</html>