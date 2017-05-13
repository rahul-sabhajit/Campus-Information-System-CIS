<%@ Page Language="C#" AutoEventWireup="true" CodeFile="College_home.aspx.cs" Inherits="College_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 1185px;
            z-index: 1;
            left: 10px;
            top: 437px;
            position: absolute;
            width: 227px;
        }
    </style>
</head>
<body style="height: 835px; width: 1079px;">
    <form id="form1" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CISConnectionString %>" 
        
        SelectCommand="SELECT [CompanyName], [RegistrationNo], [Functionality], [OpeningDate], [Specialization], [Address], [CompanyMail], [Country], [State], [PostalCode] FROM [company]">
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" 
        DataSourceID="SqlDataSource1" 
        
        style="z-index: 1; left: 50px; top: 100px; position: absolute; height: 3762px; width: 1041px">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">CompanyName:
                <asp:Label ID="CompanyNameLabel" runat="server" 
                    Text='<%# Eval("CompanyName") %>' />
                <br />
                RegistrationNo:
                <asp:Label ID="RegistrationNoLabel" runat="server" 
                    Text='<%# Eval("RegistrationNo") %>' />
                <br />
                Functionality:
                <asp:Label ID="FunctionalityLabel" runat="server" 
                    Text='<%# Eval("Functionality") %>' />
                <br />
                OpeningDate:
                <asp:Label ID="OpeningDateLabel" runat="server" 
                    Text='<%# Eval("OpeningDate") %>' />
                <br />
                Specialization:
                <asp:Label ID="SpecializationLabel" runat="server" 
                    Text='<%# Eval("Specialization") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" 
                    Text='<%# Eval("Address") %>' />
                <br />
                CompanyMail:
                <asp:Label ID="CompanyMailLabel" runat="server" 
                    Text='<%# Eval("CompanyMail") %>' />
                <br />
                Country:
                <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" 
                    Text='<%# Eval("State") %>' />
                <br />
                PostalCode:
                <asp:Label ID="PostalCodeLabel" runat="server" 
                    Text='<%# Eval("PostalCode") %>' />
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C; color: #FFFFFF;">CompanyName:
                <asp:TextBox ID="CompanyNameTextBox" runat="server" 
                    Text='<%# Bind("CompanyName") %>' />
                <br />
                RegistrationNo:
                <asp:TextBox ID="RegistrationNoTextBox" runat="server" 
                    Text='<%# Bind("RegistrationNo") %>' />
                <br />
                Functionality:
                <asp:TextBox ID="FunctionalityTextBox" runat="server" 
                    Text='<%# Bind("Functionality") %>' />
                <br />
                OpeningDate:
                <asp:TextBox ID="OpeningDateTextBox" runat="server" 
                    Text='<%# Bind("OpeningDate") %>' />
                <br />
                Specialization:
                <asp:TextBox ID="SpecializationTextBox" runat="server" 
                    Text='<%# Bind("Specialization") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" 
                    Text='<%# Bind("Address") %>' />
                <br />
                CompanyMail:
                <asp:TextBox ID="CompanyMailTextBox" runat="server" 
                    Text='<%# Bind("CompanyMail") %>' />
                <br />
                Country:
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                <br />
                State:
                <asp:TextBox ID="StateTextBox" runat="server" 
                    Text='<%# Bind("State") %>' />
                <br />
                PostalCode:
                <asp:TextBox ID="PostalCodeTextBox" runat="server" 
                    Text='<%# Bind("PostalCode") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">CompanyName:
                <asp:TextBox ID="CompanyNameTextBox" runat="server" 
                    Text='<%# Bind("CompanyName") %>' />
                <br />RegistrationNo:
                <asp:TextBox ID="RegistrationNoTextBox" runat="server" 
                    Text='<%# Bind("RegistrationNo") %>' />
                <br />Functionality:
                <asp:TextBox ID="FunctionalityTextBox" runat="server" 
                    Text='<%# Bind("Functionality") %>' />
                <br />OpeningDate:
                <asp:TextBox ID="OpeningDateTextBox" runat="server" 
                    Text='<%# Bind("OpeningDate") %>' />
                <br />Specialization:
                <asp:TextBox ID="SpecializationTextBox" runat="server" 
                    Text='<%# Bind("Specialization") %>' />
                <br />Address:
                <asp:TextBox ID="AddressTextBox" runat="server" 
                    Text='<%# Bind("Address") %>' />
                <br />CompanyMail:
                <asp:TextBox ID="CompanyMailTextBox" runat="server" 
                    Text='<%# Bind("CompanyMail") %>' />
                <br />Country:
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                <br />State:
                <asp:TextBox ID="StateTextBox" runat="server" 
                    Text='<%# Bind("State") %>' />
                <br />
                PostalCode:
                <asp:TextBox ID="PostalCodeTextBox" runat="server" 
                    Text='<%# Bind("PostalCode") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
            </li>
        </InsertItemTemplate>
        <itemseparatortemplate>
