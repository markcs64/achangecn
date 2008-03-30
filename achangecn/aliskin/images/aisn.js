
var noExpires=new Date();noExpires.setTime(noExpires.getTime()+60*60*1000*24*60);var attributeSplit="\t";var itemSplit="\n";function CookieBuilder(name,maxItemNum,expires){var index;this.name=name;this.maxItemNum=maxItemNum;this.expires=expires;var value=getCookie(this.name);var s="";if(value!=null){var aId=value.split(itemSplit);if(aId.length>0){index=parseInt(aId[0]);if(isNaN(index))index=0;}
else{index=0;}
if(index>=maxItemNum)index=0;}
else{index=0;}
this.addItemToCookie=function(item){index=addItemToCookieByIndex(index,this.name,item,this.maxItemNum,this.expires);}
this.getCookie=function(){return getTrueCookie(this.name);}
this.getFullCookie=function(){return getCookie(this.name);}
this.deleteCookie=function(){index=0;return deleteCookie(this.name);}
this.getIndex=function(){return index;}}
function getTrueCookie(name)
{var value=getCookie(name);if(value!=null){firstSplitIndex=value.indexOf(itemSplit);if(firstSplitIndex!=-1){return value.substr(firstSplitIndex+itemSplit.length);}}
return value;}
function addIndexToCookieValue(index,value){if(index!=null&&value!=null&&value.length>0){return index.toString()+itemSplit+value;}
return value;}
function setCookie(name,value,expires,path,domain,secure)
{s=name+"="+escape(value)+
((expires)?"; expires="+expires.toGMTString():"")+
((path)?"; path="+path:"; path=/")+
((domain)?"; domain="+domain:"; domain=alibaba.com")+
((secure)?"; secure":"");document.cookie=s;}
function getCookie(name)
{var dc=document.cookie;var prefix=name+"=";var begin=dc.indexOf("; "+prefix);if(begin==-1)
{begin=dc.indexOf(prefix);if(begin!=0)return null;}
else
{begin+=2;}
var end=document.cookie.indexOf(";",begin);if(end==-1)
{end=dc.length;}
return unescape(dc.substring(begin+prefix.length,end));}
function deleteCookie(name,path,domain)
{if(getCookie(name))
{document.cookie=name+"="+
((path)?"; path="+path:"")+
((domain)?"; domain="+domain:"")+"; expires=Thu, 01-Jan-70 00:00:01 GMT";}}
function addItemToCookie(name,ItemId,maxItemNum){var value=getCookie(name);var s=ItemId;if(value!=null){var aId=value.split(itemSplit);var k=1;var n=containElem(aId,s);for(var i=0;i<aId.length;i++)
{if(i==n){continue;}
s=s+","+aId[i];k=k+1;if(k>=maxItemNum)break;}}
setCookie(name,s);}
function addItemToCookieByIndex(index,name,ItemId,maxItemNum,expires){var value=getTrueCookie(name);var s="";if(value!=null){var aId=value.split(itemSplit);var k=1;var n=containElem(aId,ItemId);if(n!=-1)return index;if(index>maxItemNum-1)index=0
aId[index]=ItemId;for(var i=0;i<aId.length;i++)
{if(i==n){continue;}
s=s+itemSplit+aId[i];if(i>=maxItemNum-1)break;}
s=s.substr(itemSplit.length);}
else{s=ItemId;}
s=addIndexToCookieValue(index+1,s);setCookie(name,s,expires);return index+1;}
function containElem(arrayObj,elem){for(var i=0;i<arrayObj.length;i++){if(elem==arrayObj[i])return i;}
return-1;}

