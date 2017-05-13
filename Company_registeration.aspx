<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_registeration.aspx.cs" Inherits="Company_registeration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 230px; width: 1367px">
    <form id="form1" runat="server">
    <asp:ImageButton ID="ImageButton1" runat="server" Height="185px" 
        ImageUrl="~/images/New folder (2)/books2.jpg" PostBackUrl="~/Default.aspx" 
        Width="1504px" />
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" 
        ForeColor="#CC0099" Text="Company Registration"></asp:Label>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 37px; top: 310px; position: absolute" 
        Text="Company Name"></asp:Label>
    <asp:TextBox ID="CompanyName" runat="server" 
        
        style="z-index: 1; left: 189px; top: 308px; position: absolute; width: 590px; height: 25px"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 36px; top: 362px; position: absolute" 
        Text="Registration No."></asp:Label>
    <asp:TextBox ID="RegNo" runat="server" 
        
        style="z-index: 1; left: 189px; top: 365px; position: absolute; width: 232px"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 53px; top: 409px; position: absolute; height: 16px" 
        Text="Functionality"></asp:Label>
    <asp:TextBox ID="Fuctionality" runat="server" 
        
        style="z-index: 1; left: 189px; top: 413px; position: absolute; width: 164px"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 39px; top: 456px; position: absolute" 
        Text="Establishing Date"></asp:Label>
    <asp:TextBox ID="Estable" runat="server" 
        style="z-index: 1; left: 191px; top: 456px; position: absolute" 
        ontextchanged="TextBox4_TextChanged"></asp:TextBox>
        
    <asp:Label ID="Label7" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 42px; position: absolute; height: 16px; top: 522px" 
        Text="Specialization"></asp:Label>
    <asp:TextBox ID="Special" runat="server" 
        style="z-index: 1; left: 186px; top: 523px; position: absolute"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 38px; top: 576px; position: absolute" 
        Text="No. Of Employee"></asp:Label>
    <asp:TextBox ID="Noe" runat="server" 
        style="z-index: 1; left: 185px; top: 579px; position: absolute"></asp:TextBox>
    <asp:Label ID="Label9" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 75px; top: 738px; position: absolute" 
        Text="Country"></asp:Label>
    <asp:Label ID="Label10" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 352px; top: 736px; position: absolute" 
        Text="State"></asp:Label>
    <asp:Label ID="Label11" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 36px; top: 637px; position: absolute" 
        Text="Company Address"></asp:Label>
    <asp:TextBox ID="CompAdd" runat="server" 
        style="z-index: 1; left: 177px; top: 637px; position: absolute; width: 235px; height: 38px; right: 955px;" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:DropDownList ID="DdlState" runat="server" AutoPostBack="True" 
        style="z-index: 1; left: 400px; top: 735px; position: absolute">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Delhi</asp:ListItem>
        <asp:ListItem>Uttar Pradesh</asp:ListItem>
        <asp:ListItem>Madhya Pradesh</asp:ListItem>
        <asp:ListItem>Uttrakhand</asp:ListItem>
        <asp:ListItem>Rajisthan</asp:ListItem>
        <asp:ListItem>J&amp;K</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label12" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 656px; top: 737px; position: absolute; height: 24px;" 
        Text="Postal Code"></asp:Label>
    <asp:TextBox ID="Pc" runat="server" 
        style="z-index: 1; left: 768px; top: 738px; position: absolute"></asp:TextBox>
    <asp:Label ID="Label14" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 30px; top: 814px; position: absolute" 
        Text="CompanyAdmin Email id"></asp:Label>
    <asp:TextBox ID="Compid" runat="server" 
        style="z-index: 1; left: 212px; top: 812px; position: absolute; width: 263px" 
        TextMode="Email"></asp:TextBox>
    <asp:Label ID="Label15" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 97px; top: 913px; position: absolute" 
        Text="Password"></asp:Label>
    <asp:TextBox ID="CompPass" runat="server" 
        style="z-index: 1; left: 208px; top: 908px; position: absolute; width: 190px" 
        TextMode="Password"></asp:TextBox>
    <asp:Label ID="Label16" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 41px; top: 966px; position: absolute" 
        Text="ConfermPassword"></asp:Label>
    <asp:TextBox ID="ReCompPass" runat="server" 
        style="z-index: 1; left: 208px; top: 964px; position: absolute; width: 190px; right: 969px" 
        TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="CompanyName" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" 
        style="z-index: 1; left: 783px; top: 311px; position: absolute"></asp:RequiredFieldValidator>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="RegNo" ErrorMessage="This is Mandatory field" 
            ForeColor="Red" 
            style="z-index: 1; left: 426px; top: 367px; position: absolute"></asp:RequiredFieldValidator>
    </p>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="Fuctionality" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" 
        style="z-index: 1; left: 368px; top: 415px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="Estable" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" 
        
        
        
        
        
        style="z-index: 1; left: 399px; top: 460px; position: absolute; height: 21px"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="Special" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" 
        style="z-index: 1; left: 346px; top: 523px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="CompAdd" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" 
        style="z-index: 1; left: 417px; top: 648px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="DdlCountry" ErrorMessage="Mandatory field" 
        ForeColor="Red" 
        
        
        style="z-index: 1; left: 227px; top: 738px; position: absolute; right: 1044px;"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="DdlState" ErrorMessage="Mandatory field" 
        ForeColor="Red" 
        
        
        style="z-index: 1; left: 534px; top: 737px; position: absolute; height: 16px"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="Compid" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" 
        style="z-index: 1; left: 493px; top: 808px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="Compid" ErrorMessage="Enter in correct format" 
        ForeColor="Red" style="z-index: 1; left: 484px; top: 807px; position: absolute" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ControlToValidate="CompPass" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" 
        
        
        
        style="z-index: 1; left: 406px; top: 908px; position: absolute; height: 19px"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
        ControlToValidate="ReCompPass" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" 
        style="z-index: 1; left: 414px; top: 960px; position: absolute"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="CompPass" ControlToValidate="ReCompPass" 
        ErrorMessage="Password don't match" ForeColor="Red" 
        style="z-index: 1; left: 408px; top: 937px; position: absolute"></asp:CompareValidator>
    <asp:Button ID="Button1" runat="server" 
        style="z-index: 1; left: 393px; top: 1098px; position: absolute; height: 26px;" 
        Text="submit" onclick="Button1_Click" />
    <asp:ImageButton ID="ImageButton2" runat="server" 
        
        style="z-index: 1; left: 350px; top: 455px; position: absolute; width: 24px;" 
        Height="25px" ImageUrl="~/images/New folder/calendar.jpg" Width="25px" />
    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
        PopupButtonID="ImageButton2" PopupPosition="TopRight" 
        TargetControlID="Estable">
    </asp:CalendarExtender>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:Label ID="Label17" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 96px; top: 870px; position: absolute" 
        Text="Comapny Id"></asp:Label>
    <asp:TextBox ID="id" runat="server" 
        
        style="z-index: 1; left: 210px; top: 865px; position: absolute; height: 20px; width: 266px" 
        AutoPostBack="True" ontextchanged="id_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
        ControlToValidate="id" ErrorMessage="Mandatory field" ForeColor="Red" 
        style="z-index: 1; left: 482px; top: 865px; position: absolute"></asp:RequiredFieldValidator>
    <asp:DropDownList ID="DdlCountry" runat="server" 
        
        
        style="z-index: 1; top: 736px; position: absolute; height: 28px; left: 161px; right: 1153px;" 
        AutoPostBack="True">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>India</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label18" runat="server" ForeColor="Red" 
        style="z-index: 1; left: 52px; top: 1030px; position: absolute" 
        Text="*Note down CompanyId &amp; Password for login"></asp:Label>
    <asp:Label ID="userid" runat="server" 
        style="z-index: 1; left: 494px; top: 865px; position: absolute"></asp:Label>
    </form>
</body>
</html>
