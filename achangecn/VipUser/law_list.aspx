<%@ page language="C#" autoeventwireup="true" inherits="VipUser_law_list, App_Web_xyjt5bop" %>
<%@ Import Namespace="System.Data"%>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>
<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link rel="stylesheet" href="../<%=SitSkinName() %>style/complain.css" type="text/css">
<link rel="stylesheet" href="../<%=SitSkinName() %>style/global_v2.css" type="text/css">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>投诉管理-会员管理中心-<%=SetUrl() %></title>
        <style type="text/css">
    #LI3 {
	background-color: #FEFAD8;
	color:#ffffff;
}
      @import url('../<%=SitSkinName() %>style/complain.css');
      .style1 {color: #FF0000}
      .ErrorMsg {
        padding:5px 5px 5px 25px;
	    border:1px solid #F60;
	    background:#FFF2E9 url(../<%=SitSkinName() %>style/standard_msg_error.gif) 5px 5px no-repeat;
	    color:#000;
      }
      .WarningMsg{
		padding:5px 5px 5px 25px;
		border:1px solid #00A8FF;
		background:#E2F5FF url(../<%=SitSkinName() %>style/standard_msg_warning.gif) 5px 5px no-repeat;	
		color:#000;
	  }
	  
table#menuToolBar tr td a,table#menuToolBar tr td b{
	position:relative;
	left:6px;
	top:2px;
}

td.init_menu a:hover,td.init_menu a:active,td.init_menu a:link{
	text-decoration:none;
}
table td.shrink_menu a,table td.spread_menu a,table td.init_menu a{
	color:#FFFFFF !important;
	cursor:pointer;
	display:block;
	font-size:16px;
	height:22px;
	margin:6px 0pt 0pt 18px;
	width:122px;
	padding:0;
}
td.shrink_menu{
	background:url(../<%=SitSkinName() %>IMAGE/mytaobaoarrow1.gif) left 0 no-repeat;
}
td.spread_menu{
	background:url(../<%=SitSkinName() %>IMAGE/mytaobaoarrow1.gif) left -28px no-repeat;
	}


td.init_menu{
	background:url(../<%=SitSkinName() %>IMAGE/membertitle20071228.gif) no-repeat left;
}
</style>
</head>
<script language="javascript" type="text/javascript" src="../../style/JScript.js"></script>
<script type="text/javascript" >
	function selectItem(item){
		var showitem = document.getElementById(item+"2");
		var hideitem = document.getElementById(item+"1");
		if(showitem!=null && hideitem!=null){
			showitem.style.display="";
			hideitem.style.display="none";
		}
	}
</script>
<body> 
<uc:Top_vip ID="top_vip1" runat="server" />
    <form id="form1" runat="server">
 <table  class="user_table" align=center>            
  <tr>
    <td id=myLeft valign=top style="width: 41px">
	<uc:Left_vip ID="left_vip2" runat="server" />
	</td>
	 <TD style="width: 5px"></TD>
	 
	<td valign=top>
	            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table border="0" align="left" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="1"><img src="../<%=SitSkinName() %><%=GetHeard("tj") %>" width="3" height="25" alt="" /></td>
                      <td width="120" align="center" background="../<%=SitSkinName() %><%=GetMid("tj") %>"><font color="#FFFFFF" span="span" class="C"><a href="?falg=tj">投诉/举报</a></font></td>
                      <td width="1"><img src="../<%=SitSkinName() %><%=GetFoot("tj")%>" width="7" height="25" alt="" /></td>
                    </tr>
                  </table>
                  <table border="0" align="left" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="1"><img src="../<%=SitSkinName() %><%=GetHeard("ts") %>" width="3" height="25" alt="" /></td>
                      <td width="120" align="center" background="../<%=SitSkinName() %><%=GetMid("ts") %>"><font color="#FFFFFF"><span class="C"><a href="?falg=ts">投诉</a></span></font></td>
                      <td width="1"><img src="../<%=SitSkinName() %><%=GetFoot("ts")%>" width="7" height="25" alt="" /></td>
                    </tr>
                  </table>
                  <table border="0" align="left" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="1"><img src="../<%=SitSkinName() %><%=GetHeard("jb") %>" width="3" height="25" alt="" /></td>
                      <td width="120" align="center" background="../<%=SitSkinName() %><%=GetMid("jb") %>"><font color="#FF0000"><span class="C"><a href="?falg=jb">举报</a></span></font></td>
                      <td width="1"><img src="../<%=SitSkinName() %><%=GetFoot("jb")%>" width="7" height="25" alt="" /></td>
                    </tr>
                  </table></td>
              </tr>
            </table>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="4" bgcolor="#1E88C1"></td>
              </tr>
            </table>
	<asp:Panel ID="paf" runat="server">
