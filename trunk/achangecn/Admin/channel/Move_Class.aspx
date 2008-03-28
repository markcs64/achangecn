<%@ page language="C#" autoeventwireup="true" inherits="Admin_channel_Move_Class, App_Web_zrzibc8x" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangHope" TagName="ProClass" Src="~/Admin/Class_list.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="9" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->

</style>
<link rel="stylesheet" href="../CSS.css" type="text/css" />
<script language="jscript" src="../../Include/JScript.js"></script>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Width="100%">
		  <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3">分类移动</td>
            </tr>
          </table>
		  <table width="100%" height="5" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td></td>
  </tr>
</table>

		  <table width="100%" height="680" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1" onClick="return TABLE1_onclick()">
            <tr>
              <td width="300" align="center" bgcolor="#3270C5" class="F">移动的分类</td>
              <td height="25" align="center" bgcolor="#3270C5" class="F" style="width: 219px"></td>
              <td width="392" align="center" bgcolor="#3270C5" class="F">请选择移动到的分类</td>
            </tr>
            <tr>
              <td rowspan="6" align="left" valign="top" bgcolor="#F6F6F6" >
              <%=ss()%>
              
                                    </td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 219px">
                  <asp:HiddenField ID="HiddenField1" runat="server" />
              </td>
              <td rowspan="6" valign="top" bgcolor="#F6F6F6">&nbsp;                  
                 <%=ss1()%>
           
                  </td>
            </tr>
            <tr>
              <td align="left" bgcolor="#F6F6F6" style="width: 219px; height: 45px;">&nbsp;                  </td>
            </tr>
            <tr>
              <td align="left" bgcolor="#F6F6F6" style="width: 219px; height: 48px; text-align: left;">              请在右边选种要移动到的目标栏目</td>
            </tr>
            <tr>
              <td bgcolor="#F6F6F6" style="width: 219px; height: 51px;" >&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
            </tr>
              
              <tr>
                  <td height="259" align="left" bgcolor="#f6f6f6" style="width: 219px">                </td>
              </tr>
            <tr>
              <td height="40" bgcolor="#F6F6F6" align="center" style="width: 219px">&nbsp;<asp:Button ID="Button1" runat="server" Text="提　　交" Width="104px" OnClick="Button1_Click" /></td>
            </tr>
              <tr>
                  <td align="center" colspan="3">
                    <Chp:ChangHope_btm ID="chp" runat="server" />                  </td>
              </tr>
          </table>
		
          </asp:Panel>
        
    </div>
    </form>
</body>
</html>