<br />
        </itemseparatortemplate>
        <ItemTemplate>
            <li style="background-color: #DCDCDC; color: #000000;">CompanyName:
                <asp:Label ID="CompanyNameLabel" runat="server" 
                    Text='<%# Eval("CompanyName") %>' />
                <br />
                RegistrationNo:
                <asp:Label ID="RegistrationNoLabel" runat="server" 
                    Text='<%# Eval("RegistrationNo") %>' />
                <br />
                Functionality:
                <asp:Label ID="FunctionalityLabel" runat="server" 
                    Text='<%# Eval("Functionality") %>' />
                <br />
                OpeningDate:
                <asp:Label ID="OpeningDateLabel" runat="server" 
                    Text='<%# Eval("OpeningDate") %>' />
                <br />
                Specialization:
                <asp:Label ID="SpecializationLabel" runat="server" 
                    Text='<%# Eval("Specialization") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" 
                    Text='<%# Eval("Address") %>' />
                <br />
                CompanyMail:
                <asp:Label ID="CompanyMailLabel" runat="server" 
                    Text='<%# Eval("CompanyMail") %>' />
                <br />
                Country:
                <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" 
                    Text='<%# Eval("State") %>' />
                <br />
                PostalCode:
                <asp:Label ID="PostalCodeLabel" runat="server" 
                    Text='<%# Eval("PostalCode") %>' />
                <br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C; font-weight: bold;color: #FFFFFF;">
                CompanyName:
                <asp:Label ID="CompanyNameLabel" runat="server" 
                    Text='<%# Eval("CompanyName") %>' />
                <br />
                RegistrationNo:
                <asp:Label ID="RegistrationNoLabel" runat="server" 
                    Text='<%# Eval("RegistrationNo") %>' />
                <br />
                Functionality:
                <asp:Label ID="FunctionalityLabel" runat="server" 
                    Text='<%# Eval("Functionality") %>' />
                <br />
                OpeningDate:
                <asp:Label ID="OpeningDateLabel" runat="server" 
                    Text='<%# Eval("OpeningDate") %>' />
                <br />
                Specialization:
                <asp:Label ID="SpecializationLabel" runat="server" 
                    Text='<%# Eval("Specialization") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" 
                    Text='<%# Eval("Address") %>' />
                <br />
                CompanyMail:
                <asp:Label ID="CompanyMailLabel" runat="server" 
                    Text='<%# Eval("CompanyMail") %>' />
                <br />
                Country:
                <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" 
                    Text='<%# Eval("State") %>' />
                <br />
                PostalCode:
                <asp:Label ID="PostalCodeLabel" runat="server" 
                    Text='<%# Eval("PostalCode") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:Label ID="Label10" runat="server" ForeColor="#CC0099" 
        style="z-index: 1; left: 329px; top: -25px; position: absolute" 
        Text="Welcome" Font-Bold="True"></asp:Label>
    <asp:Label ID="collegeid" runat="server" 
        
        style="z-index: 1; left: 398px; top: -24px; position: absolute; width: 112px;" 
        Text="Label" Font-Bold="True" Font-Italic="True"></asp:Label>
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="collegeid" DataSourceID="SqlDataSource2" 
        GridLines="Horizontal" 
        style="z-index: 1; left: 321px; top: 2px; position: absolute; height: 647px; width: 419px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
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
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
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
            <asp:SessionParameter Name="collegeid" SessionField="id2" Type="String" />
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
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/New folder (2)/books2.jpg" 
        style="z-index: 1; left: -10px; top: -434px; position: absolute; height: 264px; width: 1513px; margin-left: 0px" />
    <asp:Label ID="Label11" runat="server" ForeColor="#CC0099" 
        style="z-index: 1; left: 8px; top: -32px; position: absolute" 
        Text="Companies Overview" Font-Bold="True"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="studentid" DataSourceID="SqlDataSource3" 
        style="z-index: 1; left: 833px; top: 6px; position: absolute; height: 133px; width: 369px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="collegeid" HeaderText="collegeid" 
                SortExpression="collegeid" />
            <asp:BoundField DataField="studentid" HeaderText="studentid" ReadOnly="True" 
                SortExpression="studentid" />
            <asp:BoundField DataField="Contact" HeaderText="Contact" 
                SortExpression="Contact" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CISConnectionString %>" 
        SelectCommand="SELECT [FirstName], [LastName], [Gender], [collegeid], [studentid], [Contact], [Email] FROM [student] WHERE ([collegeid] = @collegeid)">
        <SelectParameters>
            <asp:SessionParameter Name="collegeid" SessionField="id2" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="studentid" DataSourceID="SqlDataSource4" 
        
        style="z-index: 1; left: 834px; top: 163px; position: absolute; height: 1025px; width: 462px">
        <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
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
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CISConnectionString %>" 
        SelectCommand="SELECT * FROM [student] WHERE ([studentid] = @studentid)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="studentid" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label12" runat="server" ForeColor="#CC0099" 
        style="z-index: 1; left: 843px; top: -19px; position: absolute; width: 157px; height: 17px" 
        Text="Student Summery" Font-Bold="True"></asp:Label>
    
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/images/New folder (2)/logout.png" onclick="ImageButton2_Click" 
        style="z-index: 1; left: -9px; top: -165px; position: absolute; height: 44px; width: 160px" />
    
    </form>
</body>
</html>
