<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Register.aspx.vb" Inherits="GameStore.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="title2">
        <h1>Register</h1>
    </div>
  

    <div class="login">
                   <br />
           <br />
             <asp:Label ID="regSuccess" runat="server" Text=""></asp:Label>
           <br />
           <br />
        <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Username..."></asp:TextBox>
           <br />
           <br />
        <asp:TextBox ID="TextBox5" runat="server" type="Password" placeholder="Enter Password..."></asp:TextBox>
           <br />
        <br />
           <asp:Button ID="Button1" runat="server" Text="Register" />
        <br />
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [UserId] = @original_UserId AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" InsertCommand="INSERT INTO [User] ([Username], [Password]) VALUES (@Username, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [User]" UpdateCommand="UPDATE [User] SET [Username] = @Username, [Password] = @Password WHERE [UserId] = @original_UserId AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))">
               <DeleteParameters>
                   <asp:Parameter Name="original_UserId" Type="Int32" />
                   <asp:Parameter Name="original_Username" Type="String" />
                   <asp:Parameter Name="original_Password" Type="String" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:ControlParameter ControlID="TextBox4" Name="Username" PropertyName="Text" Type="String" />
                   <asp:ControlParameter ControlID="TextBox5" Name="Password" PropertyName="Text" Type="String" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="Username" Type="String" />
                   <asp:Parameter Name="Password" Type="String" />
                   <asp:Parameter Name="original_UserId" Type="Int32" />
                   <asp:Parameter Name="original_Username" Type="String" />
                   <asp:Parameter Name="original_Password" Type="String" />
               </UpdateParameters>
           </asp:SqlDataSource>
        </div>

</asp:Content>
