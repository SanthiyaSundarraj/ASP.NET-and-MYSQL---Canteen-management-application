<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="signin.aspx.vb" Inherits="canteen.WebForm1" %>

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
            <br /><br /><br />
        <asp:Label ID="Label1" runat="server" Text="LOGIN" ForeColor="#00ff00"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="USERNAME  :     " ForeColor="#33cccc"></asp:Label>
            <asp:TextBox ID="user" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="PASSWORD  :   " ForeColor="#33cccc"></asp:Label>
        <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" Text="LOGIN" />
        </p>
            </center>
        <p>
            <asp:Button ID="Button2" runat="server" Text="BACK" />
        </p>
    </form>
</body>
</html>
