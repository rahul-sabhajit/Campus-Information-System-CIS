<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>SendMail_company </title>
</head>
<body style="z-index: 1; left: 0px; top: 251px; position: absolute; height: 329px; width: 1081px">
<form id="form1" runat="server">
<div>
<table style=" border:1px solid" align="center">
<tr>
<td colspan="2" align="center">
<b>Send Mail using gmail To Comapany</b>
</td>
</tr>
<tr>
<td>
Gmail Username:
</td>
<td>
<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
Gmail Password:
</td>
<td>
<asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td>
Subject:
</td>
<td>
<asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
To:
</td>
<td>
<asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td valign="top">
Body:
</td>
<td>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/New folder (2)/books2.jpg" 
        
        
        style="z-index: 1; left: -5px; top: -263px; position: absolute; height: 204px; width: 1486px" 
        PostBackUrl="~/email_system.aspx" />
<asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Columns="30" Rows="10" ></asp:TextBox>
</td>
</tr>
<tr>
<td>
</td>
<td>
<asp:Button ID="btnSubmit" Text="Send" runat="server" onclick="btnSubmit_Click" />
</td>
</tr>
</table>
</div>
</form>
</body>
</html>
