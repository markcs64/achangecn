<%@ page language="C#" autoeventwireup="true" inherits="Admin_WebInfo_YX_BackDatabase, App_Web_pxeqsmsm" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="8" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../style/style.css" type="text/css" />
<script language="javascript" type="text/javascript" src="../style/JScript.js"></script>
</head>
<body>

<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="../images/r_1.gif" alt="" /></td>
<td width="100%" background="../images/r_0.gif"></td>
<td><img src="../images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>
    <form id="form1" runat="server">
    <div>    
   <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>数据库管理</td>
         <td class="category">
          
           </td>
        </tr>
 </table>
<asp:Panel ID="Panel2" runat="server"  Width="100%">  
  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td></td>
  </tr>
              
</table>    
      <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="25%" align="center" bgcolor="#FFFFFF" class="F">设置名称</td>
              <td height="25" align="left" bgcolor="#FFFFFF" class="F" style="width:300px">基本参数设置</td>
              <td width="25%" align="center" bgcolor="#FFFFFF" class="F" style="width:350px">设置说明</td>
            </tr>
         
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              备份数据库名称：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 300px">
                              <asp:TextBox ID="TextBox3" runat="server" Width="192px"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                                  Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                          <td bgcolor="#f6f6f6">
                          如备份目录有该文件，将覆盖，如没有，将自动创建</td>
                      </tr>
            
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="width:240px; height: 25px;">
                              </td>
                          <td align="left" bgcolor="#f6f6f6" style="height: 25px; width: 300px;">
                              <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="备份数据库" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/></td>
                          <td bgcolor="#f6f6f6" style="height: 25px">
                          </td>
                      </tr>
      
      
                 <tr>
                          <td align="center" colspan="4" bgcolor="#f6f6f6">
                              <div align="left"><b class="blue">提示：</b><br />在上面填写本程序的数据库备份文件名称，本程序的默认数据库文件为ChangeHope，请一定不能用默认名称命名备份数据库
                                您可以用这个功能来备份您的法规数据，以保证您的数据安全！
                               <br> <b class="blue">注意：</b><br />1.确认你的SQL用户有备份权限.<br>2.默认备份文件在<font color=red>网站根目录>>App_Data>>ChangeHope </font>
                              </div></td>
                        
              </tr>
      
          </table>
            </asp:Panel>
            <asp:Panel ID="Panel1" runat="server"  Width="100%">
                 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td></td>
  </tr>
              
</table>
                  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
            <tr>
              <td width="25%" align="center" bgcolor="#FFFFFF" class="F">设置名称</td>
              <td height="25" align="left" bgcolor="#FFFFFF" class="F" style="width:300px">基本参数设置</td>
              <td width="21%" align="center" bgcolor="#FFFFFF" class="F" style="width:240px">设置说明</td>
            </tr>
                     
            <tr>
              <td align="center" bgcolor="#F6F6F6">
                  &nbsp;备份数据库名称：</td>
              <td align="left" bgcolor="#F6F6F6" style="width: 300px">
                <asp:TextBox ID="TextBox5" runat="server" Width="259px"></asp:TextBox>
                  &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                      ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp; </td>
            </tr>           
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="width:240px; height: 25px;">
                              </td>
                          <td align="left" bgcolor="#f6f6f6" style="height: 25px; width: 300px;">
                              <asp:Button ID="Button2" runat="server" Text="恢复备份数据库"  OnClick="Button2_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/></td>
                          <td bgcolor="#f6f6f6" style="height: 25px">
                          </td>
                      </tr>
      
      
                 <tr>
                          <td align="center" colspan="4" bgcolor="#f6f6f6" >
                              <table border="0" cellspacing="1" class="Msg" width="100%">
                                  <tr>
                                      <td align="center"> 
                                          <div align="left">
                                          <b class="blue">提示：</b><br />
                                         
                                              填写您你当前数据库的备份文件名称<br>                    
                                              
                                    
                                              
                                      </div></td>
                                  </tr>
                              </table>
                              </td>
                        
                      </tr>
      
          </table>
    </asp:Panel>
    </div>
    </form>
       </td><td></td>
</tr>   
<tr>
<td><img src="../images/r_4.gif" alt="" /></td>
<td></td>
<td><img src="../images/r_3.gif" alt="" /></td>
</tr>
</table>
<Chp:ChangHope_btm ID="chp1" runat="server" /></td> 
</body>
</html>
