<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="withdraw.aspx.cs" Inherits="ATM.withdraw" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>withdraw</title>
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
            width: 112px;
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <img alt="logo" class="auto-style1" src="NewFolder1/spplogo.PNG" /><asp:Button ID="Button2" runat="server" Width="11%" Height="44px" OnClick="Button2_Click" class="button button1" style="margin-left: 1162px" Text="EXIT" />
    
    </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Enter amount to be withdrawn" Font-Bold="True" Font-Size="Large" ForeColor="#FF9900"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="42px" style="margin-left: 48px" Width="170px"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Visible="False" BackColor="#009900" Font-Bold="True" Font-Size="Larger" ForeColor="#FF9900"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" class="button button1" OnClick="Button1_Click" style="margin-left: 509px" Text="SUBMIT" Width="130px" Height="43px" />
        </p>
    </form>
</body>
</html>
