<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="GameList.aspx.vb" Inherits="GameStore.GameList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="title2">
        <h1>List Of Games</h1>
    </div>

    <div class="content">

        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="180px">
            <asp:ListItem>Tekken</asp:ListItem>
            <asp:ListItem>Dragon Ball Z </asp:ListItem>
            <asp:ListItem>Naruto Ultimate Ninja Storm</asp:ListItem>
            <asp:ListItem Value="DMC">Devil May Cry</asp:ListItem>
            <asp:ListItem Value="GOW">God of War</asp:ListItem>
        </asp:DropDownList>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="GameId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="GameId" HeaderText="GameId" InsertVisible="False" ReadOnly="True" SortExpression="GameId" />
                <asp:BoundField DataField="GameName" HeaderText="Game Name" SortExpression="GameName" />
                <asp:ImageField DataImageUrlField="ImageName">
                </asp:ImageField>
                <asp:BoundField DataField="Developer" HeaderText="Developer" SortExpression="Developer" />
                <asp:BoundField DataField="Series" HeaderText="Series" SortExpression="Series" />
                <asp:BoundField DataField="Platform" HeaderText="Platform" SortExpression="Platform" />
                <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" SortExpression="ReleaseDate" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" SelectText="Add To Basket" ButtonType="Button" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Game] WHERE ([Series] = @Series)" DeleteCommand="DELETE FROM [Game] WHERE [GameId] = @original_GameId" InsertCommand="INSERT INTO [Game] ([GameName], [Developer], [Series], [Platform], [ReleaseDate], [Price], [ImageName]) VALUES (@GameName, @Developer, @Series, @Platform, @ReleaseDate, @Price, @ImageName)" UpdateCommand="UPDATE [Game] SET [GameName] = @GameName, [Developer] = @Developer, [Series] = @Series, [Platform] = @Platform, [ReleaseDate] = @ReleaseDate, [Price] = @Price, [ImageName] = @ImageName WHERE [GameId] = @original_GameId">
            <DeleteParameters>
                <asp:Parameter Name="original_GameId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="GameName" Type="String" />
                <asp:Parameter Name="Developer" Type="String" />
                <asp:Parameter Name="Series" Type="String" />
                <asp:Parameter Name="Platform" Type="String" />
                <asp:Parameter Name="ReleaseDate" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="ImageName" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Series" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="GameName" Type="String" />
                <asp:Parameter Name="Developer" Type="String" />
                <asp:Parameter Name="Series" Type="String" />
                <asp:Parameter Name="Platform" Type="String" />
                <asp:Parameter Name="ReleaseDate" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="ImageName" Type="String" />
                <asp:Parameter Name="original_GameId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Basket] WHERE [BasketId] = @original_BasketId AND (([GameId] = @original_GameId) OR ([GameId] IS NULL AND @original_GameId IS NULL)) AND (([GameName] = @original_GameName) OR ([GameName] IS NULL AND @original_GameName IS NULL)) AND (([ImageName] = @original_ImageName) OR ([ImageName] IS NULL AND @original_ImageName IS NULL)) AND (([GamePrice] = @original_GamePrice) OR ([GamePrice] IS NULL AND @original_GamePrice IS NULL))" InsertCommand="INSERT INTO Basket(GameId, GameName, GamePrice, Username) VALUES (@GameId, @GameName, @GamePrice, @Username)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Basket]" UpdateCommand="UPDATE [Basket] SET [GameId] = @GameId, [GameName] = @GameName, [ImageName] = @ImageName, [GamePrice] = @GamePrice WHERE [BasketId] = @original_BasketId AND (([GameId] = @original_GameId) OR ([GameId] IS NULL AND @original_GameId IS NULL)) AND (([GameName] = @original_GameName) OR ([GameName] IS NULL AND @original_GameName IS NULL)) AND (([ImageName] = @original_ImageName) OR ([ImageName] IS NULL AND @original_ImageName IS NULL)) AND (([GamePrice] = @original_GamePrice) OR ([GamePrice] IS NULL AND @original_GamePrice IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_BasketId" Type="Int32" />
                <asp:Parameter Name="original_GameId" Type="Int32" />
                <asp:Parameter Name="original_GameName" Type="String" />
                <asp:Parameter Name="original_ImageName" Type="String" />
                <asp:Parameter Name="original_GamePrice" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:SessionParameter Name="GameId" SessionField="GameId" Type="Int32" />
                <asp:SessionParameter Name="GameName" SessionField="GameName" Type="String" />
                <asp:SessionParameter Name="GamePrice" SessionField="Price" Type="Double" />
                <asp:SessionParameter Name="Username" SessionField="Username" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="GameId" Type="Int32" />
                <asp:Parameter Name="GameName" Type="String" />
                <asp:Parameter Name="ImageName" Type="String" />
                <asp:Parameter Name="GamePrice" Type="Double" />
                <asp:Parameter Name="original_BasketId" Type="Int32" />
                <asp:Parameter Name="original_GameId" Type="Int32" />
                <asp:Parameter Name="original_GameName" Type="String" />
                <asp:Parameter Name="original_ImageName" Type="String" />
                <asp:Parameter Name="original_GamePrice" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    </div>

</asp:Content>