function calTimeByName(name){var offset=time_map[name];return calTime(offset);}
function calTime(offset){if(String(offset)=='undefined')
return;d=new Date();utc=d.getTime()+(d.getTimezoneOffset()*60000);nd=new Date(utc+(3600000*offset));var t_str=nd.toString();var arrTmp=t_str.split(' ');var t_t='';if((navigator.appName=="Microsoft Internet Explorer")&&(parseInt(navigator.appVersion)>=3)){var timeArray=arrTmp[3].split(':');t_t=timeArray[0]+':'+timeArray[1]}else{var timeArray=arrTmp[4].split(':');t_t=timeArray[0]+':'+timeArray[1]}
t_str=t_t+' '+arrTmp[0]+' '+arrTmp[1]+' '+arrTmp[2];img_str='Local Time:'+t_str;return img_str;}
function calCountryUrl(name){var countryFullName=country_map[name];if(countryFullName!=null)
return"http://country.alibaba.com/profiles/"+name+'/'+countryFullName+'.htm';else
return'http://country.alibaba.com';}

function historyItem(type,id,subject,image,url,cn){if(arguments.length==1){var combineStr=arguments[0];var element=combineStr.split("\t");for(var i=0;i<element.length;i++){if(i==0)this.type=element[0];if(i==1)this.id=element[1];if(i==2)this.subject=element[2];if(i==3)this.image=element[3];if(i==4)this.url=element[4];if(i==5)this.cn=element[5];}}
else{this.type=type;this.id=id;this.subject=subject;this.image=image;this.url=url;this.cn=cn;}
this.toString=function(){return((type)?type:"")+
((id)?"\t"+id:"\t")+
((subject)?"\t"+subject:"\t")+
((image)?"\t"+image:"\t")+
((url)?"\t"+url:"\t")+
((cn)?"\t"+cn:"");}}
function SimpleCollenction(maxlength,cookieStore){var maxlength=maxlength?maxlength:256;var cookieStore=cookieStore;var maxIndex=maxlength-1
var list=new Array();var index=null;initFromCookie();this.put=function(key,value){if(this.containsKey(key))return;putToCookie(value);return putWithoutStore(key,value);}
function putWithoutStore(key,value){if(index==null||index>=maxIndex){index=0;}
else{index=index+1;}
list[index]=new Entry(key,value);return index;}
this.get=function(key){var len=list.length;for(var j=0;j<len;j++){if(typeof list[j]!="undefined")
{if(list[j].key==key)return list[j].value;}}
return null;}
this.containsKey=function(key){return this.get(key)?true:false;}
this.size=function(){return list.length;}
this.println=function(){for(var i=0;i<list.length;i++){alert("key="+list[i].key+",value="+list[i].value);}}
function putToCookie(value){if(cookieStore==null)return;cookieStore.addItemToCookie(value.toString());}
function initFromCookie(){if(cookieStore==null)return;var cookieValue=cookieStore.getCookie();if(cookieValue==null)return;var itemElement=cookieValue.split("\n");for(var i=0;i<itemElement.length;i++){hsItem=new historyItem(itemElement[i]);putWithoutStore(hsItem.id,hsItem);}}}
var Entry=function(key,value)
{this.key=key;this.value=value;}
function debug(msg){var debugLevel="noalert";if(debugLevel=="alert"){alert(msg);}}
function HistoryBuilder(tag,maxItemShowed,maxItemCached,reqUrl,callbackFunc){var tempCookieBuilder=new CookieBuilder(tag+"Temp",maxItemCached);var localCache=new SimpleCollenction(maxItemCached,tempCookieBuilder);var cookieBuilder=new CookieBuilder(tag,maxItemShowed,noExpires);var compositList=new Array();var showedList=new Array();var has_showed_offer=0;var begin=0;var tag=tag;var maxItemShowed=maxItemShowed;var maxItemCached=maxItemCached;var reqUrl=reqUrl;this.addItemForOpenWin=function(id){var name=navigator.appName;if("undefined"==typeof pageLoaded||pageLoaded==false){this.addItemToCookie(id);}
else{if(name=="Microsoft Internet Explorer"){begin=cookieBuilder.getIndex();this.addToNow(id);}else{this.addItemToCookie(id);}}}
debug("init showedList="+showedList.length);this.addToNow=function addToNow(id){cookieBuilder.addItemToCookie(id);hsItem=localCache.get(id);if(hsItem!=null){var listToAdd=new Array();listToAdd[0]=hsItem;debug("get object form cache by id "+id);this.addList(listToAdd);return;}
url=reqUrl+id;loadscript(url,tag+"Form");}
this.showAll=function showAllItem(){if(compositList==null)return;compositList.splice(0,compositList.length);var s=cookieBuilder.getCookie();debug(s);if(s==null)return;ids=s.split("\n");var reqIds="";for(var i=0;i<ids.length;i++){hsItem=localCache.get(ids[i]);if(hsItem!=null){compositList[compositList.length]=hsItem;debug("get object form cache by id "+ids[i]);}
else{compositList[compositList.length]=null;reqIds=reqIds+"\n"+ids[i];}}
if(reqIds.length>0){debug("[show All] reguest from server:"+reqIds);url=reqUrl+encode(reqIds)+"&init=y"
loadscript(url,tag+"Form");}
else{debug("get all object form cache");this.addList(compositList);}}
this.clearForeverCookie=function clearForeverCookie(){cookieBuilder.deleteCookie();}
this.clearTempCookie=function clearTempCookie(){tempCookieBuilder.deleteCookie();}
this.addItemToCookie=function addItemToCookie(id){cookieBuilder.addItemToCookie(id);}
this.bindTwoHistoryList=function bindTwoHistoryList(listFromServer){if(compositList==null)return;if(listFromServer==null)return;debug("list from server size="+listFromServer.length);var j=0;for(var i=0;i<compositList.length;i++){if(compositList[i]==null){if(j<listFromServer.length){compositList[i]=listFromServer[j];j++;}
else{break;}}}
this.addList(compositList);}
this.addList=function addList(listToshow){for(var j=0;j<listToshow.length;j++){if(begin>maxItemShowed-1)begin=0;var exists=false;var item=listToshow[j];if(item==null)continue;for(var k=0;k<showedList.length;k++){if(showedList[k]==null)continue;if(item.id==showedList[k].id){exists=true;break;}}
localCache.put(item.id,item);if(exists){debug("exists:="+j+"---"+item.id);continue;}
if(typeof callbackFunc=="function"){if(!callbackFunc(begin,item))continue;begin=begin+1;has_showed_offer=has_showed_offer+1;showedList[begin]=item;}
else{debug("callback function not defined");}}}}
function sellofferCallback(index,item){li=document.getElementById("li_selloffer_"+index);if(li==null)return false;im=document.getElementById("img_selloffer_"+index);if(im!=null){im.src=item.image;}
img_href=document.getElementById("img_href_selloffer_"+index);if(img_href!=null){img_href.href=item.url;}
text_href=document.getElementById("text_href_selloffer_"+index);if(text_href!=null){text_href.href=item.url;text_href.innerHTML=item.subject;}
li.style.display="";return true;}
function buyofferCallback(index,item){li=document.getElementById("li_buyoffer_"+index);if(li==null)return false;text_href=document.getElementById("text_href_buyoffer_"+index);if(text_href!=null){text_href.href=item.url;text_href.innerHTML=item.subject+"<div>["+item.cn+"]</div>";}
li.style.display="";return true;}
function sampleCallback(index,item){li=document.getElementById("li_sample_"+index);if(li==null)return false;im=document.getElementById("img_sample_"+index);if(im!=null){im.src=item.image;im.alt=item.subject;}
img_href=document.getElementById("img_href_sample_"+index);if(img_href!=null){img_href.href=item.url;}
text_href=document.getElementById("text_href_sample_"+index);if(text_href!=null){text_href.href=item.url;text_href.innerHTML=item.subject;}
li.style.display="";return true;}
function companyCallback(index,item){li=document.getElementById("li_company_"+index);if(li==null)return false;text_href=document.getElementById("text_href_company_"+index);if(text_href!=null){text_href.href=item.url;text_href.innerHTML=item.subject;}
li.style.display="";return true;}
function getSerachUrl(searchType,keyword){if("selloffer"==searchType){return"http://www.alibaba.com/trade/search/1i1p5tyfchms/"+encodeKeyword(keyword)+".html";}else if("buyoffer"==searchType){return"http://importer.alibaba.com/search/buyeroffers/i1ph0m/nocountry/"+encodeKeyword(keyword)+".html";}else if("sample"==searchType){return"http://www.alibaba.com/trade/search/3i1p5tyfchms/"+encodeKeyword(keyword)+".html";}else if("company"==searchType){return"http://www.alibaba.com/trade/search/2i1p5tyfchms/"+encodeKeyword(keyword)+".html";}}
function getCategoryUrl(searchType,cateId,cateName){if("selloffer"==searchType){return"http://www.alibaba.com/manufacturers/"+cateId+"/"+encodeKeyword(cateName)+".html";}else if("buyoffer"==searchType){return"http://importer.alibaba.com/buy_leads/"+cateId+"c1p/"+encodeKeyword(cateName)+".html";}else if("sample"==searchType){return"http://www.alibaba.com/catalogs/"+cateId+"/"+encodeKeyword(cateName)+".html";}else if("company"==searchType){return"http://www.alibaba.com/companies/"+cateId+"/"+encodeKeyword(cateName)+".html";}}

