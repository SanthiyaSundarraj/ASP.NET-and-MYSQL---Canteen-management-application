<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="viewstock.aspx.vb" Inherits="canteen.viewstock" %>

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
            <br /><br /><br />
        
        <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="#00ff00" Text="STOCK  AVAILABLE"></asp:Label>
        <br /><br /><asp:GridView ID="stock" runat="server" Width="312px" ForeColor="#00ffcc">
        </asp:GridView>
        <p>
            <asp:Button ID="Button2" runat="server" Text="BACK" />
        </p>
    </form>
</body>
</html>
