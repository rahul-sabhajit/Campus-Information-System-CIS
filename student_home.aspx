<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_home.aspx.cs" Inherits="student_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 12px">
    
        <asp:Label ID="student_name" runat="server" 
            
            style="z-index: 1; left: 669px; top: 366px; position: absolute; height: 19px; width: 172px;" 
            Text="Label" ForeColor="Blue" Font-Bold="True"></asp:Label>
    
        <asp:DetailsView ID="DetailsView1" runat="server" 
            AutoGenerateRows="False" DataKeyNames="studentid" 
            DataSourceID="SqlDataSource1" 
            
            
            
            style="z-index: 1; left: 587px; top: 393px; position: absolute; height: 967px; width: 767px" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="studentid" HeaderText="studentid" ReadOnly="True" 
                    SortExpression="studentid" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                    SortExpression="FirstName" />
                <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" 
                    SortExpression="MiddleName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" 
                    SortExpression="LastName" />
                <asp:BoundField DataField="Email" HeaderText="Email" 
                    SortExpression="Email" />
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
                <asp:BoundField DataField="DOB" HeaderText="DOB" 
                    SortExpression="DOB" />
                <asp:BoundField DataField="pass" HeaderText="pass" 
                    SortExpression="pass" />
                <asp:BoundField DataField="collegeid" HeaderText="collegeid" 
                    SortExpression="collegeid" />
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
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CISConnectionString %>" 
            SelectCommand="SELECT * FROM [student] WHERE ([studentid] = @studentid)" 
            DeleteCommand="DELETE FROM [student] WHERE [studentid] = @studentid" 
            InsertCommand="INSERT INTO [student] ([studentid], [FirstName], [MiddleName], [LastName], [Email], [fatherName], [MotherName], [Contact], [Address], [Gender], [DOB], [pass], [collegeid], [MasterDegree], [MasterCollege], [MasterPassingYear], [MasterPercentage], [BechlorDegree], [BechlorCollege], [BechlorPassingYear], [BechlorPercentage], [InterCollegeName], [InterBoard], [InterPercentage], [InterPassingYear], [HighSchoolCollege], [HighSchoolBoard], [HighSchoolPercentage], [HighSchoolPassingYear], [uimg]) VALUES (@studentid, @FirstName, @MiddleName, @LastName, @Email, @fatherName, @MotherName, @Contact, @Address, @Gender, @DOB, @pass, @collegeid, @MasterDegree, @MasterCollege, @MasterPassingYear, @MasterPercentage, @BechlorDegree, @BechlorCollege, @BechlorPassingYear, @BechlorPercentage, @InterCollegeName, @InterBoard, @InterPercentage, @InterPassingYear, @HighSchoolCollege, @HighSchoolBoard, @HighSchoolPercentage, @HighSchoolPassingYear, @uimg)" 
            
            UpdateCommand="UPDATE [student] SET [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [Email] = @Email, [fatherName] = @fatherName, [MotherName] = @MotherName, [Contact] = @Contact, [Address] = @Address, [Gender] = @Gender, [DOB] = @DOB, [pass] = @pass, [collegeid] = @collegeid, [MasterDegree] = @MasterDegree, [MasterCollege] = @MasterCollege, [MasterPassingYear] = @MasterPassingYear, [MasterPercentage] = @MasterPercentage, [BechlorDegree] = @BechlorDegree, [BechlorCollege] = @BechlorCollege, [BechlorPassingYear] = @BechlorPassingYear, [BechlorPercentage] = @BechlorPercentage, [InterCollegeName] = @InterCollegeName, [InterBoard] = @InterBoard, [InterPercentage] = @InterPercentage, [InterPassingYear] = @InterPassingYear, [HighSchoolCollege] = @HighSchoolCollege, [HighSchoolBoard] = @HighSchoolBoard, [HighSchoolPercentage] = @HighSchoolPercentage, [HighSchoolPassingYear] = @HighSchoolPassingYear, [uimg] = @uimg WHERE [studentid] = @studentid">
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
                <asp:Parameter Name="collegeid" Type="String" />
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
                <asp:SessionParameter Name="studentid" SessionField="id" Type="String" />
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
                <asp:Parameter Name="collegeid" Type="String" />
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
    
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/images/New folder (2)/books2.jpg" 
            style="z-index: 1; left: 4px; top: 3px; position: absolute; height: 228px; width: 1519px" />
    
    </div>
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 594px; top: 366px; position: absolute; right: 446px;" 
        Text="Welcome " ForeColor="#CC0099" Font-Bold="True"></asp:Label>
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataSourceID="SqlDataSource2" GridLines="Horizontal" 
        style="z-index: 1; left: 10px; top: 388px; position: absolute; height: 63px; width: 471px">
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <ItemTemplate>
            CompanyMail:
            <asp:Label ID="CompanyMailLabel" runat="server" 
                Text='<%# Eval("CompanyMail") %>' />
            <br />
            State:
            <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
            <br />
            CompanyName:
            <asp:Label ID="CompanyNameLabel" runat="server" 
                Text='<%# Eval("CompanyName") %>' />
            <br />
            Functionality:
            <asp:Label ID="FunctionalityLabel" runat="server" 
                Text='<%# Eval("Functionality") %>' />
            <br />
            Specialization:
            <asp:Label ID="SpecializationLabel" runat="server" 
                Text='<%# Eval("Specialization") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CISConnectionString %>" 
        SelectCommand="SELECT [CompanyMail], [State], [CompanyName], [Functionality], [Specialization], [Address], [Country] FROM [company]">
    </asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#00CC99" 
        style="z-index: 1; left: 10px; top: 351px; position: absolute" 
        Text="Companies Details"></asp:Label>
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/images/New folder (2)/logout.png" onclick="ImageButton2_Click" 
        style="z-index: 1; left: 1354px; top: 231px; position: absolute; height: 54px; width: 168px" />
    </form>
</body>
</html>
