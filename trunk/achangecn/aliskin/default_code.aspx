<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>{$Hope_Title$}</TITLE>
<META http-equiv=keywords content={$Hope_KeysWord$} />
<meta name="description" content="{$Hope_SiteExc$}" />
<link rel="stylesheet" href="{$Hope_SitUrl$}{$Hope_Skin$}CSS/v2.0.css" type="text/css">
<link rel="stylesheet" href="{$Hope_SitUrl$}{$Hope_Skin$}CSS/layout.css" type="text/css">
<link rel="stylesheet" href="{$Hope_SitUrl$}{$Hope_Skin$}CSS/component.css" type="text/css">
<link rel="stylesheet" href="{$Hope_SitUrl$}{$Hope_Skin$}CSS/frontpage_v2.css" type="text/css">
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/yui-utilities.js" type=text/javascript></SCRIPT>
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/tbra.js" type=text/javascript></SCRIPT>
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/common.js" type=text/javascript></SCRIPT>
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/top_new.js" type=text/javascript></SCRIPT>
<script type=text/javascript src="{$Hope_SitUrl$}{$Hope_Skin$}JS/ad.js"></script>
</HEAD>
<BODY class="W950 CurHome">
{$Hope_Top$} 
<DIV class=L250 id=Content>

<DIV style="POSITION: relative">

<DIV style="BACKGROUND: url({$Hope_SitUrl$}{$Hope_Skin$}IMAGE/qiang.gif) no-repeat 0px 0px; LEFT: 135px; WIDTH: 45px; TEXT-INDENT: -9999px; POSITION: absolute; TOP: -130px; HEIGHT: 34px">新</DIV>
</DIV>

<SCRIPT type=text/javascript>
		HeadLineDL = {
			i: 0,
			dl: document.getElementById('HeadLines').getElementsByTagName('dl')[0],
			x: function(dt) {
				var dts = this.dl.getElementsByTagName('dt');
				for (var i = 0; i < dts.length; i++) {
					dts[i].className = dts[i].className.replace(/\s*hover/, '');
					if (dts[i] == dt) this.i = i;
				}
				dt.className += ' hover';
				
				var dds = this.dl.getElementsByTagName('dd');
				for (var i = 0; i < dds.length; i++) {
					dds[i].style.display = 'none';
				}
				var dd = dt.nextSibling;
				while (dd.nodeType != 1) {
					dd = dd.nextSibling;
				}
				dd.style.display = 'block';
			},
			init: function() {
				var dts = this.dl.getElementsByTagName('dt');
				var parse = false;
				this.dl.onmouseover = function() {parse = true};
				this.dl.onmouseout = function() {parse = false};
				for (var i = 0; i < dts.length; i++) {
					dts[i].onmouseover = function(e) {
						var ev = !e ? window.event : e;
						var t = ev.srcElement || e.target;
						HeadLineDL.x(t);
					}
				}
				this.x(dts[0]);
				setInterval(function() {
					if (parse) return;
					HeadLineDL.x(dts[++HeadLineDL.i % 6]);
				}, 5000);
			}
		}
		HeadLineDL.init();
		</SCRIPT>

<DIV class=colL>
<DIV class=openCategory id=openCategory style=" display:none; Z-INDEX: 99999; POSITION: absolute">
</DIV>

<DIV id=indexMain>

<DIV id=dcontent>

<DIV id=ad_Bulletin>

