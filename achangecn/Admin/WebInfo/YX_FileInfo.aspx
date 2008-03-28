<%@ page language="C#" autoeventwireup="true" inherits="Admin_WebInfo_YX_FileInfo, App_Web_pxeqsmsm" %>
<%@ Register TagPrefix="ChangHope" TagName="Admin_Btm" Src="../Admin_Btm.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="9" ID="chk1" runat="server" />
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
    
    <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25"class="category t2" width=150>系统空间占用情况</td>
          
        </tr>
 </table>
 
 
<asp:Panel ID="Panel2" runat="server"  Width="100%">  
  
      <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="25%" align="center"  class="topbg B">文件名称</td>
              <td height="25" align="left"  class="topbg B" style="width:300px">大小(M)</td>
              <td width="21%" align="center"  class="topbg B" style="width:240px">创建时间</td>
            </tr>
                    
                       <%=RetInfo("YX_UpFile","上传文件") %>
                       <%=RetfileInfo("Include/", "广告")%>
                   
            <tr>
              <td align="center" bgcolor="#f6f6f6">
               </td>
              <td height="25" align="left" bgcolor="#f6f6f6" style="width: 300px">
             系统空间共占用：  <%=retM(GetFilesSize(Syspath))%>M
              </td>
              <td bgcolor="#f6f6f6"></td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                          </td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 300px">
                              </td>
                          <td bgcolor="#f6f6f6">
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
<ChangHope:Admin_Btm ID="cha" runat="server" />
</body>
</html>
