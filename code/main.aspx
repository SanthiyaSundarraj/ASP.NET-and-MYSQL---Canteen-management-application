<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="main.aspx.vb" Inherits="canteen.main" %>

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

</head>
<body >
    <form id="form1" runat="server">
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
            <br />

            <p><asp:Button ID="Button1" runat="server" Text="1.ADMIN" />
        </p>
        <asp:Button ID="Button2" runat="server" Text="2.CUSTOMER" />
        <p>
            <asp:Button ID="Button3" runat="server" Text="3.EXIT" />
        </p>
        </center>
    </form>
</body>
</html>