var browerType='';function isIE(){if(browerType==''){if((navigator.appName=="Microsoft Internet Explorer")&&(parseInt(navigator.appVersion)>=3)){browerType='ie';}else{browerType='notie';}}
return browerType=='ie';}
function hideAdBanner(){var adBanners=getBannerElements();if(adBanners==null||adBanners.length==null){return;}else{var findFirst=false;for(var i=0;i<adBanners.length;i++){if(!findFirst&&!isHidden(adBanners[i])){findFirst=true;}else{if(isIE()){adBanners[i].style.display="none";}else{adBanners[i].width=1;adBanners[i].height=0;}}}}}
function isHidden(obj){var loopNumber=0;var currentObj=obj;do{if(currentObj==null||currentObj.style.display=="none"||currentObj.style.visibility=="hidden"){return true;}
currentObj=currentObj.parentNode;}while(currentObj.tagName!='BODY'&&(loopNumber++)<10)
return false;}
function getBannerElements(){if(isIE()){return document.all('ad160_15Banner');}else{var objArr=new Array();var index=0;for(var i=0;i<document.images.length;i++){if(document.images[i].src.indexOf('160x15_ad.gif')!=-1){objArr[index++]=document.images[i];}}
return objArr;}}

var marqueeArray=new Array();function Marquee(obj1,obj2){this.icefable1=obj1;this.icefable2=obj2;this.marqueesHeight=18;this.stopscroll=false;this.preTop=0;this.currentTop=0;this.stoptime=0;this.init_srolltext=init_srolltext;this.scrollUp=scrollUp;this.setTimer=setTimer;this.setStopScroll=setStopScroll;var index=marqueeArray.length;marqueeArray[index]=this;this.icefable1.scrollTop=0;with(this.icefable1){style.width=0;style.height=this.marqueesHeight;style.overflowX="visible";style.overflowY="hidden";noWrap=true;onmouseover=new Function("marqueeArray["+index+"].setStopScroll(true)");onmouseout=new Function("marqueeArray["+index+"].setStopScroll(false)");}}
function init_srolltext(){this.icefable2.innerHTML="";this.icefable2.innerHTML+=this.icefable1.innerHTML;this.icefable1.innerHTML=this.icefable2.innerHTML+this.icefable2.innerHTML;this.setTimer();}
function setTimer(){var index=marqueeArray.length-1;setInterval("marqueeArray["+index+"].scrollUp()",50);}
function setStopScroll(flag){this.stopscroll=flag;}
function scrollUp(){if(this.stopscroll)return;this.currentTop+=1;if(this.currentTop==20){this.stoptime+=1;this.currentTop-=1;if(this.stoptime==50){this.currentTop=0;this.stoptime=0;}}
else{this.preTop=this.icefable1.scrollTop;this.icefable1.scrollTop+=1;if(this.preTop==this.icefable1.scrollTop){this.icefable1.scrollTop=this.icefable2.offsetHeight-this.marqueesHeight;this.icefable1.scrollTop+=1;}}}

