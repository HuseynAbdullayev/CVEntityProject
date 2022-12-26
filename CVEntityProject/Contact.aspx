<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CVEntityProject.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table class="table table-bordered" style="margin-left:20px; margin-right:20px;">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Mail</th>
            <th>About</th>
            <th>See Message</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ID") %></td>

                    <td><%#Eval("NAME") %></td>

                    <td><%#Eval("MAIL") %></td>

                    <td><%#Eval("ABOUT") %></td>


                     <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"AboutMessage.aspx?ID=" + Eval("ID") %>'
                         CssClass="btn btn-warning" BackColor="#009933">See Message
                        </asp:HyperLink></td>

                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>


</asp:Content>
