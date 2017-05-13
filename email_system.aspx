<%@ Page Language="C#" AutoEventWireup="true" CodeFile="email_system.aspx.cs" Inherits="email_system" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
body
 {
 width: 980px;
 margin: 0px auto;
 text-align: center;
 padding-top: 50px;
 font-size: 20px;
 }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/New folder (2)/books2.jpg" 
        
        style="z-index: 1; left: 0px; top: 5px; position: absolute; height: 193px; width: 1532px" 
        PostBackUrl="~/admin.aspx" />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 492px; top: 251px; position: absolute; height: 25px" 
        Text="Send M@ils To Communicatin" ForeColor="#CC0099"></asp:Label>
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/images/New folder (2)/mailbox1.jpg" PostBackUrl="~/Default2.aspx" 
        style="z-index: 1; left: 31px; top: 391px; position: absolute; width: 357px; height: 259px" />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Blue" 
        style="z-index: 1; left: 775px; top: 667px; position: absolute; width: 215px" 
        Text="Other MailBox"></asp:Label>
    <asp:ImageButton ID="ImageButton3" runat="server" 
        ImageUrl="~/images/New folder (2)/mailbox2.jpg" PostBackUrl="~/Default3.aspx" 
        style="z-index: 1; left: 702px; top: 400px; position: absolute; width: 306px; height: 254px" />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Blue" 
        style="z-index: 1; left: 115px; top: 688px; position: absolute" 
        Text="Students MailBox"></asp:Label>
    </form>
</body>
</html>
