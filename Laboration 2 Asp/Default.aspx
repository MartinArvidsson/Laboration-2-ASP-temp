<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Laboration_2_Asp.Default" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kvitto!</title>
    <link rel="stylesheet" type="text/css" href="Style.css" />
</head>
<body>
    <form id="form1" runat="server">
        
    <div>
    <h1>Ange den totala köpessumman:</h1>
    </div>
        <asp:TextBox ID="UserTextBox" runat="server" CssClass="Textbox"></asp:TextBox><asp:Label ID="KrLabel" runat="server" Text="Kr"></asp:Label>
        <asp:RequiredFieldValidator ID="NoEmptyTextBox" runat="server" ErrorMessage="Någonting måste anges, fältet kan inte vara tomt" Display="Dynamic"></asp:RequiredFieldValidator>
     <div>

     <div>
         <asp:Button ID="RunButton" runat="server" Text="Kör!" OnClick="RunButton_Click" />
         <asp:Button ID="ResetButton" runat="server" Text="Ny beräkning" Visible="False" />
     </div>
         <asp:Label ID="ResultLabel" runat="server" Text="" Visible="false" CssClass="Kvittoresultat"></asp:Label>    
    </div>

    </form>
</body>
</html>
