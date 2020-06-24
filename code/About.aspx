<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="about.aspx.vb" Inherits="canteen.about1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
    body {
background-image:url('b3.jpg');
background-repeat: no-repeat;
background-position:center;
background-size:100%;
}
    div{
        text-decoration-color:darkorange;
        font-family:Georgia;
    }
</style>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <br /><br /><br />
            <br />
               <font color="yellow" size="100px">WELCOME TO SANSAKTRA</font>
        <br />
       <marquee id="MyMovingText" runat="server" direction="left"><font color="aqua" size="5px">"YOUR FAMILY RESTAURENTS.."</font></marquee>
            <br />
            <br /><br /><br />
        
       
        <div>
            <asp:Label ID="Label1" runat="server" Text="ABOUT US" ForeColor="#00ff00"></asp:Label>
            <br />
        </div>
        <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Height="160px" TextMode="MultiLine" Width="335px" Enabled="false">In Our Restaurant we assure you
the quality home taste foods
in reasonable price.. You can remember 
the native taste and culture
through our food...
Happy to serve Love with Food

</asp:TextBox>
            </center>
        <p>
            <asp:Button ID="Button1" runat="server" Text="BACK" />
        </p>
    </form>
</body>
</html>
