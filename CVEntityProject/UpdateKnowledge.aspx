<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateKnowledge.aspx.cs" Inherits="CVEntityProject.UpdateKnowledge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Update Knowledge Site</h4>
    <br />
    <%--<asp:Label ID="Label1" runat="server" Text="About Skill"></asp:Label>--%>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Name and Surname"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Education"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Work"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-info" OnClick="Button1_Click" />
</asp:Content>
