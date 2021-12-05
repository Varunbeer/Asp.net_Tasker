<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="My Tasks.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="back">
    <br />Welcome :
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
<br />
    <br />
    Your Task:
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
<br />
<br />
Task Details:
<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
<br />
<br />
Last Date:
<asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Comment:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" CssClass="input" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="button-custom" OnClick="Button1_Click" Text="Add Comment" />
    <br />
    <br />
    </div>
    </asp:Content>

