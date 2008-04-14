
{$Hope_Top$} 

<TITLE>{$Hope_Context$}{$Hope_Brand$}{$Hope_Type$}{$Hope_Title$}</TITLE>
<META http-equiv=keywords content={$Hope_KeysWord$} />
<meta name="description" content="{$Hope_SiteExc$}" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="shortcut icon" href="{$Hope_SitUrl$}favicon.ico" type="image/x-icon" />
<link href="{$Hope_SitUrl$}{$Hope_Skin$}/index.css" rel="stylesheet" charset="gb2312" type="text/css">

<link rel="stylesheet" href="{$Hope_SitUrl$}{$Hope_Skin$}CSS/v2.0.css" type="text/css">
<link rel="stylesheet" href="../Skin/skin5/CSS/sale.css" type="text/css">
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/yui-utilities.js" type=text/javascript></SCRIPT>
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/tbra.js" type=text/javascript></SCRIPT>
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/common.js" type=text/javascript></SCRIPT>
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/common(1).js" type=text/javascript></SCRIPT>
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/top_new.js" type=text/javascript></SCRIPT>


<div style=" margin:0 auto; width:900px; margin-bottom:5px; margin-top:2px;"><script src="Include/Ad/taobao_hotsell_top.JS" type="text/jscript"></script></div>
<DIV id=Content>
<DIV id="content_left"><!--左边整体定义开始-->
<DIV id=TopBrandSale>
<H2>易物公告</H2>
<UL style="padding-top:10px;">
{#Hope_Article*1,8,17,34,0,0,62#}
</UL>
</DIV>
<DIV id=SaleShopZone>
<H2>全场打折推荐</H2>
<UL style="padding-top:0px;">
{$ProductClass$}
</UL>
</DIV>
<DIV id=GroupBuyCategory>
<H2>企业查询</H2>
<UL>
<form action="shop_search.aspx" method="post" name="shop_search" onSubmit="return CheckValid()">
<table width="241" border="0" align="left" cellpadding="0" cellspacing="0" style="text-align:left">
  <tr>
    <td width="91">关键字:</td>
    <td width="150"> <input  name="keyword" type="text"size="12" maxlength="15"/></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="radio" name="keywordtype" checked="checked" value="1" />
      按企业名称</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td> <input type="radio" name="keywordtype" value="2"/>
      按物主昵称</td>
  </tr>
  <tr>
    <td>类&nbsp;&nbsp;&nbsp;&nbsp;别:</td>
    <td>{$Hope_ClassName$}</td>
  </tr>
  
  <tr>
    <td>城&nbsp;&nbsp;&nbsp;&nbsp;市:</td>
    <td> {#provinceselect2*#}</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="center"><input type="submit" value=" 搜 索 " /></td>
  </tr>
</table>
</form>
</UL>
<P class=More><A 
href="shop_search.aspx" 
target=_blank>更多&gt;&gt;</A></P></DIV>
</DIV><!--左边整体定义结束-->
<DIV id="content_right"><!--右边整体定义开始-->
<DIV id=MainPromotionBanner>
<script src="Include/Ad/taobao_hotsell_index.JS" type="text/jscript"></script>
</DIV>
<DIV id=HotSale>
<H2>热门易物</H2>
<UL id=HotSaleList style="margin-top:10px;">
{#Hope_Article*1,8,18,36,0,0,62#}
</UL>
</DIV>
<SCRIPT type=text/javascript>
			TB.widget.SimpleScroll.decorate('SaleShopZoneScroll', {speed:10, lineHeight:64});
		</SCRIPT>
<DIV id=FancyandSale>
<UL class=FancyandSaleMenu>
  <LI class=Selected><A onClick="return false" 
  href="x">推荐物品</A> 
  </LI>
  <LI><A onClick="return false" 
  href="x">热点物品</A> 
  </LI>
</UL>
<DIV id=SaleZone>
<H3>推荐物品</H3>
<UL>
{#Hope_Pro*6,2,15,0,1,85,85,2#} 
</UL>
<P class=Pic style="margin-top:10px;"><script src="Include/Ad/taobao_rmad.JS" type="text/jscript"></script></P>
</DIV>
<DIV id=FancyZone style="DISPLAY: none">
<H3>热点物品</H3>
<UL>
{#Hope_Pro*6,2,15,0,2,85,85,2#} 
</UL>


<P class=Pic></P>
</DIV>
</DIV>
<SCRIPT type=text/javascript>
			TB.widget.SimpleTab.decorate('FancyandSale',{currentClass:'Selected',eventType:'mouse',delay:0.2});
</SCRIPT>

<DIV id=GroupBuyContent>
<H2>最佳人气单品</H2>
<UL class=HotKeyWords>
  <LI><A 
  href="#" 
  target=_blank>更多</A> 
  </LI>
</UL>
<ul style="margin-top:20px;">
{#Hope_Pro*5,2,6,0,7,80,80,4#}
</UL>
</DIV>
<DIV id=LastGroupBuy>
<H2>新动态</H2>
<UL>
 
</UL>
<P "Pic MatrixSalePic">
<script src="Include/Ad/taobao_PPSC_right_middle_small_85X80.JS" type="text/jscript"></script>
</P>
</DIV>

</DIV><!--右边整体定义结束-->

</DIV>
<DIV class=HackBox></DIV>
{$Hope_Bottom$} 
</BODY></HTML>
