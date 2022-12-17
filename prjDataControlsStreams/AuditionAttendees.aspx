<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AuditionAttendees.aspx.cs" Inherits="AuditionAttendees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
     <asp:Panel ID="headerPanel" runat="server" BackColor="Black" Height="80px" HorizontalAlign="Center" Width="1350px">
            <br />
            <asp:Label ID="headerTitleLabel" runat="server" Text="Alpha Music" Font-Names="Bernard MT Condensed" Font-Size="XX-Large" ForeColor="White"></asp:Label>
     </asp:Panel>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="westPanel" runat="server" style="z-index: 1; left: 8px; top: 98px; position: absolute; height: 351px; width: 232px" BorderStyle="Solid" Width="232px">
            <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
                <Items>
                    <asp:MenuItem NavigateUrl="~/HomePage.aspx" Text="Home" Value="Home">
                        <asp:MenuItem NavigateUrl="~/ContactCard.aspx" Text="Contact Card" Value="Contact Card"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/AuditionAttendees.aspx" Selected="True" Text="Audition Attendees" Value="Audition Attendees"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
            </asp:Menu>
    </asp:Panel>
        <br />
        <asp:Panel ID="eastPanel" runat="server" HorizontalAlign="Center" style="z-index: 1; left: 255px; top: 99px; position: absolute; height: 629px; width: 1097px" BorderStyle="Solid">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="z-index: 1; left: 282px; top: 24px; position: absolute; height: 222px; width: 402px">
                <Columns>
                    <asp:BoundField DataField="Full_Name" HeaderText="Full_Name" SortExpression="Full_Name" />
                    <asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
                    <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Available_Date" HeaderText="Available_Date" SortExpression="Available_Date" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Alpha_MusicConnectionString %>" SelectCommand="SELECT * FROM [AuditionContact]"></asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" style="z-index: 1; left: 284px; top: 265px; position: absolute; height: 209px; width: 437px; right: 376px; margin-top: 0px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Alpha_MusicConnectionString %>" SelectCommand="SELECT * FROM [ContactImage]"></asp:SqlDataSource>
         
        </asp:Panel>
    </div>
    </form>
</body>
</html>
