<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void txtmsg_TextChanged(object sender, EventArgs e)
    {

    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Send Mail From Database In Asp.Net</title>
<style type="text/css">
body
 {
 width: 1110px;
 margin: 0px auto;
 text-align: center;
 padding-top: 50px;
 font-size: 20px;
        z-index: 1;
        left: 97px;
        top: 294px;
        position: absolute;
        height: 401px;
    }
</style>
</head>
<body>
<form id="form1" runat="server">
<h2>@@@Send Mail To Students@@@</h2>
<div style="width:250px;margin:0px auto">

<br /><br /><br />
Subject: <asp:TextBox ID="txtsub" runat="server" Width="250px" Height="35px"></asp:TextBox><br /><br />
Message: <asp:TextBox ID="txtmsg" runat="server" Width="250px" Height="50px" 
        TextMode="MultiLine" ontextchanged="txtmsg_TextChanged"></asp:TextBox><br />
<asp:Button ID="send" Text="Send Mails" runat="server" OnClick="send_Click" />

<br /><br />
<asp:Label ID="lblMessage" runat="server" Visible="False"></asp:Label>
</div> 
<asp:ImageButton ID="ImageButton1" runat="server" 
    ImageUrl="~/images/New folder (2)/books2.jpg" 
    
    
    style="z-index: 1; left: -105px; top: -288px; position: absolute; height: 180px; width: 1517px" 
    PostBackUrl="~/email_system.aspx" />
</form>
</body>
</html>