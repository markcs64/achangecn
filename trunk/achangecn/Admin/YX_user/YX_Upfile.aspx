<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_Product_YX_Upfile, App_Web_ezi-zx_s" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="../css.css" type="text/css" /> 
</head>
<body style="background-color:#F6F6F6; margin-top:0px; margin-left:0px" >
  <form id="form2" runat="server">
    <div>
        
            <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="185px" />
            <asp:Button ID="Button1" runat="server" Text="上传图片" OnClick="Button1_Click"  /></div>
    

    </form>
</body>
</html>
