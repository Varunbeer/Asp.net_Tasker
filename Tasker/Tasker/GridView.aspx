<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GridView.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="back">
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" PostBackUrl="~/Task.aspx" BorderStyle="Solid">Click Here to Provide Tasks.</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" BorderStyle="Solid" ForeColor="White" PostBackUrl="~/Manage Tasks.aspx">Click Here to Manage Tasks</asp:LinkButton>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" BorderStyle="None" Text="List of Users"></asp:Label>
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email">
        <Columns>
            <asp:TemplateField HeaderText="email" SortExpression="email">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="contactno" HeaderText="contactno" SortExpression="contactno" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="securityquestion" HeaderText="securityquestion" SortExpression="securityquestion" />
            <asp:BoundField DataField="securityanswer" HeaderText="securityanswer" SortExpression="securityanswer" />
            <asp:TemplateField HeaderText="Select">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <asp:Button ID="Button1" CssClass="button-custom" runat="server" Text="Delete" OnClick="Button1_Click" />
    </div>
</asp:Content>

