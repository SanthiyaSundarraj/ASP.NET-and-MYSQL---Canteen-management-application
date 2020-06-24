<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="purchase.aspx.vb" Inherits="canteen.purchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 260px;
        }
        .auto-style3 {
            height: 260px;
            width: 235px;
        }
        .auto-style4 {
            width: 235px;
        }
        .auto-style5 {
            height: 260px;
            width: 332px;
        }
        .auto-style6 {
            width: 332px;
        }
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
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="MENU CARD" font-size="Medium" ForeColor="#00ff00"></asp:Label>
                        <asp:GridView ID="s" runat="server" ForeColor="#00ccff">
                        </asp:GridView>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Text="ENTER THE ID AND QUANTITY OF THE ITEM" forecolor="#cc66ff"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="ENTER THE ID :  " ForeColor="#ff33cc"></asp:Label><asp:TextBox ID="id" runat="server" /><br />
                        <br /><asp:Label ID="Label5" runat="server" Text="ENTER THE QUANTITY : " ForeColor="#ff33cc"></asp:Label><asp:TextBox ID="q" runat="server" />
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="YOUR CART" font-size="Medium" ForeColor="#00ff00"></asp:Label>
                        <asp:GridView ID="b" runat="server" ForeColor="#00ccff">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" Text="ADD TO CART" />
                        <asp:Button ID="Button2" runat="server" Text="DELETE FROM CART" />
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="Button3" runat="server" Text="CACULATE THE FINAL BILL" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
            </center>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button4" runat="server" Text="BACK" />
        </p>
    </form>
</body>
</html>
