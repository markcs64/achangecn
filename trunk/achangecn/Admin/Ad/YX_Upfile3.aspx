<%@ page language="C#" autoeventwireup="true" inherits="Admin_Ad_YX_Upfile3, App_Web_59kuhmaf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="../css.css" type="text/css" /> 
</head>

<body>
 <form id="form3" runat="server">
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="185px" />
        <asp:Button ID="Button1" runat="server" Text="上传图片" OnClick="Button1_Click"  /></div>
   </form>
</body>
</html>
