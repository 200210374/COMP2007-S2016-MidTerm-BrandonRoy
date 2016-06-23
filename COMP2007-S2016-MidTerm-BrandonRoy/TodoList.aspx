<%@ Page Title="Todo List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TodoList.aspx.cs" Inherits="COMP2007_S2016_MidTerm_BrandonRoy.TodoList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     


            <asp:Button  CssClass="btn btn-success btn-lg" ID="AddTodo" Text="Add Todo" OnClick="todoRedirect" runat="server" Width="113px"/>

    <!--this is a gridview to show data from the database-->
    <h1>Todo List</h1>
        <asp:GridView ID="todoGridview" runat="server" AutoGenerateColumns="False" DataKeyNames="TodoID" DataSourceID="SqlDataSource1">
        
            <Columns>
                
                <asp:BoundField DataField="TodoID" HeaderText="TodoID" ReadOnly="True" SortExpression="TodoID" InsertVisible="False" />
                <asp:BoundField DataField="TodoName" HeaderText="TodoName" SortExpression="TodoName" />
                <asp:BoundField DataField="TodoNotes" HeaderText="TodoNotes" SortExpression="TodoNotes" />
                <asp:CheckBoxField DataField="Completed" HeaderText="Completed" SortExpression="Completed" />
                
                <asp:TemplateField HeaderText="Edit">
            <ItemTemplate>
                <asp:LinkButton id="Edit"
                    runat="server"
                             
                           CommandName="Edit"
                    Text="Edit"  />
               

                </ItemTemplate>
                    </asp:TemplateField>

                 <asp:TemplateField HeaderText="Delete">
            <ItemTemplate>

                <asp:LinkButton ID="Delete" runat="server" CommandName="Delete"  Text="Delete"   />

                </ItemTemplate>
                    </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:comp2007ConnectionString %>" SelectCommand="SELECT * FROM [Todos]"></asp:SqlDataSource>
   


</asp:Content>
