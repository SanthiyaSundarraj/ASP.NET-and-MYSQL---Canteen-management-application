<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="bill.aspx.vb" Inherits="canteen.bill" %>

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
       <marquee id="MyMovingText" runat="server" direction="left"><font color="aqua" size="5px">"YOUR FAMILY RESTAURENTS.."</ font></marquee>
            <br />
            <br />
            <br />
     <br />
 
        <asp:Button ID="Button2" runat="server" Text="CLICK HERE TO DISPLAY BILL" />
        <p>
            <asp:Label ID="Label2" runat="server" Text="BILL NUMBER :     " ForeColor="#00ff00"></asp:Label>
            <asp:TextBox ID="n" runat="server"></asp:TextBox>
        </p>
        <asp:GridView ID="b" runat="server" ForeColor="#ff3399">
        </asp:GridView>
        <asp:Label ID="Label3" runat="server" Text="TOTAL AMOUNT  :   " ForeColor="#00ff00"></asp:Label>
        <asp:TextBox ID="t" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" Text="OK" />
        </p>
                   </center>
    </form>
</body>
</html>
