<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageMENU.aspx.cs" Inherits="webQuanLyBanHang4._0.pageMENU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="http://fonts.googleapis.com/css?family=Bitter&subset=latin" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="CSS/nestedsidemenu.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <% 
        Response.Write(strMENU);
     %>
    </div>
    </form>
</body>
</html>
