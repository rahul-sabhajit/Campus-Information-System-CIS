<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/New folder (2)/books2.jpg" PostBackUrl="~/Default.aspx" 
        
        style="z-index: 1; left: 2px; top: 3px; position: absolute; height: 232px; width: 1704px" />
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/images/New folder (2)/studenticon.jpg" onclick="ImageButton2_Click" 
        
        
        style="z-index: 1; left: 10px; top: 347px; position: absolute; height: 241px; width: 275px" />
    <asp:ImageButton ID="ImageButton3" runat="server" 
        ImageUrl="~/images/New folder (2)/university-icon.gif" 
        onclick="ImageButton3_Click" 
        
        style="z-index: 1; left: 429px; top: 366px; position: absolute; height: 220px; width: 284px" />
    <asp:ImageButton ID="ImageButton4" runat="server" 
        ImageUrl="~/images/New folder (2)/companyicon.jpg" onclick="ImageButton4_Click" 
        
        style="z-index: 1; left: 868px; top: 342px; position: absolute; height: 238px; width: 324px" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="studentid" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" 
        style="z-index: 1; left: 1232px; top: 393px; position: absolute; height: 133px; width: 269px" 
        Visible="False">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="studentid" HeaderText="studentid" 
                SortExpression="studentid" ReadOnly="True" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CISConnectionString %>" 
        SelectCommand="SELECT [studentid], [FirstName], [LastName] FROM [student]">
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="studentid" DataSourceID="SqlDataSource2" 
        GridLines="Horizontal" 
        
        
        style="z-index: 1; left: 39px; top: 621px; position: absolute; height: 1172px; width: 273px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <Fields>
            <asp:BoundField DataField="studentid" HeaderText="studentid" ReadOnly="True" 
                SortExpression="studentid" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" 
                SortExpression="MiddleName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="fatherName" HeaderText="fatherName" 
                SortExpression="fatherName" />
            <asp:BoundField DataField="MotherName" HeaderText="MotherName" 
                SortExpression="MotherName" />
            <asp:BoundField DataField="Contact" HeaderText="Contact" 
                SortExpression="Contact" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
            <asp:BoundField DataField="MasterDegree" HeaderText="MasterDegree" 
                SortExpression="MasterDegree" />
            <asp:BoundField DataField="MasterCollege" HeaderText="MasterCollege" 
                SortExpression="MasterCollege" />
            <asp:BoundField DataField="MasterPassingYear" HeaderText="MasterPassingYear" 
                SortExpression="MasterPassingYear" />
            <asp:BoundField DataField="MasterPercentage" HeaderText="MasterPercentage" 
                SortExpression="MasterPercentage" />
            <asp:BoundField DataField="BechlorDegree" HeaderText="BechlorDegree" 
                SortExpression="BechlorDegree" />
            <asp:BoundField DataField="BechlorCollege" HeaderText="BechlorCollege" 
                SortExpression="BechlorCollege" />
            <asp:BoundField DataField="BechlorPassingYear" HeaderText="BechlorPassingYear" 
                SortExpression="BechlorPassingYear" />
            <asp:BoundField DataField="BechlorPercentage" HeaderText="BechlorPercentage" 
                SortExpression="BechlorPercentage" />
            <asp:BoundField DataField="InterCollegeName" HeaderText="InterCollegeName" 
                SortExpression="InterCollegeName" />
            <asp:BoundField DataField="InterBoard" HeaderText="InterBoard" 
                SortExpression="InterBoard" />
            <asp:BoundField DataField="InterPercentage" HeaderText="InterPercentage" 
                SortExpression="InterPercentage" />
            <asp:BoundField DataField="InterPassingYear" HeaderText="InterPassingYear" 
                SortExpression="InterPassingYear" />
            <asp:BoundField DataField="HighSchoolCollege" HeaderText="HighSchoolCollege" 
                SortExpression="HighSchoolCollege" />
            <asp:BoundField DataField="HighSchoolBoard" HeaderText="HighSchoolBoard" 
                SortExpression="HighSchoolBoard" />
            <asp:BoundField DataField="HighSchoolPercentage" 
                HeaderText="HighSchoolPercentage" SortExpression="HighSchoolPercentage" />
            <asp:BoundField DataField="HighSchoolPassingYear" 
                HeaderText="HighSchoolPassingYear" SortExpression="HighSchoolPassingYear" />
            <asp:BoundField DataField="uimg" HeaderText="uimg" SortExpression="uimg" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CISConnectionString %>" 
        DeleteCommand="DELETE FROM [student] WHERE [studentid] = @studentid" 
        InsertCommand="INSERT INTO [student] ([studentid], [FirstName], [MiddleName], [LastName], [Email], [fatherName], [MotherName], [Contact], [Address], [Gender], [DOB], [pass], [MasterDegree], [MasterCollege], [MasterPassingYear], [MasterPercentage], [BechlorDegree], [BechlorCollege], [BechlorPassingYear], [BechlorPercentage], [InterCollegeName], [InterBoard], [InterPercentage], [InterPassingYear], [HighSchoolCollege], [HighSchoolBoard], [HighSchoolPercentage], [HighSchoolPassingYear], [uimg]) VALUES (@studentid, @FirstName, @MiddleName, @LastName, @Email, @fatherName, @MotherName, @Contact, @Address, @Gender, @DOB, @pass, @MasterDegree, @MasterCollege, @MasterPassingYear, @MasterPercentage, @BechlorDegree, @BechlorCollege, @BechlorPassingYear, @BechlorPercentage, @InterCollegeName, @InterBoard, @InterPercentage, @InterPassingYear, @HighSchoolCollege, @HighSchoolBoard, @HighSchoolPercentage, @HighSchoolPassingYear, @uimg)" 
        SelectCommand="SELECT * FROM [student] WHERE ([studentid] = @studentid)" 
        
        UpdateCommand="UPDATE [student] SET [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [Email] = @Email, [fatherName] = @fatherName, [MotherName] = @MotherName, [Contact] = @Contact, [Address] = @Address, [Gender] = @Gender, [DOB] = @DOB, [pass] = @pass, [MasterDegree] = @MasterDegree, [MasterCollege] = @MasterCollege, [MasterPassingYear] = @MasterPassingYear, [MasterPercentage] = @MasterPercentage, [BechlorDegree] = @BechlorDegree, [BechlorCollege] = @BechlorCollege, [BechlorPassingYear] = @BechlorPassingYear, [BechlorPercentage] = @BechlorPercentage, [InterCollegeName] = @InterCollegeName, [InterBoard] = @InterBoard, [InterPercentage] = @InterPercentage, [InterPassingYear] = @InterPassingYear, [HighSchoolCollege] = @HighSchoolCollege, [HighSchoolBoard] = @HighSchoolBoard, [HighSchoolPercentage] = @HighSchoolPercentage, [HighSchoolPassingYear] = @HighSchoolPassingYear, [uimg] = @uimg WHERE [studentid] = @studentid">
        <DeleteParameters>
            <asp:Parameter Name="studentid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="studentid" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="MiddleName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="fatherName" Type="String" />
            <asp:Parameter Name="MotherName" Type="String" />
            <asp:Parameter Name="Contact" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="DOB" Type="String" />
            <asp:Parameter Name="pass" Type="String" />
            <asp:Parameter Name="MasterDegree" Type="String" />
            <asp:Parameter Name="MasterCollege" Type="String" />
            <asp:Parameter Name="MasterPassingYear" Type="Int32" />
            <asp:Parameter Name="MasterPercentage" Type="String" />
            <asp:Parameter Name="BechlorDegree" Type="String" />
            <asp:Parameter Name="BechlorCollege" Type="String" />
            <asp:Parameter Name="BechlorPassingYear" Type="Int32" />
            <asp:Parameter Name="BechlorPercentage" Type="String" />
            <asp:Parameter Name="InterCollegeName" Type="String" />
            <asp:Parameter Name="InterBoard" Type="String" />
            <asp:Parameter Name="InterPercentage" Type="String" />
            <asp:Parameter Name="InterPassingYear" Type="Int32" />
            <asp:Parameter Name="HighSchoolCollege" Type="String" />
            <asp:Parameter Name="HighSchoolBoard" Type="String" />
            <asp:Parameter Name="HighSchoolPercentage" Type="String" />
            <asp:Parameter Name="HighSchoolPassingYear" Type="Int32" />
            <asp:Parameter Name="uimg" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="studentid" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="MiddleName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="fatherName" Type="String" />
            <asp:Parameter Name="MotherName" Type="String" />
            <asp:Parameter Name="Contact" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="DOB" Type="String" />
            <asp:Parameter Name="pass" Type="String" />
            <asp:Parameter Name="MasterDegree" Type="String" />
            <asp:Parameter Name="MasterCollege" Type="String" />
            <asp:Parameter Name="MasterPassingYear" Type="Int32" />
            <asp:Parameter Name="MasterPercentage" Type="String" />
            <asp:Parameter Name="BechlorDegree" Type="String" />
            <asp:Parameter Name="BechlorCollege" Type="String" />
            <asp:Parameter Name="BechlorPassingYear" Type="Int32" />
            <asp:Parameter Name="BechlorPercentage" Type="String" />
            <asp:Parameter Name="InterCollegeName" Type="String" />
            <asp:Parameter Name="InterBoard" Type="String" />
            <asp:Parameter Name="InterPercentage" Type="String" />
            <asp:Parameter Name="InterPassingYear" Type="Int32" />
            <asp:Parameter Name="HighSchoolCollege" Type="String" />
            <asp:Parameter Name="HighSchoolBoard" Type="String" />
            <asp:Parameter Name="HighSchoolPercentage" Type="String" />
            <asp:Parameter Name="HighSchoolPassingYear" Type="Int32" />
            <asp:Parameter Name="uimg" Type="String" />
            <asp:Parameter Name="studentid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" DataKeyNames="collegeid" DataSourceID="SqlDataSource3" 
        ForeColor="Black" GridLines="None" 
        style="z-index: 1; left: 1235px; top: 397px; position: absolute; height: 133px; width: 267px" 
        Visible="False">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="collegeid" HeaderText="collegeid" ReadOnly="True" 
                SortExpression="collegeid" />
            <asp:BoundField DataField="CollegeName" HeaderText="CollegeName" 
                SortExpression="CollegeName" />
            <asp:BoundField DataField="RegistrationNo" HeaderText="RegistrationNo" 
                SortExpression="RegistrationNo" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CISConnectionString %>" 
        
        SelectCommand="SELECT [collegeid], [CollegeName], [RegistrationNo] FROM [college]">
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="collegeid" DataSourceID="SqlDataSource4" 
        
        
        style="z-index: 1; left: 444px; top: 620px; position: absolute; height: 570px; width: 259px">
        <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="collegeid" HeaderText="collegeid" ReadOnly="True" 
                SortExpression="collegeid" />
            <asp:BoundField DataField="CollegeName" HeaderText="CollegeName" 
                SortExpression="CollegeName" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Country" HeaderText="Country" 
                SortExpression="Country" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" 
                SortExpression="PostalCode" />
            <asp:BoundField DataField="RegistrationNo" HeaderText="RegistrationNo" 
                SortExpression="RegistrationNo" />
            <asp:BoundField DataField="OpeningDate" HeaderText="OpeningDate" 
                SortExpression="OpeningDate" />
            <asp:BoundField DataField="CollegeMail" HeaderText="CollegeMail" 
                SortExpression="CollegeMail" />
            <asp:BoundField DataField="collegepass" HeaderText="collegepass" 
                SortExpression="collegepass" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CISConnectionString %>" 
        DeleteCommand="DELETE FROM [college] WHERE [collegeid] = @collegeid" 
        InsertCommand="INSERT INTO [college] ([collegeid], [CollegeName], [Address], [Country], [State], [PostalCode], [RegistrationNo], [OpeningDate], [CollegeMail], [collegepass]) VALUES (@collegeid, @CollegeName, @Address, @Country, @State, @PostalCode, @RegistrationNo, @OpeningDate, @CollegeMail, @collegepass)" 
        SelectCommand="SELECT * FROM [college] WHERE ([collegeid] = @collegeid)" 
        
        UpdateCommand="UPDATE [college] SET [CollegeName] = @CollegeName, [Address] = @Address, [Country] = @Country, [State] = @State, [PostalCode] = @PostalCode, [RegistrationNo] = @RegistrationNo, [OpeningDate] = @OpeningDate, [CollegeMail] = @CollegeMail, [collegepass] = @collegepass WHERE [collegeid] = @collegeid">
        <DeleteParameters>
            <asp:Parameter Name="collegeid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="collegeid" Type="String" />
            <asp:Parameter Name="CollegeName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="PostalCode" Type="Int32" />
            <asp:Parameter Name="RegistrationNo" Type="String" />
            <asp:Parameter Name="OpeningDate" Type="String" />
            <asp:Parameter Name="CollegeMail" Type="String" />
            <asp:Parameter Name="collegepass" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView2" Name="collegeid" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CollegeName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="PostalCode" Type="Int32" />
            <asp:Parameter Name="RegistrationNo" Type="String" />
            <asp:Parameter Name="OpeningDate" Type="String" />
            <asp:Parameter Name="CollegeMail" Type="String" />
            <asp:Parameter Name="collegepass" Type="String" />
            <asp:Parameter Name="collegeid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="companyid" DataSourceID="SqlDataSource5" 
        GridLines="Horizontal" 
        style="z-index: 1; left: 1236px; top: 392px; position: absolute; height: 133px; width: 283px" 
        Visible="False">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="companyid" HeaderText="companyid" ReadOnly="True" 
                SortExpression="companyid" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                SortExpression="CompanyName" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CISConnectionString %>" 
        SelectCommand="SELECT [companyid], [CompanyName] FROM [company]">
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="companyid" 
        DataSourceID="SqlDataSource6" 
        
        
        style="z-index: 1; left: 948px; top: 628px; position: absolute; height: 691px; width: 275px">
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
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
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
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
            <asp:ControlParameter ControlID="GridView3" Name="companyid" 
                PropertyName="SelectedValue" Type="String" />
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
    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red" 
        style="z-index: 1; left: 57px; top: 594px; position: absolute" 
        Text="Student Detail"></asp:Label>
    <asp:ImageButton ID="ImageButton7" runat="server" 
        ImageUrl="~/images/New folder (2)/logout.png" onclick="ImageButton7_Click" 
        style="z-index: 1; left: 535px; top: 235px; position: absolute; height: 46px; width: 174px" />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Blue" 
        style="z-index: 1; left: 104px; top: 271px; position: absolute" 
        Text="Mailing System"></asp:Label>
    <asp:ImageButton ID="ImageButton6" runat="server" 
        ImageUrl="~/images/New folder (2)/homemail.png" 
        PostBackUrl="~/email_system.aspx" 
        style="z-index: 1; left: 5px; top: 245px; position: absolute; height: 86px" />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Red" 
        style="z-index: 1; left: 990px; top: 597px; position: absolute" 
        Text="Company Detail"></asp:Label>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" 
        style="z-index: 1; left: 472px; top: 596px; position: absolute" 
        Text="College Detail"></asp:Label>
    <asp:Label ID="Label1" runat="server" 
        
        style="z-index: 1; left: 1252px; top: 356px; position: absolute; height: 19px; width: 200px;" Text="Label" 
        Visible="False" Font-Bold="True" ForeColor="#CC00FF"></asp:Label>
    <asp:ImageButton ID="ImageButton5" runat="server" 
        ImageUrl="~/images/New folder (2)/jobpost.jpg" PostBackUrl="~/jobpost.aspx" 
        style="z-index: 1; left: 1278px; top: 255px; position: absolute; height: 69px; width: 233px" />
    </form>
</body>
</html>
