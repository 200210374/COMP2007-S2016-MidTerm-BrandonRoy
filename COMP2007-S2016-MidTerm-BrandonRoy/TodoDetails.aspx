<%@ Page Title="Todo Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TodoDetails.aspx.cs" Inherits="COMP2007_S2016_MidTerm_BrandonRoy.TodoDetails" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     






        
    
    
  <!--Details page shows a general form to submit data to teh database -->


    <h1>Todo Details</h1>
    <asp:Label ID="todoNameLabel" For="todoNamesTextBox" runat="server" Text="Label">todo name</asp:Label>
    <asp:TextBox ID="todoNametextBox" runat="server"></asp:TextBox>


    <asp:Label ID="todoNotesLabel" For="todoNotesTextBox" runat="server" Text="Label">Todo Notes</asp:Label>
    <asp:TextBox ID="todoNotesTextBox" runat="server"></asp:TextBox>


    <asp:Button  CssClass="btn btn-warning btn-lg" ID="cancel" Text="Cancel" runat="server"  UseSubmitBehavior="false" CausesValidation="false"/>


                   <asp:Button  CssClass="btn btn-primary btn-lg" href="Default" ID="SubmitButton" Text="Submit" OnClick="SaveButton" runat="server" />
    <asp:Label ID="checkboxlabel" For="Completed" runat="server">Done</asp:Label>
    <asp:CheckBox ID="Completed" runat="server" />






</asp:Content>
