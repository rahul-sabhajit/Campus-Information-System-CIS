<%@ Page Language="C#" AutoEventWireup="true" CodeFile="college_Regi.aspx.cs" Inherits="college_Regi" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 178px; z-index: 1; left: 0px; top: 0px; position: absolute; width: 1533px">
    <form id="form1" runat="server">
    <asp:ImageButton ID="ImageButton2" runat="server" Height="173px" 
        ImageUrl="~/images/New folder (2)/books2.jpg" PostBackUrl="~/Default.aspx" 
        Width="1511px" />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" 
        ForeColor="#CC0099" 
        style="z-index: 1; left: 10px; top: 207px; position: absolute" 
        Text="College Information"></asp:Label>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 4px; top: 264px; position: absolute" 
        Text="College/University Name"></asp:Label>
    <asp:TextBox ID="CollegeName" runat="server" 
        
        style="z-index: 1; left: 279px; top: 271px; position: absolute; height: 20px; width: 422px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 11px; top: 304px; position: absolute" 
        Text="CollegeAddress"></asp:Label>
    <asp:Label ID="Label9" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 9px; top: 472px; position: absolute; right: 1243px;" 
        Text="Opening Date"></asp:Label>
    <asp:TextBox ID="CollegeAdd" runat="server" 
        
        style="z-index: 1; left: 278px; top: 308px; position: absolute; height: 20px; width: 425px"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 451px; top: 355px; position: absolute; right: 859px" 
        Text="State"></asp:Label>
    <asp:Label ID="Label7" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 789px; top: 356px; position: absolute" 
        Text="Postal Code"></asp:Label>
    <asp:TextBox ID="Country2" runat="server" 
        style="z-index: 1; left: 279px; top: 353px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="Pc2" runat="server" 
        
        style="z-index: 1; left: 882px; top: 350px; position: absolute; margin-top: 2px"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 9px; top: 424px; position: absolute" 
        Text="Resistration Number"></asp:Label>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" 
            style="z-index: 1; left: 9px; top: 356px; position: absolute" Text="Country"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="State2" runat="server" 
            style="z-index: 1; left: 505px; top: 355px; position: absolute"></asp:TextBox>
    </p>
    <asp:TextBox ID="CollegeRegNo" runat="server" 
        
        style="z-index: 1; left: 280px; top: 421px; position: absolute; width: 239px"></asp:TextBox>
    <asp:TextBox ID="Opening" runat="server" 
        
        style="z-index: 1; left: 277px; top: 472px; position: absolute; width: 244px"></asp:TextBox>
    <asp:Label ID="Label10" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 9px; top: 513px; position: absolute" 
        Text="College Admin E-Mail Id"></asp:Label>
    <p>
        <asp:TextBox ID="CollegeEid" runat="server" 
            
            
            style="z-index: 1; left: 275px; top: 513px; position: absolute; width: 278px"></asp:TextBox>
    </p>
    <asp:Label ID="Label11" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 21px; top: 605px; position: absolute; width: 103px" 
        Text="Password"></asp:Label>
    <asp:TextBox ID="CollegePass" runat="server" 
        
        
        
        style="z-index: 1; left: 276px; top: 608px; position: absolute; width: 277px; right: 792px" 
        TextMode="Password"></asp:TextBox>
    <asp:Label ID="Label12" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 16px; top: 652px; position: absolute" 
        Text="Confirm Password"></asp:Label>
    <p>
        <asp:TextBox ID="ReCollegePass" runat="server" 
            
            
            
            style="z-index: 1; left: 277px; top: 649px; position: absolute; width: 277px" 
            TextMode="Password"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="CollegePass" ControlToValidate="ReCollegePass" 
        ErrorMessage="Password don't match" ForeColor="Red" 
        style="z-index: 1; left: 559px; top: 626px; position: absolute"></asp:CompareValidator>
    <asp:Button ID="Button1" runat="server" 
        style="z-index: 1; left: 413px; top: 762px; position: absolute" 
        Text="submit" onclick="Button1_Click" />
    <asp:ImageButton ID="ImageButton3" runat="server" Height="25px" 
        ImageUrl="~/images/New folder/calendar.jpg" 
        style="z-index: 1; left: 531px; top: 475px; position: absolute" 
        Width="25px" onclick="ImageButton3_Click" />
    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
        PopupButtonID="ImageButton3" PopupPosition="BottomRight" 
        TargetControlID="Opening">
    </asp:CalendarExtender>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="Opening" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" 
        style="z-index: 1; left: 566px; position: absolute; top: 476px"></asp:RequiredFieldValidator>
    <asp:Label ID="Label13" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 24px; top: 563px; position: absolute" 
        Text="College Id"></asp:Label>
    <asp:TextBox ID="id" runat="server" 
        
        style="z-index: 1; left: 275px; top: 557px; position: absolute; height: 24px; width: 278px" 
        AutoPostBack="True" ontextchanged="id_TextChanged"></asp:TextBox>
    <asp:Label ID="Label14" runat="server" ForeColor="Red" 
        style="z-index: 1; left: 40px; top: 704px; position: absolute" 
        Text="*Note down collegeId &amp; password for login"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="id" ErrorMessage="This is Mandatory field" ForeColor="Red" 
        style="z-index: 1; left: 569px; top: 558px; position: absolute"></asp:RequiredFieldValidator>
    <asp:Label ID="userid" runat="server" 
        style="z-index: 1; left: 576px; top: 560px; position: absolute"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="CollegeName" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" style="z-index: 1; left: 718px; top: 274px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="CollegeAdd" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" style="z-index: 1; left: 716px; top: 312px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="Country2" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" style="z-index: 1; left: 269px; top: 388px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="State2" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" style="z-index: 1; left: 498px; top: 389px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="CollegeRegNo" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" style="z-index: 1; left: 539px; top: 422px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="CollegeEid" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" 
        style="z-index: 1; left: 564px; top: 516px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="CollegePass" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" style="z-index: 1; left: 560px; top: 606px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ControlToValidate="ReCollegePass" ErrorMessage="This is Mandatory field" 
        ForeColor="Red" style="z-index: 1; left: 564px; top: 650px; position: absolute"></asp:RequiredFieldValidator>
    </form>
</body>
</html>
