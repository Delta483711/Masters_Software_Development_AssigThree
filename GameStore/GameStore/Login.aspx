<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Login.aspx.vb" Inherits="GameStore.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="title2">
        <h1>Login </h1>
    </div>

    <div class="login">
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Username..."></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Password..." Type="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login"/>
        <br />
        <p>Don't have an account, <a href="Register.aspx"> Regiester Here</a> </p>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User] WHERE (([Username] = @Username) AND ([Password] = @Password))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Username" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="Password" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" Visible="False">
            <Columns>
                <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
        </asp:GridView>
        <br />

</asp:Content>
