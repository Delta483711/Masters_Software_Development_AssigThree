<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Basket.aspx.vb" Inherits="GameStore.Basket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <div class="title2">
        <h1>Checkout</h1>
             <p>
                 <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
             </p>
    </div>

        <div class="basket">

            <br/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="BasketId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="BasketId" HeaderText="Basket ID" InsertVisible="False" ReadOnly="True" SortExpression="BasketId" />
                    <asp:BoundField DataField="GameId" HeaderText="Game ID" SortExpression="GameId" />
                    <asp:BoundField DataField="GameName" HeaderText="Game Name" SortExpression="GameName" />
                    <asp:BoundField DataField="GamePrice" HeaderText="Game Price" SortExpression="GamePrice" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Basket] WHERE [BasketId] = @original_BasketId AND (([GameId] = @original_GameId) OR ([GameId] IS NULL AND @original_GameId IS NULL)) AND (([GameName] = @original_GameName) OR ([GameName] IS NULL AND @original_GameName IS NULL)) AND (([GamePrice] = @original_GamePrice) OR ([GamePrice] IS NULL AND @original_GamePrice IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL))" InsertCommand="INSERT INTO [Basket] ([GameId], [GameName], [GamePrice], [Username]) VALUES (@GameId, @GameName, @GamePrice, @Username)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Basket] WHERE ([Username] = @Username)" UpdateCommand="UPDATE [Basket] SET [GameId] = @GameId, [GameName] = @GameName, [GamePrice] = @GamePrice, [Username] = @Username WHERE [BasketId] = @original_BasketId AND (([GameId] = @original_GameId) OR ([GameId] IS NULL AND @original_GameId IS NULL)) AND (([GameName] = @original_GameName) OR ([GameName] IS NULL AND @original_GameName IS NULL)) AND (([GamePrice] = @original_GamePrice) OR ([GamePrice] IS NULL AND @original_GamePrice IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_BasketId" Type="Int32" />
                    <asp:Parameter Name="original_GameId" Type="Int32" />
                    <asp:Parameter Name="original_GameName" Type="String" />
                    <asp:Parameter Name="original_GamePrice" Type="Double" />
                    <asp:Parameter Name="original_Username" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="GameId" Type="Int32" />
                    <asp:Parameter Name="GameName" Type="String" />
                    <asp:Parameter Name="GamePrice" Type="Double" />
                    <asp:Parameter Name="Username" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="Username" SessionField="Username" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="GameId" Type="Int32" />
                    <asp:Parameter Name="GameName" Type="String" />
                    <asp:Parameter Name="GamePrice" Type="Double" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="original_BasketId" Type="Int32" />
                    <asp:Parameter Name="original_GameId" Type="Int32" />
                    <asp:Parameter Name="original_GameName" Type="String" />
                    <asp:Parameter Name="original_GamePrice" Type="Double" />
                    <asp:Parameter Name="original_Username" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br/> 
            <asp:Button ID="Button2" runat="server" Text="Complete Checkout" />
       </div>
    
</asp:Content>