var trsLanguge=new function(){var sysLanguage=navigator.browserLanguage?navigator.browserLanguage:navigator.language;_self=this;var sImgUrl;_self.init=function(){switch(sysLanguage.toLowerCase().substring(0,2)){case'fr':{sImgUrl='fr_trs.gif';break;}
case'de':{sImgUrl='ge_trs.gif';break;}
case'it':{sImgUrl='it_trs.gif';break;}
case'nl':{sImgUrl='nl_trs.gif';break;}
case'ja':{}
case'jp':{sImgUrl='jp_trs.gif';break;}
case'ko':{}
case'kr':{sImgUrl='kr_trs.gif';break;}
case'pt':{sImgUrl='pt_trs.gif';break;}
case'ru':{sImgUrl='ru_trs.gif';break;}
case'es':{sImgUrl='sp_trs.gif';break;}
case'zh':{sImgUrl='zh_cn_trs.gif';if(sysLanguage.toLowerCase()=='zh-cn'){sImgUrl='zh_cn_trs.gif';break;}
if(sysLanguage.toLowerCase()=='zh-tw'){sImgUrl='zh_tw_trs.gif';break;}}
default:{sImgUrl=false;break;}}
if(sImgUrl){get('trsTargetId').innerHTML='<img  align="bottom" src="http://img.alibaba.com/images/eng/style/icon/translate_icon.gif" border="0" > <img align="bottom" id="trsLangugeImg" src="http://img.alibaba.com/images/eng/others/'+sImgUrl+'" border="0"/>';}else{get('trsTargetId').innerHTML='<img align="bottom" style="margin-bottom:-3px;" src="http://img.alibaba.com/images/eng/style/icon/translate_icon.gif" border="0" > Translate this page';}}}
try{YUE.on(window,'load',function(){if(top.location!=self.location||!get('trsTargetId')){return;}
trsLanguge.init();var trsTargetWidth=get('trsTargetId').offsetWidth;trsTargetWidth=trsTargetWidth||104;var clickkShowConfig={targetId:"trsTargetId",contentId:"trsContentId",needMask:true,excursion:[trsTargetWidth-104,16],needXY:true};var clickkShowInstance=new AE.widget.clickShow();clickkShowInstance.init(clickkShowConfig);var trsContentItems=get('trsContentId').getElementsByTagName('a');YUE.on(trsContentItems,'click',clickkShowInstance.hiddenDirectly,true);})}catch(E){}

