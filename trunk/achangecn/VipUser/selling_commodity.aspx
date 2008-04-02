<%@ page language="C#" autoeventwireup="true" inherits="VipUser_selling_commodity, App_Web_xyjt5bop" %>

<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
       <title>易出中的物品-会员管理中心-<%=SetUrl() %></title>
    <style type="text/css">
    #sellLink2 {
	background-color: #FEFAD8;
	color:#ffffff;
}
</style>
<script language="javascript" type="text/javascript" src="../include/JScript.js"></script>
<script language="javascript" type="text/javascript">
function iorderid(){
var cla=document.getElementById("iorder");
var tit=document.getElementById("sTitle");
document.getElementById("formsp").action="?sTitle="+escape(tit.value)+"&iorder="+cla.value;
document.formsp.submit();
}
function Repeat(){

document.getElementById("formsp").action="?Repeat=1";
document.formsp.submit();
}
function DoUpdateCommodityEntry(Flag ,yx_productid)
{
	if(Flag == 1)
		window.open("yx_editsell_type.aspx?YX_id="+yx_productid);
	else if(Flag == 2)
		alert("已经有人出价，不能再修改，谢谢合作！");
	return false;
}
function edittype(id)
{
window.open("yx_edittype.aspx?YX_id="+id);
}
</script>
</head>

<body>
 <uc:Top_vip ID="top_vip1" runat=server />
    <form id="formsp" name="formsp" runat="server">
   
    
<table class=user_table align=center>
  <tr>
    <td id=myLeft valign=top>
	<uc:Left_vip ID="left_vip2" runat=server />
	</td>
	 <TD width=5>&nbsp;</TD>
<TD vAlign=top>
      <DIV class=divMenu>
      <DIV class=DivMain>易出中的物品</DIV></DIV>
        
      <DIV class="tdSide tdMain desc" style="BACKGROUND: #f7f7f7"><B><SPAN 
      class=fontOrange>商城提醒您：</SPAN></B>请核对您发布的物品是否符合最新物品发布规则。 </DIV>
      <DIV class="tdMain lineRight desc">
      <INPUT style="MARGIN-RIGHT: 110px" onclick="Repeat()" type=button value=查询重名的物品> 
      <INPUT id=sTitle type=text name=sTitle> <SELECT 
      name=iorder id=iorderr> <OPTION value=0 selected>请选择排序方式</OPTION> <OPTION 
        value=1>上架时间从近到远</OPTION> <OPTION value=2>上架时间从远到近</OPTION> <OPTION 
        value=3>价格从高到低</OPTION> <OPTION value=4>价格从低到高</OPTION> <OPTION 
        value=5>浏览量从高到低</OPTION> <OPTION value=6>浏览量从低到高</OPTION> <OPTION 
        value=7>剩余件数从高到低</OPTION> <OPTION value=8>剩余件数从低到高</OPTION></SELECT>
        
          <input type="button"  value=" 查 询 " onclick="iorderid()" id="Button3">
      </DIV>
      <asp:DataGrid ID="dg1"  BorderStyle="Dashed"  runat="server" CellPadding="0"  Width="100%"  AutoGenerateColumns="False">
                   <HeaderStyle Height="25px" BackColor="#F4F4F4"    HorizontalAlign="Center"  CssClass="F"  />
                  
                 <ItemStyle BackColor="White" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate  >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value=<%#Eval("YX_ID") %> />
				 
				<%#dispic(Eval("YX_Spic").ToString())%>
						
                </ItemTemplate>
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="物品名称">
                <ItemTemplate >
			    <a href="../../ShowProduct.aspx?YX_MID=<%#Eval("YX_ID")%>"><%#Eval("YX_ProductName")%></a>
			    <%#gmfs(Convert.ToInt32(Eval("YX_progmfs")))%>
                    <%#Eval("yx_comity")%>
			    
                </ItemTemplate>
             <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
                      
             
			  <asp:TemplateColumn HeaderText="剩余时间">
                <ItemTemplate >
                    <%#ChangeHope.ChangeHope_CMS.sj(Eval("YX_addtime"),Convert.ToInt32(Eval("YX_Proyxq")))%>
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
              </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="当前价&lt;br&gt;起始价">
                <ItemTemplate >
                    <%#Convert.ToDouble(Eval("YX_ProPrice"))%>元
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="浏览">
                <ItemTemplate >
                    <%#Eval("YX_ViewNum")%>次
                 
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="剩余件数">
                <ItemTemplate>
                    <%#Eval("YX_KcNum")%>件<br>
                     
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
                       <asp:TemplateColumn HeaderText="物品推荐位">
                           <ItemTemplate>
                               <input type="button" id="xq" onclick="DoUpdateCommodityEntry('1',<%#Eval("YX_ID") %>);"  value="编辑详情"><br>
                               <input id="Button4"  onclick="edittype(<%#Eval("YX_ID") %>);" type="button" value="物品类别推荐" />
                               &nbsp;
                           </ItemTemplate>
                       </asp:TemplateColumn>
		              
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>
      <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:000000">
                    <Standny:WebPager id="WebPager1" runat="server" OnPageChanged="WebPager1_PageChanged" PageSize="10">
                    </Standny:WebPager>
                   
            
             
               </td>
          
              <td align="left" style="width: 50px">
  </td>
               
            </tr>
        </table>
      <DIV class="tdFull lineRight desc" 
      style="MARGIN-TOP: 10px; HEIGHT: 100%; TEXT-ALIGN: left">   
      <input type="checkbox" name="selectAll" value="checkbox" onClick="selectIt('document.formsp','YX_CH')"> 全选&nbsp;
      <input type="checkbox" name="invest" value="checkbox" onClick="selectIt('document.formsp','YX_CH')"> 反选
<INPUT onClick="document.getElementById('del').value='del';isdel()" type="submit" value="删除" name="submit22" id="Submit1"> 
<input type=hidden name=del>
           
          <asp:Button ID="Button1" runat="server" Text="店铺推荐" OnClick="Button1_Click" />
          <asp:Button ID="Button5" runat="server" Text="取消店铺推荐" OnClick="Button5_Click"  />
 <asp:Button ID="Button2" runat="server" Text="停止易出,放入仓库" OnClick="Button2_Click" />
</DIV>

      <DIV   class=note>提示：您进行更新操作后，通常要10－30分钟左右，这件物品的更新信息才会在店铺、分类、搜索等地方体现出来，请您耐心等候。</DIV></TD>
  </tr>
</table>

    
   
    </form>
        <uc:Foot_vip ID="foot_vip3" runat=server />
</body>
</html>
