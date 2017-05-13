<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact_us.aspx.cs" Inherits="contact_us" %>

<%@ Register assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.DynamicData" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="207px" 
            ImageUrl="~/images/New folder (2)/books2.jpg" PostBackUrl="~/Default.aspx" 
            Width="1125px" />
    
    </div>
    <p>
        <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/images/New folder (2)/02.jpg" />
        <asp:Image ID="Image2" runat="server" 
            
            style="z-index: 1; left: 1142px; top: 14px; position: absolute; height: 205px; width: 195px; margin-top: 0px;" 
            ImageUrl="~/images/New folder/satelite_115.gif" />
    </p>
    </form>
</body>
</html>
