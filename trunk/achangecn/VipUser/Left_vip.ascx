<%@ control language="C#" autoeventwireup="true" inherits="VipUser_Left_vip, App_Web_e2dz2mbn" %>
<script language="javascript" >
function showItem(id){
var t1=document.getElementById(id+"Item");
var t2=document.getElementById(id);
if(t1.style.display=="none"){
t1.style.display="";
t2.className="LiClose";
}else{
t1.style.display="none";
t2.className="LiOpen";
}
}
function showItems(id){
var t1=document.getElementById(id+"Item");
var t2=document.getElementById(id);
if(t1.style.display=="none"){
t1.style.display="";
t2.className="LiClose";
}else{
t1.style.display="none";
t2.className="LiOpen";
}
}
</script>
<DIV id=side_main>
    <DIV id=itemShow01></DIV>
    <DIV id=itemShow02></DIV>
	<DIV id=itemShow04></DIV>
	<DIV id=itemShow05></DIV>
	<DIV id=itemShow06></DIV>
	</DIV>
	<DIV id=buyerItem style="DISPLAY: none">
      <DIV class=DivMain>我是买家</DIV>
      <UL class=UlMain>
        <li><a id="buyer" style="COLOR: #ff4e00" href="yx_buygoods.aspx">发布求购物品 新</a></li>
        <li><a id="buyermng" style="COLOR: #ff4e00" href="yx_buyer.aspx">物品求购管理 新</a></li>
        <li><a id="buyerarea" style="COLOR: #ff4e00" href="../browse_offer.aspx">物品求购专区 新</a></li>
        <LI><A id=buyLink16 href="bought_commodity.aspx">已购买的物品</A> </LI>
        <LI><A id=buyLink17 href="buying_commodity.aspx">竞拍中的物品</A> </LI>
        <LI><A id=buyLink18 href="buyover_commodity.aspx">竞拍结束的物品</A></LI>
        <LI id=buyLink19><A href="leavingms.aspx">卖家回复/留言</A></LI>
        <LI class=LiFoot><A id=buyLink20 href="my_collect_list.aspx">我的收藏</A> </LI>
       </UL>
   </DIV>  
	 <DIV id=sellerItem style="DISPLAY: none">
      <DIV class=DivMain>我是卖家</DIV>
      <UL class=UlMain>
      <LI id=LI5><A style="COLOR: #ff4e00" href="YX_Consume.aspx">消费者保障计划 新 </A> </LI>
        <LI id=myShopLink>
            <asp:HyperLink ID="HyperLink1" runat="server">查看我的店铺</asp:HyperLink>
        </LI>
      </UL>
      <UL class=UlMain id=uploadItem>
        <LI class=LiEnd><A style="COLOR: #ff4e00" href="YX_sell.aspx" target=_blank>发布新物品</A>
        </LI>
      </UL>
      <UL class=UlMain>
        <LI><A id=sellLink2  href="selling_commodity.aspx">易出中的物品</A> </LI>
        <LI><A id=sellLink3  href="depot_commodity.aspx?iDepotType=1">仓库里的物品</A> 
        </LI>
      </UL>
      <UL>
        <LI class=LiOpen id=soldCommodity onclick="showItem('soldCommodity')"><A href="#">已产生的交易(全部)</A> </LI>
      </UL>
      <UL class=UlList id=soldCommodityItem style="DISPLAY: none">
        <LI id=sellLink4><A  href="sold_commodity.aspx?start=1">买家尚未付款</A> </LI>
        <LI id=sellLink5><A  href="sold_commodity.aspx?start=2">等待卖家发货</A> </LI>
        <LI id=sellLink6><A  href="sold_commodity.aspx?start=3">等待买家确认</A> </LI>
        <LI id=sellLink7><A  href="sold_commodity.aspx?start=4">已交易完成</A> </LI>
        <LI class=LiEnd id=sellLink8><A  href="sold_commodity.aspx?start=6">关闭的交易</A></LI>
      </UL>
      <asp:Panel ID="mg" runat="server">
      <UL>
        <LI class=LiOpen id=manageShop onclick="showItem('manageShop')"><A href="#">店铺管理</A> </LI>
      </UL>
      
      <UL class=UlList id=manageShopItem style="DISPLAY: none">
        <LI id=shopLink0><A href="YX_ShopBasis.aspx?Action=1">基本设置</A> </LI>
        <LI id=shopLink1><A href="YX_ShopBasis.aspx?Action=2">公告设置</A> </LI>
        <LI id=shopLink2><A  href="YX_ShopBasis.aspx?Action=3">美观设置</A> </LI>
        <LI id=shopLink3><A  href="YX_ShopBasis.aspx?Action=4">风格设置</A> </LI>
        <LI id=shopLink4><A  href="YX_ShopBasis.aspx?Action=5">友情链接</A> </LI>
        <LI id=shopLink5 class=LiEnd ><A  href="YX_ShopBasis.aspx?Action=6">自定义分类</A> 
        </LI>
       </UL>
       </asp:Panel>
       <UL>
        <LI class=LiOpen id=LI1><A href="Vipuseryz.aspx">申请店铺会员</A></LI>
      </UL>

      <UL>                        
        <LI class=LiOpen id=mess onclick=showItems("mess")><A href="leavingmsg_seller.aspx">买家留言/回复</A></LI>
      </UL>
      <UL class=UlList id=messItem style="DISPLAY: none">       
        <LI id=sellLink15><A  href="javascript:__doPostBack('LinkButton3','')">物品留言管理</A> 
         <LI id=sellLink14 class=LiEnd ><A  href="javascript:__doPostBack('LinkButton4','')">店铺留言管理</A> </LI>
        </LI>
      </UL>
     </DIV>	
   	<DIV id=CfItem style="DISPLAY: none">
	  <DIV class=DivMain>支付管理</DIV>
      <UL>
        <LI><A id=A1 href="https://www.alipay.com/user/user_register.htm" target="_blank">支付宝申请</A></LI> 
        <LI><A id=A4 href="http://merchant3.chinabank.com.cn/register.do" target="_blank">提现申请</A></LI> 
        <LI  id=A2><A  href="YX_alipay.aspx">支付宝/提现设置</A> 
        </LI>
        <li id=A3><a style="COLOR: #ff4e00" href="my_bankmng.aspx">银行卡管理 新</a></li>
      </UL>
      </DIV>
  <DIV id=credit style="DISPLAY: none">
      <DIV class=DivMain>信用管理</DIV>
      <UL>
        <LI id=LI2><A href="yx_cerditedit.aspx">评价管理</A></LI>
        <LI id=LI3><A href="law_list.aspx">投诉管理</A> 
     </UL>
  </DIV>
	
	 <DIV id=UserItem style="DISPLAY: none">
      <DIV class=DivMain>个人信息</DIV>
      <UL>
        <LI id=LI4><A style="COLOR: #ff4e00" href="YX_Entrust.aspx">增值服务</A> </LI>
        <LI id=LI23><A  
        href="Userpall.aspx">类别标记管理</A> 
        </LI>
        <LI id=userLink21><A  
        href="UserDetail.aspx">基本资料设置</A> 
        </LI>
        <LI id=userLink22><A 
        href="recvaddress_admin.aspx">收货地址设置</A> 
        </LI>
     </UL></DIV> 
	  <script language=javascript>
	  document.getElementById("itemShow01").innerHTML=document.getElementById("buyerItem").innerHTML;
	  document.getElementById("itemShow02").innerHTML=document.getElementById("sellerItem").innerHTML;
	  document.getElementById("itemShow04").innerHTML=document.getElementById("CfItem").innerHTML;
	  document.getElementById("itemShow05").innerHTML=document.getElementById("credit").innerHTML;
	  document.getElementById("itemShow06").innerHTML=document.getElementById("UserItem").innerHTML;	  
	  </script>
	  
