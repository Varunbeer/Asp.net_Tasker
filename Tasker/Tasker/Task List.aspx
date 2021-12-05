<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Task List.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="back">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="name" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <li style="background-color: #FFFFFF;color: #284775;">name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                task:
                <asp:Label ID="taskLabel" runat="server" Text='<%# Eval("task") %>' />
                <br />
                details:
                <asp:Label ID="detailsLabel" runat="server" Text='<%# Eval("details") %>' />
                <br />
                duedate:
                <asp:Label ID="duedateLabel" runat="server" Text='<%# Eval("duedate") %>' />
                <br />
                company:
                <asp:Label ID="companyLabel" runat="server" Text='<%# Eval("company") %>' />
                <br />
                comment:
                <asp:Label ID="commentLabel" runat="server" Text='<%# Eval("comment") %>' />
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #999999;">name:
                <asp:Label ID="nameLabel1" runat="server" Text='<%# Eval("name") %>' />
                <br />
                task:
                <asp:TextBox ID="taskTextBox" runat="server" Text='<%# Bind("task") %>' />
                <br />
                details:
                <asp:TextBox ID="detailsTextBox" runat="server" Text='<%# Bind("details") %>' />
                <br />
                duedate:
                <asp:TextBox ID="duedateTextBox" runat="server" Text='<%# Bind("duedate") %>' />
                <br />
                company:
                <asp:TextBox ID="companyTextBox" runat="server" Text='<%# Bind("company") %>' />
                <br />
                comment:
                <asp:TextBox ID="commentTextBox" runat="server" Text='<%# Bind("comment") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                task:
                <asp:TextBox ID="taskTextBox" runat="server" Text='<%# Bind("task") %>' />
                <br />
                details:
                <asp:TextBox ID="detailsTextBox" runat="server" Text='<%# Bind("details") %>' />
                <br />
                duedate:
                <asp:TextBox ID="duedateTextBox" runat="server" Text='<%# Bind("duedate") %>' />
                <br />
                company:
                <asp:TextBox ID="companyTextBox" runat="server" Text='<%# Bind("company") %>' />
                <br />
                comment:
                <asp:TextBox ID="commentTextBox" runat="server" Text='<%# Bind("comment") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
            <br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #E0FFFF;color: #333333;">name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                task:
                <asp:Label ID="taskLabel" runat="server" Text='<%# Eval("task") %>' />
                <br />
                details:
                <asp:Label ID="detailsLabel" runat="server" Text='<%# Eval("details") %>' />
                <br />
                duedate:
                <asp:Label ID="duedateLabel" runat="server" Text='<%# Eval("duedate") %>' />
                <br />
                company:
                <asp:Label ID="companyLabel" runat="server" Text='<%# Eval("company") %>' />
                <br />
                comment:
                <asp:Label ID="commentLabel" runat="server" Text='<%# Eval("comment") %>' />
                <br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                task:
                <asp:Label ID="taskLabel" runat="server" Text='<%# Eval("task") %>' />
                <br />
                details:
                <asp:Label ID="detailsLabel" runat="server" Text='<%# Eval("details") %>' />
                <br />
                duedate:
                <asp:Label ID="duedateLabel" runat="server" Text='<%# Eval("duedate") %>' />
                <br />
                company:
                <asp:Label ID="companyLabel" runat="server" Text='<%# Eval("company") %>' />
                <br />
                comment:
                <asp:Label ID="commentLabel" runat="server" Text='<%# Eval("comment") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tasks]"></asp:SqlDataSource>
    <br />
    </div>
</asp:Content>

