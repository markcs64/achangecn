<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="gb2312" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>
<body>








<DIV id=Head> 
<DIV id=HeadTop>
<DIV id=Logo><a href="{$Hope_SitUrl$}" target=_top><img src="{$Hope_SitUrl$}{$Hope_Skin$}IMAGE/Logo.jpg"/></a></DIV>
<DIV id=HeadNavBar>
<UL>
  <LI class=NoSep><A href="../ProClass_list.aspx" 
  target=_parent>我要易入</A> </LI>
  <LI><A href="/vipuser/YX_sell.aspx" 
  target=_parent>我要易出</A> </LI>
  <LI><A id=MyTaoBao 
  href="/vipuser/default_vip.aspx" 
  target=_top>会员中心</A> </LI>
  <LI><A href="/bbs" target=_top>易物社区</A> </LI>
  <LI><A href="/help" target=_top>帮助中心</A>  </LI>
  <LI id=AdvanceBox>

  </LI></UL></DIV></DIV>
<DIV id=QuickLinks>
<UL>
  <LI><iframe src="{$Hope_SitUrl$}Login_Stat.aspx"  frameborder="0" width="200" height="25" scrolling="no" ></iframe>
 <!-- <script language="javascript" src="{$Hope_SitUrl$}Login_Stat.aspx" charset="utf-8" ></script>--></LI>
  <LI><A href="Hotsell.aspx" target=_parent>热点物品</A> </LI>
  <LI><A href="Shop.aspx" target=_parent>易物企业</A> </LI>
  <LI><A href="News/" target=_parent>易物资讯</A> </LI>
  <LI><A href="HighlevelSearch.aspx" target=_parent>高级搜索</A> </LI></UL></DIV>
<DIV class=hidden id=IptvCompanion>数字键--选择栏目 / 确定键--打开 / 左键--返回 / 右键--前进 / 
首页--数字键0</DIV>

<DIV id=ChannelMenu>
<UL id=ChannelMenuItems>
  <LI id=MenuHome><A href="{$Hope_SitUrl$}default.aspx" 
  target=_top><SPAN>首页</SPAN></A> </LI>
  <LI id=MenuMarket><A 
  href="{$Hope_SitUrl$}ProClass_list.aspx" 
  target=_top><SPAN>易物集市</SPAN></A> </LI>
  <LI id=kk2><A 
  href="{$Hope_SitUrl$}browse_offer.aspx" 
  target=_top><SPAN>我要易入</SPAN></A> </LI>
  <LI id=MenuMall><A 
  href="{$Hope_SitUrl$}shop.aspx" 
  target=_top><SPAN>易物企业</SPAN></A> </LI>
  <LI id=MenuSecondHand><A 
  href="{$Hope_SitUrl$}Productlist.aspx?distype=6" 
  target=_top><SPAN>闲置物资</SPAN></A> </LI>
  <LI id=MenuSale><A 
  href="Hotsell.aspx" 
  target=_top><SPAN>热点物品</SPAN></A> </LI>
  <LI id=MenuInfo>
  <UL>
    <LI id=MenuDigital><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=14" 
    target=_top><SPAN>手机数码</SPAN></A> </LI>
    <LI id=MenuLady><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=1" 
    target=_top><SPAN>女人用品</SPAN></A> </LI>
    <LI id=MenuMan><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=23" 
    target=_top><SPAN>男人用品</SPAN></A> </LI>
    <LI id=MenuSport><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=19" 
    target=_top><SPAN>运动用品</SPAN></A> </LI>
    <LI id=MenuLife><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=21" 
    target=_top><SPAN>家居用品</SPAN></A> </LI>
    <LI id=MenuBaby><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=26" 
    target=_top><SPAN>服饰</SPAN></A> </LI>
    <LI id=MenuCulture><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=6" 
    target=_top><SPAN>影视书籍</SPAN></A> </LI>
    <LI id=MenuGame><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=13" 
    target=_top><SPAN>游戏</SPAN></A> </LI>
    <LI id=MenuLottery><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=2" 
    target=_top><SPAN>关于易物</SPAN></A> </LI>
</UL></LI></UL>
<DIV id=SearchBox>
<DIV id=SearchInnerBox>
<DIV id=SearchHome>
<DIV id=SearchForm>
<form name=topsearch action="Productlist.aspx" onSubmit="return checkkeyword()"  method="method" style="margin:0px">
<SELECT id=keywordtype onchange=changeClass(this.value) name=keywordtype> 
  <OPTION value=product selected>搜索物品</OPTION> 
  <OPTION value=shop>搜索店铺</OPTION> 
  <OPTION value=nick>搜索物主</OPTION> 
  <OPTION value=info>搜索资讯</OPTION> 
</SELECT> 
<input type="hidden" value="0" name=SearchKind>
<input type="hidden" value="" name=SearchText>
<INPUT class=findInto id=keyword name=keyword> 
<span id=proclass>
                      <!--       #begin           -->
                      {$Hope_ClassName$}
                      <!--        #end          -->
</span>
<span id=newclass style="display:none">
                      <!--       #begin           -->
                      {#Hope_ArticleBigClass*62#}
                      <!--        #end          -->
</span>
<button type="submit"  OnClick="Verify" />搜 索</BUTTON> 
<A href="{$Hope_SitUrl$}HighlevelSearch.aspx" target=_top>[ 高级搜索 ]</A> 
<A href="/HELP" 
target=_blank>[ 使用帮助 ]</A> 
</FORM>

  

<script language="javascript">
function changeClass(str){
	if(str=="product"){
		document.topsearch.action='Productlist.aspx';
		document.getElementById("proclass").style.display="";
		document.getElementById("newclass").style.display="none";
	}else if (str=="shop"){
		document.topsearch.action='shop_search.aspx'
		document.getElementById("proclass").style.display="";
		document.getElementById("newclass").style.display="none";
	}else if (str=="nick"){
		document.topsearch.action='shop_search.aspx'
		document.getElementById("proclass").style.display="";
		document.getElementById("newclass").style.display="none";
	}else if (str=="info"){
		document.topsearch.action='News/search.aspx'
		document.getElementById("proclass").style.display="none";
		document.getElementById("newclass").style.display="";
	}
}
function checkkeyword(){
	if(document.topsearch.keyword.value==""){
		alert("请输入搜索关键字");
		document.topsearch.keyword.focus();
		return false;
	}
	document.topsearch.SearchText.value=document.topsearch.keyword.value;
	
}
</SCRIPT>
</DIV>
<DIV id=HotKeywords>
<UL>
  <LI class=B><A href="#" 
  target=_blank>热门搜索</A>： </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=mp3" 
  target=_blank>mp3</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=女鞋" 
  target=_blank>女鞋</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=手机" 
  target=_blank>手机</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=比基尼" 
  target=_blank>比基尼</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=魔兽世界" 
  target=_blank>魔兽世界</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=内存" 
  target=_blank>内存</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=个人闲置" 
  target=_blank>个人闲置</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=芭比娃娃" 
  target=_blank>芭比娃娃</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=特价机票" 
  target=_blank>特价机票</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=吊带裙" 
  target=_blank>吊带裙</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=沙滩裤" 
  target=_blank>沙滩裤</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=防晒霜" 
  target=_blank>防晒霜</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=数码相机" 
  target=_blank>数码相机</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=沙发" 
  target=_blank>沙发</A> 
</LI></UL></DIV></DIV></DIV></DIV>








</body>
</html>
