<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="cus.aspx.vb" Inherits="canteen.cus" %>

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
 
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="yellow" Text="ENJOY YOUR FOODS.. CLICK BELOW OPTIONS TO VISIT YOUR DESIRED PAGE.."></asp:Label>
        <p>
            <asp:Button ID="Button3" runat="server" Text="1.MENU CARD" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="2.PURCHASE" />
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="3.ABOUT US" />
        </p>
                   </center>
        <p>
            <br /><br />
            <asp:Button ID="Button4" runat="server" Text="BACK" />
        </p>
    </form>
</body>
</html>
