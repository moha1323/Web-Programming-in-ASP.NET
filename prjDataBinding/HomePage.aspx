<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

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
                    <asp:MenuItem NavigateUrl="~/HomePage.aspx" Selected="True" Text="Home" Value="Home">
                        <asp:MenuItem NavigateUrl="~/ContactCard.aspx" Text="Contact Card" Value="Contact Card"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
            </asp:Menu>
        </asp:Panel>
        <br />
        <asp:Panel ID="eastPanel" runat="server" HorizontalAlign="Center" style="z-index: 1; left: 255px; top: 99px; position: absolute; height: 350px; width: 1097px" BorderStyle="Solid">
            <br />
            <asp:Label ID="lblBodyTitle" runat="server" Text="New KIDZ in da MUSIC Auditions" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="Large" style="z-index: 1; left: 283px; top: 19px; position: center"></asp:Label>
            <br />
            <br />
            <asp:Label ID="eastPanelTxt1" runat="server" style="z-index: 1; left: 238px; top: 62px; position: absolute" Text="Open auditions for..."></asp:Label>
            <asp:Label ID="eastPanelTxt6" runat="server" style="z-index: 1; left: 511px; top: 62px; position: absolute" Text="Instructions..."></asp:Label>
            <br />
            <asp:Label ID="eastPanelTxt2" runat="server" style="z-index: 1; left: 252px; top: 91px; position: absolute" Text="Singers"></asp:Label>
            <br />
            <asp:Label ID="eastPanelTxt3" runat="server" style="z-index: 1; left: 252px; top: 111px; position: absolute" Text="Rappers"></asp:Label>
            <asp:Label ID="eastPanelTxt7" runat="server" style="z-index: 1; left: 476px; top: 93px; position: absolute" Text="1) Create Contact Card"></asp:Label>
            <br />
            <br />
            <asp:Label ID="eastPanelTxt4" runat="server" style="z-index: 1; left: 252px; top: 129px; position: absolute" Text="Dancers"></asp:Label>
            <asp:Label ID="eastPanelTxt5" runat="server" style="z-index: 1; left: 252px; top: 147px; position: absolute" Text="Producers"></asp:Label>
            <asp:Label ID="eastPanelTxt8" runat="server" style="z-index: 1; left: 792px; top: 60px; position: absolute" Text="After Submission..."></asp:Label>
            <asp:Label ID="eastPanelTxt9" runat="server" style="z-index: 1; left: 730px; top: 94px; position: absolute" Text="We will call you to schedule a time slot."></asp:Label>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
