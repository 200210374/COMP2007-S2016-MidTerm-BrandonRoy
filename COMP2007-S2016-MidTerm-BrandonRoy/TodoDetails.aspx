<%@ Page Title="Todo Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TodoDetails.aspx.cs" Inherits="COMP2007_S2016_MidTerm_BrandonRoy.TodoDetails" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     

    <asp:Label ID="todoNameLabel" runat="server" Text="Label">todo name</asp:Label>
    <asp:TextBox ID="todoNametextBox" runat="server"></asp:TextBox>


    <asp:Label ID="todoNotesLabel" runat="server" Text="Label">Todo Notes</asp:Label>
    <asp:TextBox ID="todoNotesTextBox" runat="server"></asp:TextBox>

</asp:Content>
