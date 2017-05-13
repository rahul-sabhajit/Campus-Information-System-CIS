<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kkmkomomot4.aspx.cs" Inherits="kkmkomomot4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:TextBox ID="id" runat="server" AutoPostBack="True" 
        ontextchanged="id_TextChanged"></asp:TextBox>
    <asp:Label ID="userid" runat="server" 
        style="z-index: 1; left: 146px; top: 16px; position: absolute"></asp:Label>
    </form>
</body>
</html>
