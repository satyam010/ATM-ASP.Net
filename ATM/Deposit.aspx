<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deposit.aspx.cs" Inherits="ATM.Deposit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>deposit</title>
    <script type ="text/javascript">  
    window.onload = window.history.forward(0);  //calling function on window onload
    </script>
    <style type="text/css">
         .button {
    background-color: green;
    border: none;
    color: white;
    padding: 13px 30px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 4px 2px;
    cursor: pointer;
}
        .button1 {font-size: 16px;}
        body
         {
            background-image:url("http://fmtadvisory.com/wp-content/uploads/2017/01/Future-Investment-Trends-in-2017.jpg");            
            background-repeat:no-repeat;
            background-size:cover;
        }
        .auto-style1 {
            width: 123px;
            height: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <img alt="logo" class="auto-style1" src="NewFolder1/spplogo.PNG" /><asp:Button ID="Button2" runat="server" Height="44px" OnClick="Button2_Click" class="button button1" style="margin-left: 1195px" Text="EXIT" Width="105px" />
    <div>
    
    </div>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Enter Amount to be Deposited" Font-Bold="True" Font-Size="Large" ForeColor="#FF9900"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="30px" style="margin-left: 22px" Width="154px"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Label" BackColor="#009900" Font-Bold="True" Font-Size="Larger" ForeColor="#FF9900"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" style="margin-left: 542px" class="button button1" Text="SUBMIT" Width="119px" />
    </form>
</body>
</html>
