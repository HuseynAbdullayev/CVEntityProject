<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MyWorkLife.aspx.cs" Inherits="CVEntityProject.MyWorks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered" style="margin-left: 20px; margin-right: 20px;">
        <tr>
            <td>Name and Surname</td>
            <td>About Education</td>
            <td>About work</td>
            <td>Delete</td>
            <td>Update</td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <th><%#Eval("KNOWLEDGE") %></th>

                    <th><%#Eval("EDUCATION") %></th>

                    <th><%# Eval("WORK")  %></th>

                    <th>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"DeleteKnowledge.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-danger">Delete
                        </asp:HyperLink></th>

                    <th>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"UpdateKnowledge.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-success">Update
                        </asp:HyperLink></th>

                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
    <a href="NewKnowledge.aspx" class="btn btn-primary" style="margin-left: 20px;">Add New Knowledge</a>



</asp:Content>
