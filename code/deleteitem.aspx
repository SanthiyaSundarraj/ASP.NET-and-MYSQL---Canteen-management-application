<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="deleteitem.aspx.vb" Inherits="canteen.deleteitem" %>

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
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="#ff3399" Text="ENTER THE ID OF THE ITEM TO DELETE IT"></asp:Label>
        <br /><br /><asp:GridView ID="stock" runat="server" ForeColor="#00ccff">
        </asp:GridView>
        <p>
            <asp:Label ID="Label2" runat="server" Text="ENTER THE ID :   " ForeColor="#00ff00"></asp:Label>
            <asp:TextBox ID="id" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Text="DELETE ITEM" />
                </center>
        <p>
            <br />
            <asp:Button ID="Button2" runat="server" Text="BACK" />
        </p>
    </form>
</body>
</html>
