<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactCard.aspx.cs" Inherits="ContactCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
     <asp:Panel ID="headerPanel" runat="server" BackColor="Black" Height="80px" HorizontalAlign="Center" Width="1350px">
            <br />
            <asp:Label ID="headerTitleLabel" runat="server" Text="Alpha Music" Font-Names="Bernard MT Condensed" Font-Size="XX-Large" ForeColor="White"></asp:Label>
     </asp:Panel>
</head>
<body style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 939px; width: 1000px">
    <form id="form1" runat="server">
    <div class = "aspNetHidden">
    <input type = "hidden" name = "VIEWSTATE" id = "_VIEWSTATE" value = "Welcome"/>
        <asp:Panel ID="Panel1" runat="server" BorderColor="Black" BorderStyle="Solid" style="z-index: 1; left: 3px; top: 90px; position: absolute; height: 351px; width: 232px">
            <asp:Menu ID="Menu1" runat="server">
                <Items>
                    <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/HomePage.aspx">
                        <asp:MenuItem Text="Contact Card" Value="Contact Card" NavigateUrl="~/ContactCard.aspx" Selected="True"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/AuditionAttendees.aspx" Text="Audition Attendees" Value="Audition Attendees"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
            </asp:Menu>
        </asp:Panel>
    </div>
    <div style="font-family: 'Times New Roman'; font-size: x-small; text-align: left; background-color: #ffffcc; border: thin solid #000000; padding: 20px; position: relative; width: 290px; height: 415px; top: 69px; left: 304px;">
    
        <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
            <asp:View ID="View1" runat="server">
                Choose a color:<br />
                <asp:DropDownList ID="cardColor" runat="server" Height="20px" OnSelectedIndexChanged="cardColor_SelectedIndexChanged" Width="195px">
                    <asp:ListItem>White</asp:ListItem>
                    <asp:ListItem>Blue</asp:ListItem>
                    <asp:ListItem>Gray</asp:ListItem>
                </asp:DropDownList>
                <br />
                Choose a font:<br />
                <asp:DropDownList ID="cardFont" runat="server" Height="20px" Width="195px">
                    <asp:ListItem>Times New Roman</asp:ListItem>
                    <asp:ListItem>Arial</asp:ListItem>
                    <asp:ListItem>Verdana</asp:ListItem>
                    <asp:ListItem>Tahoma</asp:ListItem>
                </asp:DropDownList>
                <br />
                Enter font size:(6-10)<asp:RangeValidator ID="FontRangeValidator" runat="server" ControlToValidate="cardFontSize" Display="Dynamic" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="10" MinimumValue="6" Type="Integer" ValidationGroup="vg">Out of Range</asp:RangeValidator>
                <br />
                <asp:TextBox ID="cardFontSize" runat="server" Width="195px"></asp:TextBox>
                <br />
                <asp:Button ID="nextView4View1" runat="server" Height="20px" OnClick="nextView4View1_Click" Text="Next &gt;" Width="60px" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                Choose a border style:<br />
                <asp:RadioButtonList ID="cardBorderStyle" runat="server" Height="60px" Width="175px">
                    <asp:ListItem>None</asp:ListItem>
                    <asp:ListItem>Solid</asp:ListItem>
                    <asp:ListItem>Double</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Button ID="prevView4View2" runat="server" Height="20px" OnClick="prevView4View2_Click" Text="&lt; Prev" Width="60px" />
                <asp:Button ID="nextView4View2" runat="server" Height="20px" OnClick="nextView4View2_Click" Text="Next &gt;" Width="60px" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                Upload headshot:<br />
                <asp:FileUpload ID="imgFileUpload" runat="server" Height="25px" />
&nbsp;
                <asp:Button ID="imgUpload" runat="server" Height="25px" OnClick="imgUpload_Click" Text="Upload" />
                <br />
                Enter full name:<br />
                <asp:TextBox ID="contactFullName" runat="server" Width="195px"></asp:TextBox>
                <br />
                Enter&nbsp;occupation:<br />
                <asp:TextBox ID="contactOccupation" runat="server" Width="195px"></asp:TextBox>
                <br />
                Enter phone number:<br />
                <asp:TextBox ID="contactPhoneNumber" runat="server" Width="195px"></asp:TextBox>
                <br />
                Enter email address:<br />
                <asp:TextBox ID="contactEmail" runat="server" Width="195px"></asp:TextBox>
                <br />
                <asp:Button ID="prevView4View3" runat="server" Height="20px" OnClick="prevView4View3_Click" Text="&lt; Prev" Width="60px" />
                <asp:Button ID="nextView4View3" runat="server" Height="20px" OnClick="nextView4View3_Click" Text="Next &gt;" Width="60px" />
            </asp:View>
            <asp:View ID="View4" runat="server">
                Click on a date you are available.<br />
                <asp:Calendar ID="contactAvailability" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="contactAvailability_SelectionChanged" Width="280px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
                <br />
                <asp:Button ID="prevView4View4" runat="server" Height="20px" OnClick="prevView4View4_Click" Text="&lt; Prev" Width="60px" />
                <asp:Button ID="actionUpdate" runat="server" Height="20px" OnClick="actionUpdate_Click1" Text="Update" Width="60px" />
                <br />
                <br />
            </asp:View>
        </asp:MultiView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
        <asp:Panel ID="cardPanel" runat="server" HorizontalAlign="Center" style="z-index: 1; left: 648px; top: 85px; position: absolute; height: 518px; width: 327px; margin-top: 0px" Width="350px">
            <br />
            <asp:Image ID="imgContactFace" runat="server" Height="245px" ImageAlign="Middle" Width="130px" Visible="False" />
            <br />
            <br />
            <asp:Label ID="lblFullName" runat="server" Height="20px" Width="195px"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblOccupation" runat="server" Height="20px" Width="195px"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblPhoneNum" runat="server" Height="20px" Width="195px"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblEmail" runat="server" Height="20px" Width="195px"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblAvailableDate" runat="server" Height="20px" Width="195px"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblFooter" runat="server" Height="20px" style="z-index: 1; left: -636px; top: 373px; position: absolute; width: 223px"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>

