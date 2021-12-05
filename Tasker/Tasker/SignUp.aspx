<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="back">
    <asp:Label ID="Label1" CssClass="" runat="server" Text="Username"></asp:Label>
            <br />
    <asp:TextBox  CssClass="input" ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Cannot Be Blank" ForeColor="White"></asp:RequiredFieldValidator>
        <br />
        <br />
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            <br />
    <asp:TextBox CssClass="input" ID="TextBox3" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Enter Correct Email Address" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <br />
        <asp:TextBox CssClass="input" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Cannot Be Blank"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Repeat Password"></asp:Label>
            <br />
        <asp:TextBox CssClass="input" ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox4" ErrorMessage="*Password Does Not Match" ForeColor="White"></asp:CompareValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Contact No."></asp:Label>
            <br />
        <asp:TextBox CssClass="input" ID="TextBox5" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
            <br />
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" Text="Male" />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="Female" />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Security Question"></asp:Label>
            <br />
        <asp:DropDownList CssClass="input" ID="DropDownList1" runat="server">
            <asp:ListItem>what is your fav color</asp:ListItem>
            <asp:ListItem>your childhood name</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Security Answer"></asp:Label>
            <br />
        <asp:TextBox CssClass="input" ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
        <asp:Button CssClass="button-custom" ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign In" />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [signin]"></asp:SqlDataSource>
        </div>
</asp:Content>

