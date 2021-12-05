<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="back">
    <asp:Label runat="server" Text="Email"></asp:Label>
    <br />
    <asp:TextBox CssClass="input" ID="TextBox1" runat="server"></asp:TextBox>
        <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
    <br />
    <asp:TextBox CssClass="input" ID="TextBox2" runat="server"></asp:TextBox>
        <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Confirm Password"></asp:Label>
    <br />
    <asp:TextBox CssClass="input" ID="TextBox3" runat="server"></asp:TextBox>
        <br />
    <br />
    <asp:Button CssClass="button-custom" ID="Button1" runat="server" Text="Change Password" OnClick="Button1_Click" />
    <br />
        </div>
</asp:Content>

