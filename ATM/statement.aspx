<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="statement.aspx.cs" Inherits="ATM.statement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>statement</title>
    <script type ="text/javascript">  
    
    window.onload = window.history.forward(0);  //calling function on window onload
    </script>

    <style type ="text/css">

         body
        {
            background-image:url("http://fmtadvisory.com/wp-content/uploads/2017/01/Future-Investment-Trends-in-2017.jpg");            
            background-size:cover;
        }
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

        h1
        {
            margin-top:40px;

            text-align:center;
            color:orangered;
            letter-spacing: 2px;
           
        }

        .auto-style1 {
            width: 111px;
            height: 43px;
            margin-left: 0px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <h1>
          <img alt="" class="auto-style1" src="NewFolder1/spplogo.PNG" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button1" runat="server" Height="47px" style="margin-left: 1146px" class="button button1"  Text="EXIT" Width="112px" OnClick="Button1_Click1" />
        &nbsp;&nbsp;&nbsp;&nbsp; <h1>Mini Statement</h1>
    </div>
        <asp:GridView OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="true" PageSize="10" ID="GridView1" runat="server" AutoGenerateColumns="true" BackColor="White" BorderStyle="Double" ForeColor="Black" style="margin-left: 476px" Width="391px">
            </asp:GridView>
    </form>
</body>
</html>
