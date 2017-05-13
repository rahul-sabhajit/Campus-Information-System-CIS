<%@ Page Language="C#" AutoEventWireup="true" CodeFile="company_home.aspx.cs" Inherits="company_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 943px;
            width: 1394px;
            margin-right: 0px;
        }
        .style1
        {
            width: 44%;
            z-index: 1;
            left: 715px;
            top: 394px;
            position: absolute;
            height: 395px;
        }
        .style2
        {
            height: 48px;
        }
        .style3
        {
            height: 240px;
        }
        .style4
        {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" ForeColor="#CC0099" 
        style="z-index: 1; left: 10px; top: 240px; position: absolute" Text="welcome"></asp:Label>
    <asp:Label ID="companyid" runat="server" ForeColor="Blue" 
        style="z-index: 1; left: 81px; top: 241px; position: absolute; right: 484px; height: 27px" 
        Text="label"></asp:Label>
    <asp:ImageButton ID="ImageButton1" runat="server" Height="204px" 
        ImageUrl="~/images/New folder (2)/books2.jpg" Width="1502px" 
        style="z-index: 1; left: 10px; top: 3px; position: absolute" />
    <table class="style1">
        <tr>
            <td class="style2">
                CompanyName</td>
        </tr>
        <tr>
            <td class="style4">
                CompanyId<asp:TextBox ID="compid" runat="server" 
                    
                    style="z-index: 1; left: 106px; top: 58px; position: absolute; width: 100px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="z-index: 1; left: 237px; top: 353px; position: absolute; height: 26px; width: 88px" 
                    Text="Post" />
                <asp:TextBox ID="jobpost" runat="server" 
                    style="z-index: 1; left: 1px; top: 95px; position: absolute; height: 238px; width: 612px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:TextBox ID="compname" runat="server" 
        style="z-index: 1; left: 822px; top: 402px; position: absolute; height: 24px; width: 504px"></asp:TextBox>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="companyid" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Vertical" 
        style="z-index: 1; left: 16px; top: 286px; position: absolute; height: 666px; width: 569px">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="companyid" HeaderText="companyid" ReadOnly="True" 
                SortExpression="companyid" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                SortExpression="CompanyName" />
            <asp:BoundField DataField="RegistrationNo" HeaderText="RegistrationNo" 
                SortExpression="RegistrationNo" />
            <asp:BoundField DataField="Functionality" HeaderText="Functionality" 
                SortExpression="Functionality" />
            <asp:BoundField DataField="OpeningDate" HeaderText="OpeningDate" 
                SortExpression="OpeningDate" />
            <asp:BoundField DataField="Specialization" HeaderText="Specialization" 
                SortExpression="Specialization" />
            <asp:BoundField DataField="NoOfEmployee" HeaderText="NoOfEmployee" 
                SortExpression="NoOfEmployee" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Country" HeaderText="Country" 
                SortExpression="Country" />
            <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" 
                SortExpression="PostalCode" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="CompanyMail" HeaderText="CompanyMail" 
                SortExpression="CompanyMail" />
            <asp:BoundField DataField="companypass" HeaderText="companypass" 
                SortExpression="companypass" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CISConnectionString %>" 
        DeleteCommand="DELETE FROM [company] WHERE [companyid] = @companyid" 
        InsertCommand="INSERT INTO [company] ([companyid], [CompanyName], [RegistrationNo], [Functionality], [OpeningDate], [Specialization], [NoOfEmployee], [Address], [Country], [PostalCode], [State], [CompanyMail], [companypass]) VALUES (@companyid, @CompanyName, @RegistrationNo, @Functionality, @OpeningDate, @Specialization, @NoOfEmployee, @Address, @Country, @PostalCode, @State, @CompanyMail, @companypass)" 
        SelectCommand="SELECT * FROM [company] WHERE ([companyid] = @companyid)" 
        UpdateCommand="UPDATE [company] SET [CompanyName] = @CompanyName, [RegistrationNo] = @RegistrationNo, [Functionality] = @Functionality, [OpeningDate] = @OpeningDate, [Specialization] = @Specialization, [NoOfEmployee] = @NoOfEmployee, [Address] = @Address, [Country] = @Country, [PostalCode] = @PostalCode, [State] = @State, [CompanyMail] = @CompanyMail, [companypass] = @companypass WHERE [companyid] = @companyid">
        <DeleteParameters>
            <asp:Parameter Name="companyid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="companyid" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="RegistrationNo" Type="String" />
            <asp:Parameter Name="Functionality" Type="String" />
            <asp:Parameter Name="OpeningDate" Type="String" />
            <asp:Parameter Name="Specialization" Type="String" />
            <asp:Parameter Name="NoOfEmployee" Type="Int32" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="PostalCode" Type="Int32" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="CompanyMail" Type="String" />
            <asp:Parameter Name="companypass" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="companyid" SessionField="id3" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="RegistrationNo" Type="String" />
            <asp:Parameter Name="Functionality" Type="String" />
            <asp:Parameter Name="OpeningDate" Type="String" />
            <asp:Parameter Name="Specialization" Type="String" />
            <asp:Parameter Name="NoOfEmployee" Type="Int32" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="PostalCode" Type="Int32" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="CompanyMail" Type="String" />
            <asp:Parameter Name="companypass" Type="String" />
            <asp:Parameter Name="companyid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/images/New folder (2)/logout.png" onclick="ImageButton2_Click" 
        style="z-index: 1; left: 1335px; top: 207px; position: absolute; height: 48px; width: 176px" />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
        ForeColor="#CC0099" 
        style="z-index: 1; left: 722px; top: 359px; position: absolute; height: 25px; width: 91px" 
        Text="Job Post"></asp:Label>
    </form>
</body>
</html>
