<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="ATM.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       body
        {
            background-image:url("https://image.freepik.com/vector-gratis/fondo-geometrico-amarillo_1189-267.jpg"); 
               background-size:cover; 
            background-repeat:repeat;
        }
        h1
        {
            margin-top:40px;
            text-align:center;
            color:orangered;
            letter-spacing: 2px;
           
        }
       .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}

.button1:hover {
    background-color: #4CAF50;
    color: white;
}

.button2 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}

.button2:hover {
    background-color: #4CAF50;
    color: white;
}

.button3 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}

.button3:hover {
    background-color: #4CAF50;
    color: white;
}

.button4 {
    background-color: white;
    color: black;
    border: 2px solid #4CAF50;
}

.button4:hover {background-color: #4CAF50;}

.button5 {
    background-color: white;
    color: black;
    border: 2px solid #4CAF50;
}

.button5:hover {background-color: #4CAF50;}

.button6 {
    background-color: white;
    color: black;
    border: 2px solid #4CAF50;
}

.button6:hover {background-color: #4CAF50;}

.button1 {border-radius: 12px;}
.button2 {border-radius: 12px;}
.button3 {border-radius: 12px;}
.button4 {border-radius: 12px;}
.button5 {border-radius: 12px;}
.button6 {border-radius: 12px;}


        .auto-style1 {
            width: 106px;
            height: 43px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>
            <img alt="logo" class="auto-style1" src="NewFolder1/spplogo.PNG" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
        <h1>Welcome To SPP BANK</h1>
        <p>&nbsp;</p>
    <div>
    
    </div>
        <asp:Button ID="Button1" runat="server" class="button button1"  style="margin-left: 557px" Text="BALANCE" Width="194px" Height="40px" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Visible="False" BackColor="#009900" Font-Bold="True" Font-Size="Larger" ForeColor="#FF9900"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" class="button button2" Height="35px" style="margin-left: 560px" Text="WITHDRAW" Width="191px" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" class="button button3" style="margin-left: 561px" Text="DEPOSIT" Width="194px" Height="35px" OnClick="Button3_Click" />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" class="button button5" Height="36px" style="margin-left: 561px" Text="CHANGE PIN" Width="198px" OnClick="Button5_Click" />
        <br />
        <br />
        <asp:Button ID="Button6" runat="server" class="button button6" Height="35px" style="margin-left: 561px" Text="MINI STATEMENT" Width="199px" OnClick="Button6_Click" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server"  class="button button4" style="margin-left: 561px" Text="EXIT" Width="196px" Height="34px" OnClick="Button4_Click" />
        <br />
    </form>
</body>
</html>
