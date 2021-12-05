<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="back">
        Welcome
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" PostBackUrl="~/My Tasks.aspx" BorderStyle="Solid">Click Here To View Your Task</asp:LinkButton>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
        <br />
        <asp:TextBox CssClass="input" ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
        <br />
        <asp:TextBox CssClass="input" ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
        <br />
        <asp:TextBox CssClass="input" ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
        <br />
        <br />
        <asp:Button CssClass="button-custom" ID="Button1" runat="server" Text="update" OnClick="Button1_Click" />
        <asp:Button CssClass="button-custom" ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" />
        <asp:Button CssClass="button-custom" ID="Button3" runat="server" Text="Logout" OnClick="Button3_Click" />
        <br />
        <br />
        </div>
</asp:Content>

