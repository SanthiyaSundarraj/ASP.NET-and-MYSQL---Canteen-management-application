<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="menucard.aspx.vb" Inherits="canteen.menucard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
            <center>
            <br /><br /><br />
            <br />
               <font color="yellow" size="100px">WELCOME TO SANSAKTRA</font>
        <br />
       <marquee id="MyMovingText" runat="server" direction="left"><font color="aqua" size="5px">"YOUR FAMILY RESTAURENTS.."</font></marquee>
            <br />
            <br />
            <br />
     <br />
        <p>
            <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="#ff0066" Text="MENU CARD"></asp:Label>
        </p>
        <asp:GridView ID="s" runat="server" ForeColor="#00ff00">
        </asp:GridView>
    </center>
        <p>
            <br /><br />
            <asp:Button ID="Button2" runat="server" Text="BACK" />
        </p>
    </form>
</body>
</html>