<table>
						<tr>
							<td valign="top">
								<table width="100%" border="0" cellpadding="0" cellspacing="0">
</table>

            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="5"></td>
              </tr>
            </table>
              <div id="ContentFramework">
              <div id="left">
                <div id="TitleLeft"><span>买卖双方在交易环节中用于检举对方违规行为、协助解决交易纠纷的一种途径。</span></div>
                <div class="Wrapper">
                  <table  width="97%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC"  summary="作为买家收到的评价" align="center">
                    <tr>
                      <th scope="col" >&nbsp;</th>
                      <th scope="col">处理中</th>
                      <th scope="col">已结束</th>
                    </tr>
                    <tr>
                      <th scope="row" width="34%">收到的投诉</th>
                      <td>
                      	                      	    <%=tszlose() %>
                                              </td>
                      <td>
                      	                      	   <%=tszsescc() %>
                        	                  </td>
                    </tr>
                    <tr>
                      <th scope="row">作出的投诉</th>
                      <td>
                      	                      	    <%=tsslose() %>
                        	                  </td>
                      <td>
                      	                      	   <%=tsssescc() %>
                        	                  </td>
                    </tr>
                  </table>
                </div>
                <p><a href="?falg=ts">查看详细信息&gt;&gt;</a></p>
                <div class="WorkBox">
                  <p style="font-size:14px; font-weight:bold; color:#f60;">发起投诉</p>
                  <p>如果您在交易中产生纠纷，您可以：<br />
                    <br />
                    1.在“<a href="bought_commodity.aspx">已买到的宝贝</a>”相应交易中投诉卖家；<br />
                    2.在“<a href="sold_commodity.aspx?start=4">已卖出的宝贝</a>”相应交易中投诉买家。</p>
                </div>
              </div>
              <div id="right">
                <div id="TitleRight"><span>与被举报人无实际交易产生，但发现其在官方网上有违规情况，可以通过举报途径告知官方，举报为匿名。</span></div>
                <div class="Wrapper">
                  <table  width="97%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC"  summary="作为买家收到的评价" align="center">
                    <tr>
                      <th scope="col"></th>
                      <th scope="col">处理中</th>
                      <th scope="col">已结束</th>
                    </tr>
                    <tr>
                      <th scope="row" width="34%">收到的举报</th>
                      <td>
                      	                      	    <%=jbslose() %>
                        	                  </td>
                      <td>
                      	                      	   <%=jbssescc() %>
                        	                  </td>
                    </tr>
                    <tr>
                      <th scope="row">作出的举报</th>
                      <td>
                      	                      	     <%=jbzlose() %>
                        	                  </td>
                      <td>
                      	                      	   <%=jbzsescc() %>
                                              </td>
                    </tr>
                  </table>
                </div>
                <p><a href="?falg=jb">查看详细信息&gt;&gt;</a></p>
                <div class="WorkBox">
                  <p style="font-size:14px; font-weight:bold; color:#f60;">发起举报</p>
                  <p>1.举报违规商品，请到该商品详细页面，点击页面右上角的“举报该商品”进行举报。<a href="../help/ArticleList.aspx?Flag=1&ClassId=30" target="_blank">如何举报</a>？<br />
                    <br />
                    2.举报会员其他问题，请在此点击
                    <a href='?falg=shit' target="_blank" >举报会员</a>
                  </p>
                </div>
              </div>
              <div class="HackBox"></div>
            </div>
            <p style=" text-indent: 25px; line-height:18px; font-size:12px; color:red;">为了改进我们投诉举报服务的质量，并最终为您提供更好的服务，请您在百忙之余别忘了积极参与我们的投诉举报满意度调查哦。</p>
            <div id="BottomBox" align="center">请客观地向官方反映您所遇到的真实情况，以共同维护一个诚信和公平的购物环境。</div>

							</td>
						</tr>
					</table>
	</asp:Panel>
	<asp:Panel ID="pas" runat="server">
         <asp:Panel ID="ts" runat="server">
         <div id="WarningBox" class="Complain">
              <ul>
                <li>1.投诉是买卖双方在交易环节中用于检举对方违规行为、协助解决交易纠纷的一种途径。</li>
                <li>2.如您想投诉交易对方，请在“<a href="bought_commodity.aspx">已买到的宝贝</a>”相应交易中投诉卖家；在“<a href="sold_commodity.aspx?start=4">已卖出的宝贝</a>”相应交易中投诉买家。</li>
			</ul>
            </div>
          <div>
          <table width="100%" border="0" cellpadding="0" cellspacing="0" id="Table2">
      <tr>
        <td width=140 id=top1 class="menuHere">
            <asp:LinkButton ID="LinkButton1" CssClass="toptitle" runat="server" OnClick="LinkButton1_Click">作出的投诉</asp:LinkButton>
        </td><td width=3></td>
        <td width=140 id=top2 class="menuWill">
            <asp:LinkButton ID="LinkButton2" CssClass="toptitle" runat="server" OnClick="LinkButton2_Click">收到的投诉</asp:LinkButton>
        </td><td width=3></td>
        <td width=140>
         
        </td><td width=3></td>
        <td width=140 >
           
         </td>
         <td>&nbsp;</td>
         </tr></table></div>
       <asp:Panel ID="Panel1" runat="server">
          <div style="margin-left:0px;margin-top:0px;">
<asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="20"  runat="server" CellPadding="0" CellSpacing="0"  Width="100%" AllowPaging="True" OnItemDataBound="dg1_ItemDataBound" >
                   <HeaderStyle Height="25px"  CssClass="topbg"  HorizontalAlign="Center" BackColor="Info" />
                  
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%#Eval("yx_id") %>" />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="编号">
                <ItemTemplate >
				<%#Eval("yx_id")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="商品名称">
                <ItemTemplate >
				<%#Eval("yx_productname")%>			
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
               <asp:TemplateColumn HeaderText="投诉原因">
                <ItemTemplate >
				<%#Eval("yx_tscontent")%>			
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="状态">
                          <ItemTemplate >
                              <%#Get_Sart(Convert.ToInt32( Eval("yx_tszt")))%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B" />
                      </asp:TemplateColumn>
                          <asp:TemplateColumn HeaderText="结果">
                <ItemTemplate >
			<%#Eval("yx_tsjg")%>	
             </ItemTemplate>
                 <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="时间">
                <ItemTemplate >				
				<%#Eval("yx_tsdate")%>	
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="操作">
                <ItemTemplate >
				<a href="?YX_MID=<%#Eval("YX_ID")%>"><img src="../IMAGES/icon_edit.gif" style="border:0" alt="编辑" /></a>
				 <a href="?falg=Del&YX_MID=<%#Eval("YX_ID")%>" onClick="return isdel()"><img src="../IMAGES/no.gif" style="border:0" alt="删除" /></a>
				
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			              
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
    <td> <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:000000">
                    <asp:Label ID="tsz1" CssClass="font1" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="tsz2" runat="server" Text="Label"></asp:Label>  &nbsp; 
                   <asp:HyperLink ID="tszstart" runat="server" ForeColor="#000000">首　页</asp:HyperLink>
                      &nbsp;
                    <asp:HyperLink ID="tszprev" runat="server" ForeColor="#000000"> 上一页</asp:HyperLink>
                    &nbsp;
                      <asp:HyperLink ID="tsznext" runat="server" ForeColor="#000000">下一页</asp:HyperLink>
                     &nbsp;
                      <asp:HyperLink ID="tszmax" runat="server" ForeColor="#000000">末　页</asp:HyperLink>
                    <span class="font1">转向</span>         
                    <asp:DropDownList ID="tsziPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="tszsic">
              </asp:DropDownList> <input id="chkall" type="checkbox" onClick="CheckAll(this.form)" style="border:0 " />全选</td>
                <td align="center" style="width: 50px"><asp:Button ID="tsz" runat="server" Text="批量删除" OnClientClick="return isExc()"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="tsz_Click"  />
                </td>
            </tr>
        </table></td>
  </tr>
        </table>
  
           <div class="note" style="width:615px">您可以在交易过程中，对交易对方的行为作出投诉和举报。买家如何投诉？卖家如何投诉？如何举报？ </div>
           </div>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="false" >
          <div style="margin-left:0px;margin-top:0px;">
              <asp:DataGrid ID="dg2" AutoGenerateColumns="False" PageSize="20"  runat="server" CellPadding="0" CellSpacing="0"  Width="100%" AllowPaging="True" OnItemDataBound="dg2_ItemDataBound" >
                  <HeaderStyle Height="25px"  CssClass="topbg"  HorizontalAlign="Center" BackColor="Info" />
                  <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                  <Columns>
                      <asp:TemplateColumn HeaderText="选择">
                          <ItemTemplate >
                              <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%#Eval("yx_id") %>" />
                          </ItemTemplate>
                          <HeaderStyle CssClass="B" />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="编号">
                          <ItemTemplate >
                              <%#Eval("yx_id")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B" />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="商品名称">
                          <ItemTemplate >
                              <%#Eval("yx_productname")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B" />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="投诉原因">
                          <ItemTemplate >
                              <%#Eval("yx_tscontent")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B" />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="状态">
                          <ItemTemplate >
                              <%#Get_Sart(Convert.ToInt32( Eval("yx_tszt")))%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B" />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="结果">
                          <ItemTemplate >
                              <%#Eval("yx_tsjg")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B" />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="时间">
                          <ItemTemplate >
                              <%#Eval("yx_tsdate")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B" />
                      </asp:TemplateColumn>
                  </Columns>
                  <PagerStyle Visible="False" />
              </asp:DataGrid>
       <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                    <tr bgcolor="#E7E7E7">
                                        <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:000000">
                                            <asp:Label ID="tss1" runat="server" CssClass="font1" Text="Label"></asp:Label>
                                            <asp:Label ID="tss2" runat="server" Text="Label"></asp:Label>
                                            &nbsp;
                                            <asp:HyperLink ID="tssstart" runat="server" ForeColor="#000000">首　页</asp:HyperLink>
                                            &nbsp;
                                            <asp:HyperLink ID="tssprev" runat="server" ForeColor="#000000"> 上一页</asp:HyperLink>
                                            &nbsp;
                                            <asp:HyperLink ID="tssnext" runat="server" ForeColor="#000000">下一页</asp:HyperLink>
                                            &nbsp;
                                            <asp:HyperLink ID="tssmax" runat="server" ForeColor="#000000">末　页</asp:HyperLink>
                                            <span class="font1">转向</span>
                                            <asp:DropDownList ID="tssiPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="tsssic">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr> 
        </table>
  
           <div class="note" style="width:615px">
               您可以在交易过程中，对交易对方的行为作出投诉和举报。买家如何投诉？卖家如何投诉？如何举报？
           </div>	
    </div>
       
        </asp:Panel>
        </asp:Panel>
         <asp:Panel ID="jb" runat="server">
         <div id="WarningBox" class="Accuse">
              <ul>
                <li>1.举报是与被举报人无实际交易产生，但发现其在官方网上有违规情况时告知官方的途径，官方的举报制度规定为匿名举报。</li>
                <li>2.如您想举报违规商品，请到该商品详细页面，点击页面右上角的“举报该商品”进行举报。若想发起针对会员的举报请点击：<a href='?falg=shit' target="_blank" >举报会员</a></li>
              </ul>
            </div>
         <div>
          <table width="100%" border="0" cellpadding="0" cellspacing="0" id="Table1">
      <tr>
        <td width=140 id=top3 class="menuHere">
            <asp:LinkButton ID="LinkButton3" CssClass="toptitlehover" runat="server" OnClick="LinkButton3_Click">作出的举报</asp:LinkButton>
        </td><td width=3></td>
        <td width=140 id=top4 class="menuWill">
            <asp:LinkButton ID="LinkButton4" CssClass="toptitle" runat="server" OnClick="LinkButton4_Click">收到的举报</asp:LinkButton>
        </td><td width=3></td>
        <td width=140>
        </td><td width=3></td>
        <td width=140>
         </td>
         <td>&nbsp;</td>
         </tr></table></div>
        <asp:Panel ID="Panel3" runat="server" Height="50px" Width="100%" Visible="false">
          <div style="margin-left:0px;margin-top:0px;">
             <asp:DataGrid id="dg3" runat="server" OnItemDataBound="dg3_ItemDataBound" Width="100%" AutoGenerateColumns="False" PageSize="20" AllowPaging="True" CellSpacing="0" CellPadding="0">
                  <HeaderStyle Height="25px"  CssClass="topbg"  HorizontalAlign="Center" BackColor="Info"  />
                  <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center"  />
                  <Columns>
                      <asp:TemplateColumn HeaderText="选择">
                          <ItemTemplate >
                              <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value='<%#Eval("yx_id") %>'  />
                          </ItemTemplate>
                          <HeaderStyle CssClass="B"  />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="编号">
                          <ItemTemplate >
                              <%#Eval("yx_id")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B"  />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="被举报人">
                          <ItemTemplate >
                              <%#Eval("yx_user")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B"  />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="举报原因">
                          <ItemTemplate >
                              <%#Eval("yx_tscontent")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B"  />
                      </asp:TemplateColumn>
                       <asp:TemplateColumn HeaderText="状态">
                          <ItemTemplate >
                              <%#Get_Sart(Convert.ToInt32( Eval("yx_tszt")))%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B" />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="处理结果">
                          <ItemTemplate >
                              <%#Eval("yx_tsjg")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B"  />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="时间">
                          <ItemTemplate >
                              <%#Eval("yx_tsdate")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B"  />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="操作">
                          <ItemTemplate >
                              <a href='?YX_MID=<%#Eval("YX_ID")%>'>
                                  <img src="../IMAGES/icon_edit.gif" style="border:0" alt="编辑"  /></a> <a href='?falg=Del&YX_MID=<%#Eval("YX_ID")%>' onClick="return isdel()">
                                      <img src="../IMAGES/no.gif" style="border:0" alt="删除"  /></a>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B"  />
                      </asp:TemplateColumn>
                  </Columns>
                  <PagerStyle Visible="False"  />
              </asp:DataGrid>
                   <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                    <tr bgcolor="#E7E7E7">
                                        <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:000000">
                                            <asp:Label ID="jbz1" runat="server" CssClass="font1" Text="Label"></asp:Label>
                                            <asp:Label ID="jbz2" runat="server" Text="Label"></asp:Label>
                                            &nbsp;
                                            <asp:HyperLink ID="jbzstart" runat="server" ForeColor="#000000">首　页</asp:HyperLink>
                                            &nbsp;
                                            <asp:HyperLink ID="jbzprev" runat="server" ForeColor="#000000"> 上一页</asp:HyperLink>
                                            &nbsp;
                                            <asp:HyperLink ID="jbznext" runat="server" ForeColor="#000000">下一页</asp:HyperLink>
                                            &nbsp;
                                            <asp:HyperLink ID="jbzmax" runat="server" ForeColor="#000000">末　页</asp:HyperLink>
                                            <span class="font1">转向</span>
                                            <asp:DropDownList ID="jbziPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="jbzsic">
                                            </asp:DropDownList>
                                            <asp:Button ID="jbz" runat="server" Text="批量删除" OnClientClick="return isExc()"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="jbz_Click"  /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr> 
        </table>
           <div class="note" style="width:615px">
               您可以在交易过程中，对交易对方的行为作出投诉和举报。买家如何投诉？卖家如何投诉？如何举报？ 
           </div>	
    </div>
       
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server"  Width="100%" Visible="false">
          <div style="margin-left:0px;margin-top:0px;">
             <asp:DataGrid id="dg4" runat="server" OnItemDataBound="dg4_ItemDataBound" Width="100%" AutoGenerateColumns="False" PageSize="20" AllowPaging="True" CellSpacing="0" CellPadding="0">
                  <HeaderStyle Height="25px"  CssClass="topbg"  HorizontalAlign="Center" BackColor="Info"  />
                  <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center"  />
                  <Columns>
                      <asp:TemplateColumn HeaderText="选择">
                          <ItemTemplate >
                              <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value='<%#Eval("yx_id") %>'  />
                          </ItemTemplate>
                          <HeaderStyle CssClass="B"  />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="编号">
                          <ItemTemplate >
                              <%#Eval("yx_id")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B"  />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="举报人">
                          <ItemTemplate >
                              <%#Eval("yx_user")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B"  />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="举报原因">
                          <ItemTemplate >
                              <%#Eval("yx_tscontent")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B"  />
                      </asp:TemplateColumn>
                       <asp:TemplateColumn HeaderText="状态">
                          <ItemTemplate >
                              <%#Get_Sart(Convert.ToInt32( Eval("yx_tszt")))%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B" />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="处理结果">
                          <ItemTemplate >
                              <%#Eval("yx_tsjg")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B"  />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="时间">
                          <ItemTemplate >
                              <%#Eval("yx_tsdate")%>
                          </ItemTemplate>
                          <HeaderStyle CssClass="B"  />   
                      </asp:TemplateColumn>
                  </Columns>
                  <PagerStyle Visible="False"  />
              </asp:DataGrid>
                   <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                    <tr bgcolor="#E7E7E7">
                                        <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:000000">
                                            <asp:Label ID="jbs1" runat="server" CssClass="font1" Text="Label"></asp:Label>
                                            <asp:Label ID="jbs2" runat="server" Text="Label"></asp:Label>
                                            &nbsp;
                                            <asp:HyperLink ID="jbsstart" runat="server" ForeColor="#000000">首　页</asp:HyperLink>
                                            &nbsp;
                                            <asp:HyperLink ID="jbsprev" runat="server" ForeColor="#000000"> 上一页</asp:HyperLink>
                                            &nbsp;
                                            <asp:HyperLink ID="jbsnext" runat="server" ForeColor="#000000">下一页</asp:HyperLink>
                                            &nbsp;
                                            <asp:HyperLink ID="jbsmax" runat="server" ForeColor="#000000">末　页</asp:HyperLink>
                                            <span class="font1">转向</span>
                                            <asp:DropDownList ID="jbsiPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="jbssic">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr> 
        </table>
           <div class="note" style="width:615px">
               您可以在交易过程中，对交易对方的行为作出投诉和举报。买家如何投诉？卖家如何投诉？如何举报？ 
           </div>	
    </div>
       
        
        </asp:Panel>
        </asp:Panel>
	</asp:Panel>
	<asp:Panel ID="pet" runat="server">
	<div id="ApproachBox">
	<ol>
		<li class="Choose">1.选择举报类型
		</li>
		<li>2.填写举报内容
		</li>
		<li>3.举报完成
		</li>
	</ol>
	<div class="HackBox">
	</div>