AE.widget.InputHint=new function(){var defConfig={hintMessage:'',hintClass:'InputHint',appearOnce:false};var EMPTY_PATTERN=/^\s*$/;var focusHandler=function(ev,handle){handle.disappear();}
var blurHandler=function(ev,handle){handle.appear();}
var checkModify=function(ev,handle){handle.checkModify();}
this.decorate=function(inputField,config){inputField=$(inputField);config=TB.applyIf(config||{},defConfig);var hintMessage=config.hintMessage||inputField.title;var handle={};handle.disappear=function(){if(hintMessage==inputField.value){inputField.value='';$D.removeClass(inputField,config.hintClass);}};handle.appear=function(){if(EMPTY_PATTERN.test(inputField.value)||hintMessage==inputField.value){inputField.value=hintMessage;$D.addClass(inputField,config.hintClass);}}
inputField.setAttribute("title",hintMessage);$E.on(inputField,'focus',focusHandler,handle);$E.on(inputField,'drop',focusHandler,handle);if(!config.appearOnce)
$E.on(inputField,'blur',blurHandler,handle);handle.checkModify=function(){if(inputField.value!=hintMessage){$D.removeClass(inputField,config.hintClass);}}
$E.on(window,'load',checkModify,handle);handle.appear();return handle;}}
