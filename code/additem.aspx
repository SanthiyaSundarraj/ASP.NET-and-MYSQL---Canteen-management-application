<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="additem.aspx.vb" Inherits="canteen.additem" %>

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
 
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="#ff6699" Text="FILL THE ITEM DETAILS TO ADD THE ITEM"></asp:Label>
        <br /><br />
                   <p>
            <asp:Label ID="Label2" runat="server" Text="ENTER ID OF THE ITEM  :" ForeColor="#00ff00"></asp:Label>
            <asp:TextBox ID="id" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="ENTER THE NAME OF THE ITEM :" ForeColor="#00ff00"></asp:Label>
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" Text="ENTER THE PRICE OF THE ITEM :" ForeColor="#00ff00"></asp:Label>
            <asp:TextBox ID="price" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label5" runat="server" Text="ENTER THE QUANTITY AVAILABLE :" ForeColor="#00ff00"></asp:Label>
        <asp:TextBox ID="q" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" Text="ADD ITEM" />
        </p>
            </center>
               <asp:Button ID="Button2" runat="server" Text="BACK" />
    </form>
</body>
</html>