</div>
<div id="WarningBox" class="Warning">
	<ul>
		<li>1.请提供充分的证据以确保举报成功，请珍惜您的会员权利，帮助官方店小二更好地管理网站；
		</li>
		<li>2.您每天只能举报一次；一周之内，对同一会员只能举报一次。（出售禁售品的举报例外）
		</li>
		<li>3.举报仅针对商品或会员本身，如需处理交易中产生的纠纷，请选择投诉；
		</li>	

		<li>
											4.如果以下没有相符合的举报类型，请查看<a href='?falg=shit' target="_blank" >举报会员</a>。
		</li>
	</ul>
</div>
	<h3 id="AccuseTitle">选择举报类型
	</h3>
	<div id="SortSelectList">
		<ul>
							<li>
					<span>支付方式不符商品
					</span>卖家在商品信息中拒绝使用支付宝或者违反支付宝流程，官方网判定其商品为支付方式不符商品。<a href="../help/ArticleList.aspx?Flag=1&ClassId=30" target="_blank">查看详细</a>
					<samp>
													<a href='?falg=context&type=1&YX_MID=<%=proid() %>&Proname=<%=proname() %>'>
								<img src='../IMAGES/023.gif' title="发起举报" />
							</a>
												</samp>
				</li>
							<li>
					<span>标题、图片、描述等不一致商品
					</span>发布的商品标题、图片、描述等信息缺乏或者多种信息相互不一致的情况。<a href="../help/ArticleList.aspx?Flag=1&ClassId=30" target="_blank">查看详细 </a>
					<samp>
													<a href='?falg=context&type=2&YX_MID=<%=proid() %>&Proname=<%=proname() %>'>
								<img src='../IMAGES/023.gif' title="发起举报" />
							</a>
												</samp>
				</li>
							<li>
					<span>出售禁售品
					</span>销售官方网禁止和限制交易规则下所规定的所有商品。<a href="../help/ArticleList.aspx?Flag=1&ClassId=30" target="_blank">查看详细 </a>
					<samp>
													<a href='?falg=context&type=3&YX_MID=<%=proid() %>&Proname=<%=proname() %>'>
								<img src='../IMAGES/023.gif' title="发起举报" />
							</a>
												</samp>
				</li>
							<li>
					<span>放错类目/属性
					</span>商品属性和发布时选择所属类目不一致，或将商品错误放置在官方网推荐各类目下，官方网判定为严重放错类目商品。<a href="../help/ArticleList.aspx?Flag=1&ClassId=30" target="_blank">查看详细 </a>
					<samp>
													<a href='?falg=context&type=4&YX_MID=<%=proid() %>&Proname=<%=proname() %>'>
								<img src='../IMAGES/023.gif' title="发起举报" />
							</a>
												</samp>
				</li>
							<li>
					<span>重复铺货
					</span>商品完全相同以及重要属性完全相同的，只允许用一种出售方式（即：一口价或拍卖）发布一次。违反以上规则，即判定为重复发布。<a href="../help/ArticleList.aspx?Flag=1&ClassId=30" target="_blank">查看详细 </a>
					<samp>
													<a href='?falg=context&type=5&YX_MID=<%=proid() %>&Proname=<%=proname() %>'>
								<img src='../IMAGES/023.gif' title="发起举报" />
							</a>
												</samp>
				</li>
							<li>
					<span>广告商品
					</span>发布没有意愿出售的商品或者纯信息的商品，或者以批发、代理、招商等形式发布的商品。<a href="../help/ArticleList.aspx?Flag=1&ClassId=30" target="_blank">查看详细 </a>
					<samp>
													<a href='?falg=context&type=6&YX_MID=<%=proid() %>&Proname=<%=proname() %>'>
								<img src='../IMAGES/023.gif' title="发起举报" />
							</a>
												</samp>
				</li>
							<li>
					<span>滥用关键字
					</span>卖家在所出售的商品中故意添加与本商品无关或官方网正在热推的关键字，扰乱官方网正常运营秩序的行为，官方网判定其相关商品为乱用关键字商品。<a href="../help/ArticleList.aspx?Flag=1&ClassId=30" target="_blank">查看详细 </a>
					<samp>
													<a href='?falg=context&type=7&YX_MID=<%=proid() %>&Proname=<%=proname() %>'>
								<img src='../IMAGES/023.gif' title="发起举报" />
							</a>
												</samp>
				</li>
					</ul>
		<div class="HackBox">
		</div>
	</div>
	<div id="BottomBox" align="center">请客观地向官方反映您所遇到的真实情况，以共同维护一个诚信和公平的购物环境。
