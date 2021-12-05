<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="back">
    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
    <br />
    <asp:TextBox class="input" ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <br />
    <asp:TextBox class="input" ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <br />
    <br />
    <asp:Button class="button-custom" ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" Height="50px" />
    <br />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/forgetpassword.aspx" ForeColor="White">Forgot Password ?</asp:LinkButton>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server"></asp:Label>
        </div>
</asp:Content>

