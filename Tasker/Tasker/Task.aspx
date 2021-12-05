
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Task.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="back">
    <asp:Label ID="Label1" runat="server" Text="Enter Name To Whom You Want To Provide Task "></asp:Label>
    <br />
    <asp:TextBox CssClass="input" ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Cannot Be Empty"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Company Name"></asp:Label>
        <br />
        <asp:TextBox CssClass="input" ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Cannot Be Empty"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Task Name"></asp:Label>
    <br />
    <asp:TextBox CssClass="input" ID="TextBox2" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Cannot Be Empty"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Task Details"></asp:Label>
    <br />
    <asp:TextBox CssClass="input" ID="TextBox3" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Cannot Be Empty"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Due Date"></asp:Label>
    <br />
    <asp:TextBox CssClass="input" ID="TextBox4" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Cannot Be Empty"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button CssClass="button-custom" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </div>
</asp:Content>