</div>             
	</asp:Panel>
<asp:Panel ID="tsneir" runat="server">
	<div id="ApproachBox">
		<ol>
			<li>1.选择举报类型
			</li>
			<li class="Choose">2.填写举报内容
			</li>
			<li>3.举报完成
			</li>
		</ol>
		<div class="HackBox">
		</div>
	</div>
	<div id="WarningBox" class="Accuse">
		<ul>
			<li>1.请提供充分的证据以确保举报成功，请珍惜您的会员权利，帮助官方店小二更好地管理网站；
			</li>
							<li>2.您只能对同一商品投诉一次；
			</li>
						
			<li>3.举报仅针对商品或会员本身，如需处理交易中产生的纠纷，请选择投诉；
			</li>		
			<li>4.
				<span class="H">*</span> 号为必填项。
			</li>
		</ul>
	</div>
	<h3 id="H3_1">投诉主标题
	</h3>
		<div id="ImportBox">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">			
			<tr>
				<td class="Su">被投诉人:</td>
				<td class="Su1" colspan="2">
                    <asp:TextBox ID="Textname" runat="server"></asp:TextBox><a href='../showshop.aspx?uin=<%=username() %>' target="_blank"><%=username() %></a></td>
			</tr>
			<tr>
				<td class="Su">相关宝贝:</td><td class="Su1" colspan="2">
                    <asp:HiddenField ID="Hid_proid" runat="server" />
                    <a href='../ShowProduct.aspx?YX_MID=<%=proid() %>' target="_blank"><%=proname() %></a></td>
			</tr>
			<tr>
				<td  class="Su" valign="top">举报类型:				</td>
				<td class="Su1" colspan="2">
                    <asp:HiddenField ID="Hidd_type" runat="server" />
															<%=types() %>
													<p class="G" style="margin:4px;padding:3px;">如果以上类型不是你想要的,请
					<a href='?falg=<%=Jump() %>&YX_MID=<%=proid() %>&Proname=<%=proname() %>'>返回上一层					</a>选择其他投诉类型。</p>				</td>
    		</tr>
																		<tr>
            					
																			<td class="Su" valign="top">
    										 证据:										</td>
										<td class="Su1" ><asp:TextBox ID="text" runat="server" Height="178px" Width="300px" TextMode="MultiLine"/>
       	  <tr>
        		<td colspan="3" class="Su3">
        			<asp:Button ID="But_add" runat="server" Text="提    交" OnClick="But_add_Click" /></td>
        	</tr>
    	</table>