<DIV class=Bulletin>
<H2>易物公告</H2>
<DIV class=listBulletin>
<P class=Pic><script src="Include/Ad/taobao_index_left_top_inform.JS" type="text/jscript"></script></P>
<UL style="padding-top:6px;">{#Hope_Article*1,6,12,34,0,0,62#} 
</UL>

</DIV>
</DIV>

<DIV class=AD_banner>
<div class="focusPic " id=focusPic>
<script language="JavaScript">
document.write('<DIV class=focusPicNum>');
for (i=1;i<num_pic+1;i++ )
{
document.write('<A href=javascript:setFocus1('+i+');><IMG height=13 src='+focusPicNumSrc+'/num_0'+i+'off.gif width=21 hspace=2 border=0 name=fi_'+i+'></A>');
}
document.write('</DIV>');
document.write('<a id=PicLink href="javascript:goUrl()"><img src="'+imgUrl[1]+'" width=445  name=imgInit height="180" border="0" style="FILTER: revealTrans(duration=2,transition=6)"></a>');
document.images.imgInit.src=imgUrl[1];
</script>
</div>		

</DIV>
</DIV>
<DIV class=winstyle2>
<DIV id=alltype_title>
<UL>
<LI class=alltype>全部物品类别</LI>
<LI class=addProducts>
<A href="vipuser/YX_sell.aspx" target=_parent>发布物品</A></LI>
</UL>
</DIV>
<DIV class=todaysnew>
<H4>最新动态</H4>
<DIV class=section>
<DIV class=live>
<SCRIPT language=javascript type=text/javascript>
var timer;           //定时器变量
var amount = 2;      //速度变量，默认值为2
var stoped = false;
function initMarquee(marId){
	if(document.getElementById(marId)){
		if ((navigator.appName == "Microsoft Internet Explorer") && (parseInt(navigator.appVersion) >= 3)){		
		   document.getElementById(marId).scrollAmount=document.getElementById(marId).clientWidth;
		 }
		 else{
		   document.getElementById(marId).scrollAmount=amount;
		 }		 
	}
}
/**
 * 开始函数，同时清除定时器
 * marId marquee对象的id
 */		
function startMarquee(marId){
    var marObj = document.getElementById(marId);
    marObj.scrollAmount = amount;
    marObj.start(); 
    clearTimeout(timer);  
    stoped = true;
    marObj.onscroll=function(){scrolling(this);};
}
/**
 * 滚动函数
 * 把初始速度设定到最大，使得marquee框里开始就充满部分数据，
 * 然后将初始状态保持特定时间后再开始滚动
 * marObj marquee对象
 * waitTime 初始状态保持时间
 */		
function scrollMarquee(marObj, waitTime){	
	if(!stoped && marObj.scrollLeft <= marObj.clientWidth){
	   marObj.stop();	     
	   timer = setTimeout("startMarquee('"+marObj.id+"')", waitTime);
	}
}
function scrolling(marObj){	 
	marObj.stop();
	marObj.scrollAmount = amount;
	marObj.start();
 
}
</SCRIPT>

<MARQUEE id=sellleads onmouseover=this.stop() onscroll="scrollMarquee(this, 1500)" onmouseout=scrolling(this) width="100%">

</MARQUEE>



<SCRIPT language=javascript type=text/javascript> 
initMarquee("sellleads");     
</SCRIPT>
</DIV></DIV><A class=more href="">More</A> </DIV>
<DIV class=categorylist>
<DIV class="two column">

{#Hope_ProClassList*2,16,2,0,<IMG src="{$Hope_SitUrl$}{$Hope_Skin$}image/side_bg_04.gif">,bigclassname,classname,2,26#}
</DIV>
</DIV></DIV>

</DIV>
<DIV id=rightbox>

<DIV class=MarketStyle id=MallWindow>
<H2><SPAN></SPAN></H2>
<P class=Summary><A title='' href="shop.aspx" target=_blank>100%认证商家 开心逛放心买</A></P>
<UL class=MallGuide>
{#SpecialShop*2,2,15,2,1#}
</UL>
</DIV>
<DIV class=MarketStyle id=SecondhandWindow>
<H2><SPAN></SPAN></H2>
<P class=Summary><A title='' href="Productlist.aspx?distype=6" target=_blank>易想跳蚤市场  便宜笑到底</A></P>
{#Hope_Pro*3,3,15,0,5,50,50,1#} 
</UL>
</DIV>


<DIV id=GlobalWindow style="margin-top:10px;">
<H2>推荐</H2>
<UL>
{#Hope_Pro*2,3,15,0,1,50,50,1#}
</UL>
<P ><A href="Hotsell.aspx" 
target=_blank></A></P>
<P class=More><A href="Productlist.aspx?1=1&distype=2" 
target=_blank>更多&gt;&gt;</A></P>
</DIV>
<DIV id=TradeSafe>
<H2>交易安全</H2>
<UL class=PostList>
  {#Hope_Article*1,9,12,18,0,0,62#}
</UL>
<P class=More><A href="News/ArticleList.aspx?Flag=1&ClassId=18" 
target=_blank>更多&gt;&gt;</A></P>
</DIV>



</DIV>
</DIV>
{$Hope_Bottom$}
</BODY>
</HTML>

