<%@ page language="C#" autoeventwireup="true" inherits="Admin_index, App_Web_i8lrcdir" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
 <title>管理员登陆</title>
<link href="images/style.CSS" rel="stylesheet" type="text/css">

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #FAFAFA;
}
.inc01{ width:153px; height:20px; border:#D2E4EE 1px solid; background-color:#F3F8FC;} 
.inc02{ width:80px; height:20px; border:#D2E4EE 1px solid; background-color:#F3F8FC;} 
.STYLE6 {color: #0066FF}
.STYLE7 {color: #003584}
.STYLE8 {color: #09155E}
.STYLE9 {
	color: #FF6600;
	font-weight: bold;
}
.STYLE10 {
	color: #C43309;
	font-weight: bold;
}
.STYLE12 {color: #000033}
.STYLE13 {color: #333333}
-->
</style>
<script language=javascript>

function SetFocus()
{
if (document.form1.username.value=="")
    document.form1.username.focus();
else
    document.form1.username.select();
}
function CheckForm()
{
    if(document.form1.username.value=="")
    {
        alert("请输入用户名！");
        document.form1.username.focus();
        return false;
    }
    if(document.form1.password.value == "")
    {
        alert("请输入密码！");
        document.form1.password.focus();
        return false;
    }
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body >
<form  id="form1" runat="server" onsubmit="return CheckForm()" target="_top" action="Default.aspx?xx=ss">
<input type="hidden" id="Flag" name="Flag" value="Login" />
       <table width="1003" border="0" cellspacing="0" cellpadding="0" >
          <tr>
            <td height="604" valign="top" background="images/logins_02.jpg"><table width="499" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="35">　</td>
                </tr>
                <tr>
                  <td><img src="images/logins_09.jpg" width="498" height="75" alt="" /></td>
                </tr>
                <tr>
                  <td><img src="images/logins_13.jpg" width="500" height="126" alt="" /></td>
                </tr>
                <tr>
                  <td height="368" valign="top" background="images/logins_18.jpg"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
                      
                      <tr>
                        <td height="74" valign="top">
						<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td valign="top">
								<table width="100%" height="68%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="350" border="0" align="center" cellpadding="0" cellspacing="0">

          <tr>
            <td width="322" align="center"><table width="320" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="13%" height="30"><img src="images/User_Login_0_15.jpg" width="35" height="30" alt="" /></td>
                  <td width="21%" align="left"><span class="STYLE13">用户名称：</span></td>
                  <td colspan="2" align="left"><span style="height: 20px">
                    <input type="text" name="username" id="username" class="inc01"/>
                  </span></td>
                </tr>
                <tr>
                  <td height="30"><img src="images/User_Login_0_19.jpg" alt="" width="35" height="30" /></td>
                  <td align="left"><span class="STYLE13">用户密码：</span></td>
                  <td colspan="2" align="left"><span style="height: 20px">
                    <input type="password" name="password" id="password" class="inc01"/>
                  </span></td>
                </tr>
                <tr>
                  <td height="30"><img src="images/User_Login_0_23.jpg" alt="" width="35" height="30" /></td>
                  <td align="left"><span class="STYLE13">验 证 码：</span></td>
                  <td width="33%" align="left"><span style="height: 20px">
                    <input type="text" name="code1" id="code1"  class="inc02" />
                  </span></td>
                  <td width="33%" align="left"><img id="Image1" src="Image.aspx" style="cursor:hand" alt="点击刷新" onclick="document.getElementById('Image1').src='Image.aspx';" style="height:25px;border-width:0px;" /></td>
                </tr>
                <tr>
                  <td height="50" colspan="4" align="center"><span style="height: 51px">
                    <input type="image" id="imgbtn" name="imgbtn" src="Images/User_Login_0_13.gif" style="width:132px; height:32px" />
                  </span></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="13"><table width="96%" border="0" align="left" cellpadding="0" cellspacing="3">
                          <tr>
                            <td>　</td>
                          </tr>
                          <tr>
                            <td><span class="STYLE8">服务时间：周一至周六：8:30--12:00，13:30--18:00</span></td>
                          </tr>
                          <tr>
                            <td><span class="STYLE8">售前电话：028-66006880 / 13880203878</span></td>
                          </tr>
                          <tr>
                            <td><span class="STYLE8">QQ在线：267224740 | 267224741 
							| 267224742 | 267224743</span></td>
                          </tr>
                        </table></td>
                      </tr>
                  </table></td>
                </tr>
            </table>
                    <table width="499" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>　<span class="STYLE7">目前易想为商业客户提供每周六天、每天8小时的电话和网络技术支持服务，希望我们的服务能为您节约成本，与您共创价值。服务中的不周之处，敬请海涵！ 
                        </span></td>
                      </tr>
                    </table></td>
          </tr>
        </table>
		</td>
  </tr>
</table>


</form>
</body>
</html>