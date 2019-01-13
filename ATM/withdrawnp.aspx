<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="withdrawnp.aspx.cs" Inherits="ATM.withdrawnp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
        window.onload = window.history.forward(0);
    </script>
    <script runat="server">
       
       // string x = System.Web.HttpContext.Current.Request.QueryString["string"]; 
        string x = System.Web.HttpContext.Current.Request.QueryString["value1"];  
        string y = System.Web.HttpContext.Current.Request.QueryString["value2"];  
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
            background-image:url("https://image.freepik.com/vector-gratis/fondo-geometrico-amarillo_1189-267.jpg"); 
               background-size:cover; 
            background-repeat:repeat;
        }
         h1{
             color:forestgreen;
             font-weight:300;
         }
    </style>


    
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>
        <asp:Button ID="Button1" runat="server" class="button button1" Height="43px" style="margin-left: 1206px" Text="EXIT" Width="133px" OnClick="Button1_Click" />
        <div id="a">
             <h1>Transaction Successful</h1>
      
            <h3> <b><%=y%>.</b> </h3>
            <h3><b><%=x%>.</b> </h3>
    <div>
    
    </div>
    </form>
</body>
</html>
