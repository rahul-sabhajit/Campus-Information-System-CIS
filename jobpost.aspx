<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jobpost.aspx.cs" Inherits="jobpost" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            z-index: 1;
            left: 6px;
            top: 290px;
            position: absolute;
            height: 1957px;
            width: 1529px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
        ForeColor="#CC0099" 
        style="z-index: 1; left: 8px; top: -31px; position: absolute" 
        Text="Current Jobs"></asp:Label>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="CompanyId" 
        DataSourceID="SqlDataSource1" 
        style="z-index: 1; left: 10px; top: 34px; position: absolute; height: 63px; width: 293px">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">CompanyId:
                <asp:Label ID="CompanyIdLabel" runat="server" Text='<%# Eval("CompanyId") %>' />
                <br />
                CompanyName:
                <asp:Label ID="CompanyNameLabel" runat="server" 
                    Text='<%# Eval("CompanyName") %>' />
                <br />
                JobPost:
                <asp:Label ID="JobPostLabel" runat="server" Text='<%# Eval("JobPost") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C;color: #FFFFFF;">CompanyId:
                <asp:Label ID="CompanyIdLabel1" runat="server" 
                    Text='<%# Eval("CompanyId") %>' />
                <br />
                CompanyName:
                <asp:TextBox ID="CompanyNameTextBox" runat="server" 
                    Text='<%# Bind("CompanyName") %>' />
                <br />
                JobPost:
                <asp:TextBox ID="JobPostTextBox" runat="server" Text='<%# Bind("JobPost") %>' />
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
            <li style="">CompanyId:
                <asp:TextBox ID="CompanyIdTextBox" runat="server" 
                    Text='<%# Bind("CompanyId") %>' />
                <br />CompanyName:
                <asp:TextBox ID="CompanyNameTextBox" runat="server" 
                    Text='<%# Bind("CompanyName") %>' />
                <br />JobPost:
                <asp:TextBox ID="JobPostTextBox" runat="server" Text='<%# Bind("JobPost") %>' />
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
            <li style="background-color: #DCDCDC;color: #000000;">CompanyId:
                <asp:Label ID="CompanyIdLabel" runat="server" Text='<%# Eval("CompanyId") %>' />
                <br />
                CompanyName:
                <asp:Label ID="CompanyNameLabel" runat="server" 
                    Text='<%# Eval("CompanyName") %>' />
                <br />
                JobPost:
                <asp:Label ID="JobPostLabel" runat="server" Text='<%# Eval("JobPost") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">CompanyId:
                <asp:Label ID="CompanyIdLabel" runat="server" Text='<%# Eval("CompanyId") %>' />
                <br />
                CompanyName:
                <asp:Label ID="CompanyNameLabel" runat="server" 
                    Text='<%# Eval("CompanyName") %>' />
                <br />
                JobPost:
                <asp:Label ID="JobPostLabel" runat="server" Text='<%# Eval("JobPost") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CISConnectionString %>" 
        DeleteCommand="DELETE FROM [jobpost] WHERE [CompanyId] = @CompanyId" 
        InsertCommand="INSERT INTO [jobpost] ([CompanyId], [CompanyName], [JobPost]) VALUES (@CompanyId, @CompanyName, @JobPost)" 
        SelectCommand="SELECT * FROM [jobpost]" 
        UpdateCommand="UPDATE [jobpost] SET [CompanyName] = @CompanyName, [JobPost] = @JobPost WHERE [CompanyId] = @CompanyId">
        <DeleteParameters>
            <asp:Parameter Name="CompanyId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CompanyId" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="JobPost" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="JobPost" Type="String" />
            <asp:Parameter Name="CompanyId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/New folder (2)/books2.jpg" 
        
        style="z-index: 1; left: -5px; top: -276px; position: absolute; height: 224px; width: 1500px" 
        PostBackUrl="~/admin.aspx" />
    </form>
</body>
</html>
