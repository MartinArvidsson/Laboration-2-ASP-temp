<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Laboration_2_Asp.Default" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kvitto!</title>
    <link rel="stylesheet" type="text/css" href="~/Model/Style.css" />
    <script src="Model/Script.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        
    <div>
    <h1>Ange den totala köpessumman:</h1>
    </div>

        <div>
            <asp:TextBox ID="UserTextBox" runat="server" CssClass="Textbox"></asp:TextBox><asp:Label ID="KrLabel" runat="server" Text="Kr"></asp:Label>
            <asp:RequiredFieldValidator ID="NoEmptyTextBox" runat="server" ErrorMessage="Någonting måste anges, fältet kan inte vara tomt" Display="Dynamic" ControlToValidate="UserTextBox"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="ValidationOfNumber" runat="server" ErrorMessage="Ange ett tal!" Display="Dynamic" Type="Double"  ControlToValidate="UserTextBox" ValueToCompare="0" Operator="GreaterThan"></asp:CompareValidator>
        </div>

        <div>
             <asp:Button ID="RunButton" runat="server" Text="Kör!" OnClick="RunButton_Click" />
             <asp:Button ID="ResetButton" runat="server" Text="Ny beräkning" Visible="False" />
        </div>
        
        <asp:PlaceHolder ID="PlaceHolder" runat="server" Visible="false">
        <div class="Kvittot">

            <h2>Butiknamn Hej!</h2>
            <p class="OpenWeekdays">Öppetider mån-fre: 8-19</p>
            <p class="OpenWeekends">Öppetider lör-sön: 10-18</p>
            <p>Summa:</p><asp:Label ID="FirstSum" runat="server" Text="" Visible="false" CssClass="Kvittoresultat"></asp:Label><br />
            <p>Antal % rabatt:</p><asp:Label ID="DiscountSum" runat="server" Text="" Visible="false" CssClass="Kvittoresultat"></asp:Label><br />
            <p>Avdragen summa:</p><asp:Label ID="AfterDiscount" runat="server" Text="" Visible="false" CssClass="Kvittoresultat"></asp:Label><br />
            <p>Att betala:</p><asp:Label ID="FinalSum" runat="server" Text="" Visible="false" CssClass="Kvittoresultat"></asp:Label><br />
        </div>
        </asp:PlaceHolder>
    </form>
</body>
</html>
