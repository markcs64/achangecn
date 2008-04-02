<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_labe_yx_labeview, App_Web_aqg4wnqc" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="7" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>易物网络</title>
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
          <td height="25" class="category t2" width=100>标签生成器管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="yx_labeviwe.aspx" runat="server">[自定义标签管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="Yx_edit.aspx" runat="server">[自定义标签修改]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink3" NavigateUrl="yx_labeadd.aspx" runat="server">[自定义标签添加]</asp:HyperLink>	
             		 
           </td>
        </tr>
 </table>  
     <asp:Panel ID="Panel1" runat="server" Width="100%">
     <table width="100%" height="25" border="0" cellpadding="2" cellspacing="2" >
            <tr>
            <td height="25" class="category" width=100>搜索</td>
            <td align="right" class="style3" style="width:100px">&nbsp;&nbsp;&nbsp;关键字：</td>
                <td align="left" class="style3" style="width:100px"><asp:TextBox ID="sj" runat="server" /></td>
              <td align="right" class="style3" style="width:100px">&nbsp;&nbsp;&nbsp;查询类别：</td>
                <td align="left" class="style3" style="width:100px">
                <select name="sclass" id="sclass" runat="server">
                <option value="1">标签ID</option>
                <option value="2">标签说明</option>
                <option value="3">标签调用值</option>
                </select>
                </td>
                <td align="right" class="style3" style="width:100px">&nbsp;&nbsp;&nbsp;标签类型：</td>
                <td align="left" class="style3" style="width:100px">
                <select name="lclass" id="lclass" runat="server">
                <option value="1">静态标签</option>
                <option value="2">动态标签</option>
                </select>
                </td>                 
                 <td align="left" class="style3">
                    <asp:Button ID="Button4" runat="server" Text="查　询" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="Button4_Click" />         
                      </td>  
            </tr>
          </table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding="1" CellSpacing="1" PageSize="20"  runat="server"  Width="100%" border=0 OnItemDataBound="dg1_ItemDataBound" DataKeyField="yx_id" OnSelectedIndexChanged="dg1_SelectedIndexChanged" > <HeaderStyle Height="30px"  CssClass="topbg" HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# Eval("YX_ID") %>"  />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" Width="100px" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >
			
				<%# Eval("YX_ID") %>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             

               <asp:TemplateColumn HeaderText="标签类型">
                <ItemTemplate ><%# Cmstypename(Convert.ToInt32(Eval("YX_type")))%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" Width="100px" />
             </asp:TemplateColumn>
            
			  <asp:TemplateColumn HeaderText="标签说明">
                <ItemTemplate ><a href="yx_labeviwe.aspx?YX_FX=<%# Eval("YX_ID")%>"><%# Eval("YX_name")%></a>
                </ItemTemplate>
                <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
            
			  <asp:TemplateColumn HeaderText="标签调用值">
                <ItemTemplate ><%# Eval("YX_value")%>
		       </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	 
             
            </Columns>
    <PagerStyle NextPageText="下一页" PrevPageText="上一页" />          
      </asp:DataGrid>
      
      
      </td>
  </tr>
  <tr>
    <td> <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#e7e7e7">
                
                  
              <td align="left" style="width: 50px">
  </td><td align="right" bgcolor="#e7e7e7">
                    <asp:DropDownList ID="DropDownList1" runat="server">                                   
                       <asp:ListItem Value="2">---批量删除---</asp:ListItem>                  
                    </asp:DropDownList>
                  </td>
                <td align="left" style="width: 100px"><asp:Button ID="Button2" runat="server" Text="执行操作" OnClientClick="return isExc()" OnClick="Button2_Click"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/>
                </td>
            </tr>
        </table></td>
  </tr>
</table>
 </asp:Panel>
    <asp:Panel ID="Panel2" Visible="false" runat="server" Width="100%">
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
<asp:DataGrid ID="DataGrid1" AutoGenerateColumns="False"  CellPadding="1" CellSpacing="1"  Border=0   runat="server"  Width="100%" OnItemDataBound="dg1_ItemDataBound" DataKeyField="yx_id" EnableTheming="True" >
                   <HeaderStyle Height="25px" CssClass=topbg HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# Eval("YX_ID") %>"  />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" Width="50px" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >
			
				<%# Eval("YX_ID") %>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" Width="50px" />
             </asp:TemplateColumn>
             
     			  <asp:TemplateColumn  HeaderText="参数说明" >
                <ItemTemplate><a href="yx_labeviwe.aspx?YX_FX=<%# Eval("YX_ID")%>"><%# Eval("YX_name")%></a>
                </ItemTemplate>
                <HeaderStyle CssClass="B" Width="200px" />
             </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="参数类型" >
                <ItemTemplate ><%# Cmstypename2(Convert.ToInt32(Eval("YX_tpye")))%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" Width="200px" />
             </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="参数列表">
                <ItemTemplate ><%# Cmstypename3(Convert.ToInt32(Eval("YX_id")),Convert.ToInt32(Eval("YX_tpye")))%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
            </Columns>
    <PagerStyle NextPageText=" 下一页" PrevPageText="上一页" />          
      </asp:DataGrid>
      
      </td>
  </tr>
  <tr>
    <td> <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#e7e7e7">
                
                  
              <td align="left" style="width: 50px">
  </td><td align="right" bgcolor="#e7e7e7">
                    <asp:DropDownList ID="DropDownList2" runat="server">                                   
                       <asp:ListItem Value="2">---批量删除---</asp:ListItem>                  
                    </asp:DropDownList>
                  </td>
                <td align="left" style="width: 100px"><asp:Button ID="Button1" runat="server" Text="执行操作" OnClientClick="return isExc()" OnClick="Button3_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" />
                </td>
            </tr>
        </table></td>
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
<Chp:ChangHope_btm ID="chp1" runat="server" />
</body>
</html>

