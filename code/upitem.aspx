<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="upitem.aspx.vb" Inherits="canteen.upitem" %>

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
        
        <asp:Label ID="Label1" runat="server" Text="ENTER THE ID OF THE ITEM TO BE UPDATED  :    " ForeColor="#ff66ff"></asp:Label>
        <asp:TextBox ID="id" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="OK" /><br /><br />
        <asp:GridView ID="s" runat="server" ForeColor="#00ffff">
        </asp:GridView>
            <br /><br />
        <asp:Label ID="Label2" runat="server" Text="NAME OF ITEM  :   " ForeColor="#99ff33"></asp:Label>
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" Text="PRICE OF THE ITEM  :   " ForeColor="#99ff33"></asp:Label>
            <asp:TextBox ID="p" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="QUANTITY OF THE ITEM  :   " ForeColor="#99ff33"></asp:Label>
            <asp:TextBox ID="q" runat="server"></asp:TextBox>
            <br />
        </p>
        <asp:Button ID="Button1" runat="server" Text="UPDATE THE ITEM" />
    </center>
        <p>
            <asp:Button ID="Button3" runat="server" Text="BACK" />
        </p>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </body>
</html>
