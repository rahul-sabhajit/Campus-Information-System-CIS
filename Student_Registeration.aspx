<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Registeration.aspx.cs" Inherits="Student_Registeration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 125%;
        }
        .style2
        {
            height: 519px;
            width: 1346px;
        }
        .style3
        {
            height: 160px;
            width: 1346px;
        }
        .style4
        {
            height: 796px;
            width: 1346px;
        }
        .style5
        {
            width: 1346px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    
    <div style="height: 1108px; margin-right: 0px;">
    
        <table class="style1">
            <tr>
                <td height="150" class="style5">
                    <asp:ImageButton ID="top_image" runat="server" 
                        ImageUrl="~/images/New folder (2)/books2.jpg" PostBackUrl="~/Default.aspx" 
                        
                        
                        style="top: 19px; left: 12px; position: absolute; height: 166px; width: 1488px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="PersonalInformation" runat="server" Font-Bold="True" 
                        Font-Size="Larger" ForeColor="#CC0099" 
                        style="top: 192px; left: 58px; position: absolute; height: 42px; width: 225px" 
                        Text="Personal Information"></asp:Label>
                    <asp:Label ID="Name" runat="server" Font-Bold="True" 
                        style="top: 254px; left: 60px; position: absolute; height: 19px; width: 66px" 
                        Text="Name :           "></asp:Label>
                    <asp:TextBox ID="Fname" runat="server" 
                        
                        style="z-index: 1; left: 270px; top: 256px; position: absolute;width: 171px" 
                        >First Name</asp:TextBox>
                    <asp:TextBox ID="Mname" runat="server" 
                        
                        style="z-index: 1; left: 493px; top: 254px; position: absolute; width: 171px; right: 257px;">Middle Name</asp:TextBox>
                    <asp:TextBox ID="LName" runat="server" 
                        
                        style="z-index: 1; left: 708px; top: 252px; position: absolute; width: 171px">Last Name</asp:TextBox>
                    <asp:Label ID="Emailid" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 58px; top: 293px; position: absolute" Text="Email ID:"></asp:Label>
                    
                    <asp:Label ID="Father" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 54px; top: 325px; position: absolute; width: 105px" 
                        Text="Father Name:"></asp:Label>
                    <asp:TextBox ID="Fathername" runat="server" 
                        
                        style="z-index: 1; left: 270px; top: 331px; position: absolute; width: 393px"></asp:TextBox>
                    <asp:Label ID="Mother" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 52px; top: 356px; position: absolute" 
                        Text="Mother Name:"></asp:Label>
                    <asp:TextBox ID="Mothername" runat="server" 
                        
                        style="z-index: 1; left: 271px; top: 360px; position: absolute; width: 392px"></asp:TextBox>
                    <asp:Label ID="Contact" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 50px; top: 385px; position: absolute" 
                        Text="Contact Number:"></asp:Label>
                    <asp:TextBox ID="Contactno" runat="server" 
                        
                        
                        
                        
                        style="z-index: 1; left: 272px; top: 389px; position: absolute; width: 183px; right: 462px;"></asp:TextBox>
                    <asp:Label ID="Adress" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 52px; top: 415px; position: absolute; width: 81px" 
                        Text="Address:"></asp:Label>
                    
                    <asp:TextBox ID="Address" runat="server" 
                        
                        style="z-index: 1; left: 272px; top: 426px; position: absolute; width: 390px; height: 53px" 
                        TextMode="MultiLine"></asp:TextBox>
                    <asp:Label ID="dob" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 56px; top: 516px; position: absolute; width: 154px" 
                        Text="DOB(date of birth)"></asp:Label>
                    
                    <asp:Label ID="Password" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 70px; top: 1497px; position: absolute; width: 83px; right: 743px" 
                        Text="Password:"></asp:Label>
                    <asp:TextBox ID="Pass" runat="server" 
                        
                        style="z-index: 1; left: 174px; top: 1495px; position: absolute; width: 179px; right: 543px;" 
                        TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 16px; top: 1540px; position: absolute; right: 739px; width: 141px;" 
                        Text="Confirm Password:"></asp:Label>
                    <asp:TextBox ID="Repass" runat="server" 
                        
                        style="z-index: 1; left: 172px; top: 1542px; position: absolute; width: 182px; height: 22px;" 
                        TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="Fname" ErrorMessage="This is mandatory field" 
                        style="z-index: 1; left: 898px; top: 255px; position: absolute" 
                        SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="This is mandatory field" SetFocusOnError="True" 
                        style="z-index: 1; left: 674px; top: 293px; position: absolute" 
                        ControlToValidate="Email" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Enter in Correct Format" SetFocusOnError="True" 
                        style="z-index: 1; left: 689px; top: 294px; position: absolute" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ControlToValidate="Email" ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="This is mandatory field" SetFocusOnError="True" 
                        style="z-index: 1; left: 676px; top: 333px; position: absolute" 
                        ControlToValidate="Fathername" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="This is mandatory field" SetFocusOnError="True" 
                        
                        style="top: 361px; left: 680px; position: absolute; height: 19px; width: 141px" 
                        ControlToValidate="Mothername" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="This is mandatory field" SetFocusOnError="True" 
                        
                        style="z-index: 1; left: 468px; top: 388px; position: absolute; right: 484px; height: 15px;" 
                        ControlToValidate="Contactno" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="This is mandatory field" SetFocusOnError="True" 
                        style="z-index: 1; left: 677px; top: 436px; position: absolute" 
                        ControlToValidate="Address" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="This is mandatory field" SetFocusOnError="True" 
                        style="z-index: 1; left: 475px; top: 511px; position: absolute" 
                        ControlToValidate="DateOfBirth" ForeColor="Red" Visible="False"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="This is mandatory field" SetFocusOnError="True" 
                        style="z-index: 1; left: 362px; top: 1496px; position: absolute" 
                        ControlToValidate="Pass" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="This is mandatory field" SetFocusOnError="True" 
                        style="z-index: 1; left: 361px; top: 1549px; position: absolute" 
                        ControlToValidate="Repass" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="Pass" ControlToValidate="Repass" 
                        ErrorMessage="Passwords Don't Match" SetFocusOnError="True" 
                        style="z-index: 1; left: 369px; top: 1519px; position: absolute" 
                        ForeColor="Red"></asp:CompareValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ErrorMessage="Not proper age to apply" MaximumValue="60" MinimumValue="14" 
                        SetFocusOnError="True" 
                        style="z-index: 1; left: 481px; top: 510px; position: absolute" 
                        ControlToValidate="DateOfBirth" ForeColor="Red" Visible="False"></asp:RangeValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ControlToValidate="Contactno" ErrorMessage="Incorrect Format" 
                        style="z-index: 1; left: 515px; top: 399px; position: absolute" 
                        onservervalidate="val" ForeColor="Red"></asp:CustomValidator>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/images/New folder/calendar.jpg" 
                        style="z-index: 1; left: 395px; top: 511px; position: absolute" 
                        Width="25px" onclick="ImageButton1_Click" />
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
                        PopupButtonID="ImageButton1" PopupPosition="BottomRight" 
                        TargetControlID="DateOfBirth">
                    </asp:CalendarExtender>
                    
                    <asp:TextBox ID="DateOfBirth" runat="server" 
                        
                        style="z-index: 1; left: 273px; top: 514px; position: absolute; width: 104px" 
                        ontextchanged="TextBox25_TextChanged"></asp:TextBox>
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
                     <asp:TextBox ID="Email" runat="server" 
                        style="z-index: 1; left: 271px; top: 295px; position: absolute; width: 388px"></asp:TextBox>
                     <asp:TextBox ID="id" runat="server" 
                        style="z-index: 1; left: 195px; top: 1448px; position: absolute" 
                        AutoPostBack="True" ontextchanged="id_TextChanged"></asp:TextBox>
                     <div id="checkusername" runat="server"  Visible="false">
                        </div>
                    <asp:Label ID="Label34" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 118px; top: 579px; position: absolute; width: 64px" 
                        Text="Gender"></asp:Label>
                    <asp:DropDownList ID="Gender" runat="server" 
                        style="z-index: 1; left: 270px; top: 579px; position: absolute">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>TransGender</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label37" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 103px; top: 636px; position: absolute" 
                        Text="CollegeId"></asp:Label>
                    <asp:TextBox ID="collegeid" runat="server" 
                        
                        style="z-index: 1; left: 269px; top: 631px; position: absolute; right: 754px;" 
                        AutoPostBack="True" ontextchanged="collegeid_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                        ControlToValidate="collegeid" ErrorMessage="This is mandatory field" 
                        ForeColor="Red" 
                        style="z-index: 1; left: 412px; top: 631px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:Label ID="collegename" runat="server" 
                        style="z-index: 1; left: 418px; top: 631px; position: absolute"></asp:Label>
                </td>
            </tr>
            <tr>
            <hr noshade color="blueviolet" size="7.5">
            
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" Font-Size="Larger" ForeColor="#CC0099" 
                        style="z-index: 1; left: 57px; top: 694px; position: absolute; height: 19px" 
                        Text="Academic Information"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 54px; top: 758px; position: absolute" 
                        Text="Choose Master Degree"></asp:Label>
                    <asp:DropDownList ID="DdlMd" runat="server" AutoPostBack="True" 
                        
                        style="z-index: 1; left: 275px; top: 755px; position: absolute; height: 21px; width: 93px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>MTech</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>Msc</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 56px; top: 888px; position: absolute" 
                        Text="Choose Graduation Degree"></asp:Label>
                    <asp:DropDownList ID="DdlGd" runat="server" AutoPostBack="True" 
                        
                        
                        style="z-index: 1; left: 276px; top: 891px; position: absolute; height: 24px; width: 87px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>BTech</asp:ListItem>
                        <asp:ListItem>Bsc</asp:ListItem>
                        <asp:ListItem>BBA</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 437px; top: 756px; position: absolute" 
                        Text="College/University Name"></asp:Label>
                    
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 94px; top: 821px; position: absolute; width: 107px" 
                        Text="Year of Passing"></asp:Label>
                    <asp:DropDownList ID="DdlMdy" runat="server" AutoPostBack="True" 
                        style="z-index: 1; left: 273px; top: 824px; position: absolute">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                        ID="Label24" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 342px; top: 1273px; position: absolute; width: 44px" 
                        Text="Label" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 437px; top: 892px; position: absolute" 
                        Text="College/University Name"></asp:Label>
                    
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 81px; top: 949px; position: absolute; width: 105px; height: 26px" 
                        Text="Year of Passing"></asp:Label>
                    <asp:DropDownList ID="DdlGdy" runat="server" AutoPostBack="True" 
                        style="z-index: 1; left: 277px; top: 948px; position: absolute">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 436px; top: 822px; position: absolute; width: 197px; right: 702px; bottom: 209px;" 
                        Text="Aggregate Percentage/CGPA"></asp:Label>
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 833px; top: 826px; position: absolute; width: 85px" 
                        Text="Label" Visible="False"></asp:Label>
                    <asp:TextBox ID="Mdp" runat="server" 
                        style="z-index: 1; left: 940px; top: 823px; position: absolute; height: 30px; width: 104px" 
                        Visible="False"></asp:TextBox>
                    
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="#FF6600" 
                        style="z-index: 1; left: 53px; top: 1012px; position: absolute" 
                        Text="Intermediate detail"></asp:Label>
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 51px; top: 1058px; position: absolute" 
                        Text="College Name"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="Icn" ErrorMessage="Mandatory field" ForeColor="Red" 
                        
                        style="z-index: 1; left: 225px; top: 1040px; position: absolute; height: 14px"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="Icn" runat="server" 
                        style="z-index: 1; left: 151px; top: 1061px; position: absolute; width: 211px" 
                        TextMode="MultiLine"></asp:TextBox>
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 454px; top: 1063px; position: absolute" Text="Board"></asp:Label>
                    
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" ForeColor="#FF6600" 
                        style="z-index: 1; left: 42px; top: 1173px; position: absolute" 
                        Text="HighSchool detail"></asp:Label>
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 44px; top: 1218px; position: absolute; height: 24px" 
                        Text="School Name"></asp:Label>
                    <asp:TextBox ID="Hcn" runat="server" 
                        style="z-index: 1; left: 172px; top: 1215px; position: absolute; height: 38px; width: 207px" 
                        TextMode="MultiLine"></asp:TextBox>
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 450px; top: 1216px; position: absolute" Text="Board"></asp:Label>
                    
                    <asp:Label ID="Label23" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 36px; top: 1268px; position: absolute" 
                        Text="Percentage/CGPA"></asp:Label>
                    <asp:TextBox ID="Hcp" runat="server" 
                        ontextchanged="TextBox20_TextChanged" 
                        style="z-index: 1; left: 483px; top: 1271px; position: absolute; width: 101px; height: 30px" 
                        Visible="False"></asp:TextBox>
                    
                    <asp:DropDownList ID="DdlGdc" runat="server" 
                        style="z-index: 1; left: 644px; top: 891px; position: absolute">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>IIMT ENGG. COLLEGE MEERUT</asp:ListItem>
                    </asp:DropDownList>
                    
                    
                    
                    <asp:Label ID="Label26" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 356px; top: 1116px; position: absolute" Text="Label" 
                        Visible="False"></asp:Label>
                    <asp:TextBox ID="Ip" runat="server" 
                        style="z-index: 1; top: 1115px; position: absolute; height: 30px; width: 101px; left: 485px;" 
                        Visible="False"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList16" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList16_SelectedIndexChanged" 
                        style="z-index: 1; left: 173px; top: 1269px; position: absolute">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Grade</asp:ListItem>
                        <asp:ListItem>Percentage</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 33px; top: 1114px; position: absolute" 
                        Text="Percentage/GRADE"></asp:Label>
                    
                    <asp:Label ID="Label28" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 642px; top: 1116px; position: absolute" 
                        Text="Year of Passing"></asp:Label>
                    <asp:DropDownList ID="DdlIy" runat="server" AutoPostBack="True" 
                        style="z-index: 1; left: 756px; top: 1116px; position: absolute">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label30" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 638px; top: 1272px; position: absolute" 
                        Text="Year of Passing"></asp:Label>
                    <asp:DropDownList ID="DdlHy" runat="server" AutoPostBack="True" 
                        style="z-index: 1; left: 757px; top: 1271px; position: absolute">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1967</asp:ListItem>
                        <asp:ListItem>1968</asp:ListItem>
                        <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label31" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 436px; top: 948px; position: absolute" 
                        Text="Aggregate Percentage/CGPA"></asp:Label>
                    <asp:Label ID="Label32" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 835px; top: 948px; position: absolute" Text="Label" 
                        Visible="False"></asp:Label>
                    <asp:TextBox ID="Gdp" runat="server" 
                        style="z-index: 1; left: 944px; top: 948px; position: absolute; height: 30px; width: 104px" 
                        Visible="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="DdlIb" ErrorMessage="Mandatory field" 
                        ForeColor="Red" 
                        
                        
                        style="z-index: 1; left: 495px; top: 1047px; position: absolute; height: 14px; bottom: 209px"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="DdlIy" ErrorMessage="Mandatory field" 
                        ForeColor="Red" 
                        
                        style="z-index: 1; left: 736px; top: 1100px; position: absolute; height: 14px"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="Hcn" ErrorMessage="Mandatory field" ForeColor="Red" 
                        
                        style="z-index: 1; left: 194px; top: 1198px; position: absolute; height: 14px"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="DdlHb" ErrorMessage="Mandatory field" 
                        ForeColor="Red" 
                        
                        
                        style="z-index: 1; left: 484px; top: 1196px; position: absolute; height: 14px"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="DdlHy" ErrorMessage="Mandatory field" 
                        ForeColor="Red" 
                        
                        style="z-index: 1; left: 733px; top: 1253px; position: absolute; height: 14px"></asp:RequiredFieldValidator>
                    
                    <asp:Label ID="Label33" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 35px; top: 1342px; position: absolute" 
                        Text="UPLOAD IMAGE"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" 
                        style="z-index: 1; left: 178px; top: 1342px; position: absolute" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="FileUpload1" ErrorMessage="Mandatory field" ForeColor="Red" 
                        style="z-index: 1; left: 185px; top: 1373px; position: absolute"></asp:RequiredFieldValidator>
                    
                    <asp:DropDownList ID="DdlMdc" runat="server" 
                        style="z-index: 1; left: 615px; top: 757px; position: absolute">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>IIMT Engg. college Meerut</asp:ListItem>
                    </asp:DropDownList>
                    
                    <asp:DropDownList ID="DdlIb" runat="server" AutoPostBack="True" 
                        style="z-index: 1; left: 505px; top: 1066px; position: absolute">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>CBSC</asp:ListItem>
                        <asp:ListItem>UP</asp:ListItem>
                        <asp:ListItem>ICSC</asp:ListItem>
                        <asp:ListItem>BIHAR</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DdlHb" runat="server" AutoPostBack="True" 
                        style="z-index: 1; left: 502px; top: 1215px; position: absolute">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>CBSC</asp:ListItem>
                        <asp:ListItem>UP</asp:ListItem>
                        <asp:ListItem>ICSC</asp:ListItem>
                        <asp:ListItem>BIHAR</asp:ListItem>
                    </asp:DropDownList>
                    
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged1" 
                        style="z-index: 1; left: 641px; top: 821px; position: absolute">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Percentage</asp:ListItem>
                        <asp:ListItem>Grade</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList3_SelectedIndexChanged1" 
                        style="z-index: 1; left: 189px; top: 1116px; position: absolute; right: 820px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Percentage</asp:ListItem>
                        <asp:ListItem>Grade</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged1" 
                        style="z-index: 1; left: 649px; top: 945px; position: absolute">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Percentage</asp:ListItem>
                        <asp:ListItem>Grade</asp:ListItem>
                    </asp:DropDownList>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="Gender" ErrorMessage="This is mandatory field" 
                        style="z-index: 1; left: 386px; top: 582px; position: absolute" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        ControlToValidate="Ip" ErrorMessage="Mandatory field" 
                        style="z-index: 1; left: 484px; top: 1144px; position: absolute" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                        ControlToValidate="Hcp" ErrorMessage="Mandatory field" 
                        style="z-index: 1; left: 485px; top: 1302px; position: absolute" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    
                    <asp:Label ID="Label35" runat="server" Font-Bold="True" 
                        style="z-index: 1; left: 71px; top: 1449px; position: absolute" 
                        Text="StudentId"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                        ControlToValidate="id" ErrorMessage="Mandatory field" ForeColor="Red" 
                        style="z-index: 1; left: 342px; top: 1446px; position: absolute"></asp:RequiredFieldValidator>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                        ControlToValidate="DdlGdy" ErrorMessage="Mandatory field" ForeColor="Red" 
                        style="z-index: 1; left: 241px; top: 977px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                        ControlToValidate="DdlGd" ErrorMessage="Mandatory field" ForeColor="Red" 
                        style="z-index: 1; left: 245px; top: 920px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                        ControlToValidate="DdlGdc" ErrorMessage="Mandatory field" ForeColor="Red" 
                        style="z-index: 1; left: 681px; top: 917px; position: absolute; height: 17px"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                        ControlToValidate="Gdp" ErrorMessage="Mandatory field" ForeColor="Red" 
                        style="z-index: 1; left: 945px; top: 990px; position: absolute"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        style="z-index: 1; left: 419px; top: 1655px; position: absolute; height: 36px; width: 72px;" 
                        Text="submit" />
                    <asp:Label ID="Label36" runat="server" ForeColor="Red" 
                        style="z-index: 1; left: 44px; top: 1602px; position: absolute" 
                        Text="*Note down StudentId And Password for login"></asp:Label>
                    <asp:Label ID="userid" runat="server" 
                        style="z-index: 1; left: 340px; top: 1448px; position: absolute"></asp:Label>
                    </td>
            </tr>
            <tr>
               
                </td>
            </tr>
        </table>
    
    </div>

    </form>
</body>
</html>
