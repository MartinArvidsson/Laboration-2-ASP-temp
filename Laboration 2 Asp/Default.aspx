<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Laboration_2_Asp.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kvitto!</title>
    <link rel="stylesheet" type="text/css" href="~/Model/Style.css" />
    <script src="Model/Script.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <h1>Ange den totala köpessumman:</h1>
        <%--  Formulär --%>
        <div id="InputArea">
            <asp:TextBox ID="UserTextBox" runat="server" CssClass="Textbox" /> kr<br />
            <asp:RequiredFieldValidator 
                ID="NoEmptyTextBox" 
                runat="server" 
                ErrorMessage="Någonting måste anges, fältet kan inte vara tomt" 
                Display="Dynamic" ControlToValidate="UserTextBox">
            </asp:RequiredFieldValidator>
            <asp:CompareValidator
                ID="ValidationOfNumber"
                runat="server"
                ErrorMessage="Ange ett tal!"
                Display="Dynamic"
                Type="Double"
                ControlToValidate="UserTextBox"
                ValueToCompare="0"
                Operator="GreaterThan">
            </asp:CompareValidator>
        </div>

        <div id="buttons">
            <asp:Button ID="RunButton" runat="server" Text="Kör!" OnClick="RunButton_Click" />
            <asp:Button ID="ResetButton" runat="server" Text="Ny beräkning" Visible="False" />
        </div>
    </form>
    
    <%-- Resultat --%>
    <asp:PlaceHolder ID="PlaceHolder" runat="server" Visible="false">
        <div id="KvittoArea">
            <div class="Kvittot">
                <h2>Butik Test!</h2>
                <p class="OpenWeekdays">Öppetider mån-fre: 8-19</p>
                <p class="OpenWeekends">Öppetider lör-sön: 10-18</p>
                <p>Summa:</p>
                <asp:Label ID="FirstSum" runat="server" /><br />
                <p>Antal % rabatt:</p>
                <asp:Label ID="DiscountSum" runat="server" /><br />
                <p>Avdragen summa:</p>
                <asp:Label ID="AfterDiscount" runat="server" /><br />
                <p>Att betala:</p>
                <asp:Label ID="FinalSum" runat="server" /><br />
            </div>
        </div>
    </asp:PlaceHolder>
</body>
</html>