<div id="BottomBox" align="center">请客观地向官方反映您所遇到的真实情况，以共同维护一个诚信和公平的购物环境。
</div>
</asp:Panel>
<asp:Panel ID="shit" runat="server">
<div id="ApproachBox">
	<ol>
		<li class="Choose">1.选择举报类型
		</li>
		<li>2.填写举报内容
		</li>
		<li>3.举报完成
		</li>
	</ol>
	<div class="HackBox">
	</div>
</div>
<div id="WarningBox" class="Warning">
	<ul>
		<li>1.请提供充分的证据以确保举报成功，请珍惜您的会员权利，帮助官方店小二更好地管理网站；
		</li>
		<li>2.您只能举报一次；对同一会员只能举报一次。（出售禁售品的举报例外）
		</li>
		<li>3.举报仅针对商品或会员本身，如需处理交易中产生的纠纷，请选择投诉；
		</li>	

		<li>
											4.如果以下没有相符合的举报类型，请查看<a href="?falg=ts" target="_blank">举报商品</a>。
					</li>
	</ul>
</div>
	<h3 id="AccuseTitle">选择举报类型
	</h3>
	<div id="SortSelectList">
		<ul>
							<li>
					<span>炒作信用度
					</span>对于买、卖双方以抬高信用为目的，或双方在无实际成交的情况下作出好评的行为。即为“炒作信用度”。<a href="../help/ArticleList.aspx?Flag=1&ClassId=30" target="_blank">查看详细 </a>
					<samp>
														<a href='?falg=context&type=8'>
									<img src='../IMAGES/023.gif' title="发起举报" />
								</a>
											</samp>
				</li>
							<li>
					<span>哄抬价格
					</span>利用其他会员名，故意抬高自己物品的价格；或人为增加自己物品的出价次数，并使之成为抢手物品的行为。即为“哄抬价格”。<a href=../help/ArticleList.aspx?Flag=1&ClassId=30 target="_blank">查看详细 </a>
					<samp>
														<a href='?falg=context&type=9'>
									<img src='../IMAGES/023.gif' title="发起举报" />
								</a>
											</samp>
				</li>
							<li>
					<span>图片发布侵权
					</span>未经允许使用图片所有者的商品图片的行为。即为“图片发布侵权”。<a href=../help/ArticleList.aspx?Flag=1&ClassId=30 target="_blank">查看详细 </a>
					<samp>
														<a href='?falg=context&type=10'>
									<img src='../IMAGES/023.gif' title="发起举报" />
								</a>
											</samp>
				</li>
							<li>
					<span>发布广告信息
					</span>使用官方网提供的信息沟通渠道发布广告信息或诱导会员注册其它网站的行为。即为“发布广告信息”。<a href=../help/ArticleList.aspx?Flag=1&ClassId=30 target="_blank">查看详细 </a>
					<samp>
														<a href='?falg=context&type=11'>
									<img src='../IMAGES/023.gif' title="发起举报" />
								</a>
											</samp>
				</li>
					</ul>
		<div class="HackBox">
		</div>
	</div>
	<div id="BottomBox" align="center">请客观地向官方反映您所遇到的真实情况，以共同维护一个诚信和公平的购物环境。
</div>
</asp:Panel>
				</td>
			</tr>
			
			<tr>
				<td>
					
      <div class="HackBox"></div>
				</td>
			</tr>
			
		</table>
    <uc:Foot_vip ID="foot_vip3" runat=server />
     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
