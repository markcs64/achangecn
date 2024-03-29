
YAHOO.util.Connect={_msxml_progid:['MSXML2.XMLHTTP.3.0','MSXML2.XMLHTTP','Microsoft.XMLHTTP'],_http_headers:{},_has_http_headers:false,_use_default_post_header:true,_default_post_header:'application/x-www-form-urlencoded; charset=UTF-8',_use_default_xhr_header:true,_default_xhr_header:'XMLHttpRequest',_has_default_headers:true,_default_headers:{},_isFormSubmit:false,_isFileUpload:false,_formNode:null,_sFormData:null,_poll:{},_timeOut:{},_polling_interval:50,_transaction_id:0,_submitElementValue:null,_hasSubmitListener:(function()
{if(YAHOO.util.Event){YAHOO.util.Event.addListener(document,'click',function(e){var obj=YAHOO.util.Event.getTarget(e);if(obj.type=='submit'){YAHOO.util.Connect._submitElementValue=encodeURIComponent(obj.name)+"="+encodeURIComponent(obj.value);}})
return true;}
return false;})(),setProgId:function(id)
{this._msxml_progid.unshift(id);},setDefaultPostHeader:function(b)
{this._use_default_post_header=b;},setDefaultXhrHeader:function(b)
{this._use_default_xhr_header=b;},setPollingInterval:function(i)
{if(typeof i=='number'&&isFinite(i)){this._polling_interval=i;}},createXhrObject:function(transactionId)
{var obj,http;try
{http=new XMLHttpRequest();obj={conn:http,tId:transactionId};}
catch(e)
{for(var i=0;i<this._msxml_progid.length;++i){try
{http=new ActiveXObject(this._msxml_progid[i]);obj={conn:http,tId:transactionId};break;}
catch(e){}}}
finally
{return obj;}},getConnectionObject:function()
{var o;var tId=this._transaction_id;try
{o=this.createXhrObject(tId);if(o){this._transaction_id++;}}
catch(e){}
finally
{return o;}},asyncRequest:function(method,uri,callback,postData)
{var o=this.getConnectionObject();if(!o){return null;}
else{if(this._isFormSubmit){if(this._isFileUpload){this.uploadFile(o.tId,callback,uri,postData);this.releaseObject(o);return;}
if(method.toUpperCase()=='GET'){if(this._sFormData.length!=0){uri+=((uri.indexOf('?')==-1)?'?':'&')+this._sFormData;}
else{uri+="?"+this._sFormData;}}
else if(method.toUpperCase()=='POST'){postData=postData?this._sFormData+"&"+postData:this._sFormData;}}
o.conn.open(method,uri,true);if(this._use_default_xhr_header){if(!this._default_headers['X-Requested-With']){this.initHeader('X-Requested-With',this._default_xhr_header,true);}}
if(this._isFormSubmit||(postData&&this._use_default_post_header)){this.initHeader('Content-Type',this._default_post_header);if(this._isFormSubmit){this.resetFormState();}}
if(this._has_default_headers||this._has_http_headers){this.setHeader(o);}
this.handleReadyState(o,callback);o.conn.send(postData||null);return o;}},handleReadyState:function(o,callback)
{var oConn=this;if(callback&&callback.timeout){this._timeOut[o.tId]=window.setTimeout(function(){oConn.abort(o,callback,true);},callback.timeout);}
this._poll[o.tId]=window.setInterval(function(){if(o.conn&&o.conn.readyState===4){window.clearInterval(oConn._poll[o.tId]);delete oConn._poll[o.tId];if(callback&&callback.timeout){delete oConn._timeOut[o.tId];}
oConn.handleTransactionResponse(o,callback);}},this._polling_interval);},handleTransactionResponse:function(o,callback,isAbort)
{if(!callback){this.releaseObject(o);return;}
var httpStatus,responseObject;try
{if(o.conn.status!==undefined&&o.conn.status!==0){httpStatus=o.conn.status;}
else{httpStatus=13030;}}
catch(e){httpStatus=13030;}
if(httpStatus>=200&&httpStatus<300||httpStatus===1223){responseObject=this.createResponseObject(o,callback.argument);if(callback.success){if(!callback.scope){callback.success(responseObject);}
else{callback.success.apply(callback.scope,[responseObject]);}}}
else{switch(httpStatus){case 12002:case 12029:case 12030:case 12031:case 12152:case 13030:responseObject=this.createExceptionObject(o.tId,callback.argument,(isAbort?isAbort:false));if(callback.failure){if(!callback.scope){callback.failure(responseObject);}
else{callback.failure.apply(callback.scope,[responseObject]);}}
break;default:responseObject=this.createResponseObject(o,callback.argument);if(callback.failure){if(!callback.scope){callback.failure(responseObject);}
else{callback.failure.apply(callback.scope,[responseObject]);}}}}
this.releaseObject(o);responseObject=null;},createResponseObject:function(o,callbackArg)
{var obj={};var headerObj={};try
{var headerStr=o.conn.getAllResponseHeaders();var header=headerStr.split('\n');for(var i=0;i<header.length;i++){var delimitPos=header[i].indexOf(':');if(delimitPos!=-1){headerObj[header[i].substring(0,delimitPos)]=header[i].substring(delimitPos+2);}}}
catch(e){}
obj.tId=o.tId;obj.status=(o.conn.status==1223)?204:o.conn.status;obj.statusText=(o.conn.status==1223)?"No Content":o.conn.statusText;obj.getResponseHeader=headerObj;obj.getAllResponseHeaders=headerStr;obj.responseText=o.conn.responseText;obj.responseXML=o.conn.responseXML;if(typeof callbackArg!==undefined){obj.argument=callbackArg;}
return obj;},createExceptionObject:function(tId,callbackArg,isAbort)
{var COMM_CODE=0;var COMM_ERROR='communication failure';var ABORT_CODE=-1;var ABORT_ERROR='transaction aborted';var obj={};obj.tId=tId;if(isAbort){obj.status=ABORT_CODE;obj.statusText=ABORT_ERROR;}
else{obj.status=COMM_CODE;obj.statusText=COMM_ERROR;}
if(callbackArg){obj.argument=callbackArg;}
return obj;},initHeader:function(label,value,isDefault)
{var headerObj=(isDefault)?this._default_headers:this._http_headers;if(headerObj[label]===undefined){headerObj[label]=value;}
else{headerObj[label]=value+","+headerObj[label];}
if(isDefault){this._has_default_headers=true;}
else{this._has_http_headers=true;}},setHeader:function(o)
{if(this._has_default_headers){for(var prop in this._default_headers){if(YAHOO.lang.hasOwnProperty(this._default_headers,prop)){o.conn.setRequestHeader(prop,this._default_headers[prop]);}}}
if(this._has_http_headers){for(var prop in this._http_headers){if(YAHOO.lang.hasOwnProperty(this._http_headers,prop)){o.conn.setRequestHeader(prop,this._http_headers[prop]);}}
delete this._http_headers;this._http_headers={};this._has_http_headers=false;}},resetDefaultHeaders:function(){delete this._default_headers
this._default_headers={};this._has_default_headers=false;},setForm:function(formId,isUpload,secureUri)
{this.resetFormState();var oForm;if(typeof formId=='string'){oForm=(document.getElementById(formId)||document.forms[formId]);}
else if(typeof formId=='object'){oForm=formId;}
else{return;}
if(isUpload){this.createFrame(secureUri?secureUri:null);this._isFormSubmit=true;this._isFileUpload=true;this._formNode=oForm;return;}
var oElement,oName,oValue,oDisabled;var hasSubmit=false;for(var i=0;i<oForm.elements.length;i++){oElement=oForm.elements[i];oDisabled=oForm.elements[i].disabled;oName=oForm.elements[i].name;oValue=oForm.elements[i].value;if(!oDisabled&&oName)
{switch(oElement.type)
{case'select-one':case'select-multiple':for(var j=0;j<oElement.options.length;j++){if(oElement.options[j].selected){if(window.ActiveXObject){this._sFormData+=encodeURIComponent(oName)+'='+encodeURIComponent(oElement.options[j].attributes['value'].specified?oElement.options[j].value:oElement.options[j].text)+'&';}
else{this._sFormData+=encodeURIComponent(oName)+'='+encodeURIComponent(oElement.options[j].hasAttribute('value')?oElement.options[j].value:oElement.options[j].text)+'&';}}}
break;case'radio':case'checkbox':if(oElement.checked){this._sFormData+=encodeURIComponent(oName)+'='+encodeURIComponent(oValue)+'&';}
break;case'file':case undefined:case'reset':case'button':break;case'submit':if(hasSubmit===false){if(this._hasSubmitListener){this._sFormData+=this._submitElementValue+'&';}
else{this._sFormData+=encodeURIComponent(oName)+'='+encodeURIComponent(oValue)+'&';}
hasSubmit=true;}
break;default:this._sFormData+=encodeURIComponent(oName)+'='+encodeURIComponent(oValue)+'&';break;}}}
this._isFormSubmit=true;this._sFormData=this._sFormData.substr(0,this._sFormData.length-1);return this._sFormData;},resetFormState:function(){this._isFormSubmit=false;this._isFileUpload=false;this._formNode=null;this._sFormData="";},createFrame:function(secureUri){var frameId='yuiIO'+this._transaction_id;if(window.ActiveXObject){var io=document.createElement('<iframe id="'+frameId+'" name="'+frameId+'" />');if(typeof secureUri=='boolean'){io.src='javascript:false';}
else if(typeof secureURI=='string'){io.src=secureUri;}}
else{var io=document.createElement('iframe');io.id=frameId;io.name=frameId;}
io.style.position='absolute';io.style.top='-1000px';io.style.left='-1000px';document.body.appendChild(io);},appendPostData:function(postData)
{var formElements=[];var postMessage=postData.split('&');for(var i=0;i<postMessage.length;i++){var delimitPos=postMessage[i].indexOf('=');if(delimitPos!=-1){formElements[i]=document.createElement('input');formElements[i].type='hidden';formElements[i].name=postMessage[i].substring(0,delimitPos);formElements[i].value=postMessage[i].substring(delimitPos+1);this._formNode.appendChild(formElements[i]);}}
return formElements;},uploadFile:function(id,callback,uri,postData){var frameId='yuiIO'+id;var uploadEncoding='multipart/form-data';var io=document.getElementById(frameId);this._formNode.setAttribute('action',uri);this._formNode.setAttribute('method','POST');this._formNode.setAttribute("target",frameId);if(this._formNode.encoding){this._formNode.encoding=uploadEncoding;}
else{this._formNode.enctype=uploadEncoding;}
if(postData){var oElements=this.appendPostData(postData);}
this._formNode.submit();if(oElements&&oElements.length>0){for(var i=0;i<oElements.length;i++){this._formNode.removeChild(oElements[i]);}}
this.resetFormState();var uploadCallback=function()
{var obj={};obj.tId=id;obj.argument=callback.argument;try
{obj.responseText=io.contentWindow.document.body?io.contentWindow.document.body.innerHTML:null;obj.responseXML=io.contentWindow.document.XMLDocument?io.contentWindow.document.XMLDocument:io.contentWindow.document;}
catch(e){}
if(callback&&callback.upload){if(!callback.scope){callback.upload(obj);}
else{callback.upload.apply(callback.scope,[obj]);}}
if(YAHOO.util.Event){YAHOO.util.Event.removeListener(io,"load",uploadCallback);}
else if(window.detachEvent){io.detachEvent('onload',uploadCallback);}
else{io.removeEventListener('load',uploadCallback,false);}
setTimeout(function(){document.body.removeChild(io);},100);};if(YAHOO.util.Event){YAHOO.util.Event.addListener(io,"load",uploadCallback);}
else if(window.attachEvent){io.attachEvent('onload',uploadCallback);}
else{io.addEventListener('load',uploadCallback,false);}},abort:function(o,callback,isTimeout)
{if(this.isCallInProgress(o)){o.conn.abort();window.clearInterval(this._poll[o.tId]);delete this._poll[o.tId];if(isTimeout){delete this._timeOut[o.tId];}
this.handleTransactionResponse(o,callback,true);return true;}
else{return false;}},isCallInProgress:function(o)
{if(o.conn){return o.conn.readyState!==4&&o.conn.readyState!==0;}
else{return false;}},releaseObject:function(o)
{o.conn=null;o=null;}};YAHOO.register("connection",YAHOO.util.Connect,{version:"2.2.2",build:"204"});

AE.widget.divExchange=function(){var _self=this;var defConfig={containerId:"divExchangeContianer",itemClass:"divExchangeItem",upClass:"divExchangeUp",downClass:"divExchangeDown",parentClass:'divExchangeParent',movieTime:2,itemWidth:false,fireFunction:YAHOO.util.Easing.easeOutStrong,limitTime:function(){var noExpires=new Date();noExpires.setTime(noExpires.getTime()+60*60*1000*24*60);return noExpires;}(),cookieName:"divExchange"};var config;var isInited=false;var dContainer,aItem=[],aItemIndex=[];var topFadeView,bottomFadeView,topFadeAnim,bottomFadeAnim;_self.init=function(oConfig){if(isInited)return false;config=TB.applyIf(oConfig||{},defConfig);dContainer=get(config.containerId);aItem=YUD.getElementsByClassName(config.itemClass,"*",dContainer);var upBtn=YUD.getElementsByClassName(config.upClass,"*",dContainer);var downBtn=YUD.getElementsByClassName(config.downClass,"*",dContainer);for(var i=0,n=aItem.length;i<n;i++){YUE.on(upBtn[i],"click",goUp,i);YUE.on(downBtn[i],"click",goDown,i);}
reorderByCookie();topFadeView=document.createElement("div");bottomFadeView=document.createElement("div");topFadeView.className=config.itemClass;topFadeView.className=config.itemClass;if(config.itemWidth){topFadeView.style.width=config.itemWidth+"px";bottomFadeView.style.width=config.itemWidth+"px";}else{topFadeView.style.width=aItem[0].offsetWidth+"px";bottomFadeView.style.width=aItem[0].offsetWidth+"px";}
topFadeView.style.position="absolute";bottomFadeView.style.position="absolute";topFadeView.style.zIndex=-1;bottomFadeView.style.zIndex=-1;dContainer.appendChild(topFadeView);dContainer.appendChild(bottomFadeView);topFadeAnim=new YAHOO.util.Motion(topFadeView,{points:{to:[0,0]}},config.movieTime,config.fireFunction);bottomFadeAnim=new YAHOO.util.Motion(bottomFadeView,{points:{to:[0,0]}},config.movieTime,config.fireFunction);topFadeAnim.onStart.subscribe(animStart);bottomFadeAnim.onComplete.subscribe(animComplete);topFadeView.style.display="none";bottomFadeView.style.display="none";};var animStart=function(){};var animComplete=function(){YUD.setStyle(aItem,'opacity','1');YUD.setStyle(aItem,'opacity','1');topFadeView.style.display="none";bottomFadeView.style.display="none";};var goUp=function(ev,iIndex){iIndex=parseInt(iIndex);if(topFadeAnim.isAnimated()||bottomFadeAnim.isAnimated()){return false;}
var trueIndex=aItemIndex.indexOf(iIndex);if(trueIndex>0){var atUpNode=aItem[aItemIndex[trueIndex-1]];var atDownNode=aItem[aItemIndex[trueIndex]];var aOldPos=[YUD.getXY(atUpNode),YUD.getXY(atDownNode)];YUD.setStyle(atUpNode,'opacity','0');YUD.setStyle(atDownNode,'opacity','0');dContainer.insertBefore(atDownNode,atUpNode);var aNewPos=[YUD.getXY(atUpNode),YUD.getXY(atDownNode)];var tmp1=aItemIndex[trueIndex];aItemIndex[trueIndex]=aItemIndex[trueIndex-1];aItemIndex[trueIndex-1]=tmp1;writeCookie();aZIndex=[998,999];fadeExchange(aOldPos,aNewPos,aZIndex,[atUpNode.innerHTML,atDownNode.innerHTML]);}};var goDown=function(ev,iIndex){iIndex=parseInt(iIndex);if(topFadeAnim.isAnimated()||bottomFadeAnim.isAnimated()){return false;}
var trueIndex=aItemIndex.indexOf(iIndex);if(trueIndex<aItemIndex.length-1){var atUpNode=aItem[aItemIndex[trueIndex]];var atDownNode=aItem[aItemIndex[trueIndex+1]];var aOldPos=[YUD.getXY(atUpNode),YUD.getXY(atDownNode)];YUD.setStyle(atUpNode,'opacity','0');YUD.setStyle(atDownNode,'opacity','0');dContainer.insertBefore(atDownNode,atUpNode);var aNewPos=[YUD.getXY(atUpNode),YUD.getXY(atDownNode)];var tmp1=aItemIndex[trueIndex];aItemIndex[trueIndex]=aItemIndex[trueIndex+1];aItemIndex[trueIndex+1]=tmp1;writeCookie();aZIndex=[999,998];fadeExchange(aOldPos,aNewPos,aZIndex,[atUpNode.innerHTML,atDownNode.innerHTML]);}};var fadeExchange=function(aOldPos,aNewPos,aZIndex,aInnerHtml){YUD.setStyle(topFadeView,'display','');YUD.setStyle(bottomFadeView,'display','');YUD.setXY(topFadeView,aOldPos[0]);YUD.setXY(bottomFadeView,aOldPos[1]);YUD.setStyle(topFadeView,'zIndex',aZIndex[0]);YUD.setStyle(bottomFadeView,'zIndex',aZIndex[1]);topFadeView.innerHTML=aInnerHtml[0];bottomFadeView.innerHTML=aInnerHtml[1];topFadeAnim.attributes.points.to=aNewPos[0];bottomFadeAnim.attributes.points.to=aNewPos[1];topFadeAnim.animate();bottomFadeAnim.animate();};var reorderByCookie=function(){var order=TB.bom.getCookie(config.cookieName);if(!order){for(var i=0,n=aItem.length;i<n;i++){aItemIndex[i]=i;}
return;}
for(var i=0,n=order.length;i<n;i++){aItemIndex[i]=parseInt(order.substring(i,i+1));if(i>0){TB.dom.insertAfter(aItem[aItemIndex[i]],aItem[aItemIndex[i-1]]);}}};var writeCookie=function(){TB.bom.setCookie(config.cookieName,aItemIndex.join(''),true);}}

TB.widget.SimpleScroll=new function(){var Y=YAHOO.util;var defConfig={delay:2,speed:20,startDelay:2,scrollItemCount:1}
this.decorate=function(container,config){container=$(container);config=TB.applyIf(config||{},defConfig);var handle={};var scrollTimeId=null,pause=false;var onScrollEvent=new Y.CustomEvent("onScroll",handle,false,Y.CustomEvent.FLAT);if(config.onScroll){onScrollEvent.subscribe(config.onScroll);}else{onScrollEvent.subscribe(function(){for(var i=0;i<config.scrollItemCount;i++){container.appendChild(container.getElementsByTagName('li')[0]);}});}
var scroll=function(){if(pause)return;container.scrollTop+=2;var lh=config.lineHeight||container.getElementsByTagName('li')[0].offsetHeight;if(container.scrollTop%lh<=1){clearInterval(scrollTimeId);onScrollEvent.fire();container.scrollTop=0;setTimeout(start,config.delay*1000);}}
var start=function(){var lh=config.lineHeight||container.getElementsByTagName('li')[0].offsetHeight;if(container.scrollHeight-container.offsetHeight>=lh)
scrollTimeId=setInterval(scroll,config.speed);}
$E.on(container,'mouseover',function(){pause=true;});$E.on(container,'mouseout',function(){pause=false;});setTimeout(start,config.startDelay*1000);TB.apply(handle,{subscribeOnScroll:function(func,override){if(override===true&&onScrollEvent.subscribers.length>0)
onScrollEvent.unsubscribeAll();onScrollEvent.subscribe(func);}});handle.onScroll=handle.subscribeOnScroll;return handle;}};

AE.widget.groupViewer=(function(){var YUD=YAHOO.util.Dom,YUE=YAHOO.util.Event;var currentHook,dropTimeId,dropTimeout=300,dropHeight=false;var canClose,classAllTimer,config;var aItem;var oDefConfig={dropHeight:false,dropTimeout:300,panelId:"BraPanel",tabClass:"groupViewerTab",contentClass:"groupViewerContent",plusClass:"groupViewerMouseHover"};var dropAnim=function(panel){YUD.setStyle(panel,'height',0);YUD.setStyle(panel,'display','block');var content=YUD.getElementsByClassName(config.contentClass,'div',panel)[0];var anim=new YAHOO.util.Anim(panel,{height:{from:0,to:panel.dropHeight}},0.3);anim.onStart.subscribe(function(){YUD.setStyle(content,'display','none');})
anim.onComplete.subscribe(function(){YUD.setStyle(content,'display','');});anim.animate();};var closeAllDelay=function(){clearTimeout(classAllTimer);classAllTimer=setTimeout(closeAll,200);}
var closeAll=function(){if(!canClose){return;}
cancelDrop();var bp=YUD.get(config.panelId);if(currentHook){var cp=currentHook;var curRel=YUD.get(currentHook.getAttribute('rel'));var drawAnim=new YAHOO.util.Anim(curRel,{height:{to:0}},0.2);var content=YUD.getElementsByClassName(config.contentClass,'div',curRel)[0];drawAnim.onStart.subscribe(function(){YUD.setStyle(content,'display','none');});drawAnim.onComplete.subscribe(function(){YUD.removeClass(aItem,config.plusClass);YUD.setStyle(curRel,'display','none');YUD.setStyle(curRel,'height','0px');YUD.setStyle(content,'display','');currentHook=null;});drawAnim.animate();}}
var drop=function(){var rel=YUD.get(this.getAttribute('rel'));YUD.addClass(this,config.plusClass);if(currentHook){var curRel=YUD.get(currentHook.getAttribute('rel'));var cpContent=YUD.getElementsByClassName(config.contentClass,'div',curRel)[0];var rel=YUD.get(this.getAttribute('rel'));if(this.parentNode.parentNode!=currentHook.parentNode.parentNode){var hiddenAnim=new YAHOO.util.Anim(curRel,{height:{to:0}},0.15);var cp=currentHook;hiddenAnim.onStart.subscribe(function(){YUD.setStyle(cpContent,'display','none');});hiddenAnim.onComplete.subscribe(function(){YUD.setStyle(cpContent,'display','');YUD.removeClass(cp,config.plusClass);YUD.setStyle(curRel,'display','none');YUD.setStyle(curRel,'height',curRel.dropHeight+'px');});hiddenAnim.animate();YUD.addClass(this,config.plusClass);dropAnim(rel);}else{YUD.removeClass(currentHook,config.plusClass);YUD.addClass(this,config.plusClass);YUD.setStyle(curRel,'display','none');YUD.setStyle(rel,'display','block');YUD.setStyle(rel,'height',rel.dropHeight+'px');}}else{YUD.addClass(this,config.plusClass);dropAnim(rel);}
currentHook=this;}
var delayDrop=function(){cancelDrop();var hook=this;dropTimeId=setTimeout(function(){drop.call(hook);},dropTimeout);}
var cancelDrop=function(){clearTimeout(dropTimeId);}
return{init:function(oConfig){config=TB.applyIf(oConfig||{},oDefConfig);dropHeight=config.dropHeight;var bp=YUD.get(config.panelId);try{currentHook=YUD.getElementsByClassName(config.plusClass,'*',bp)[0];if(currentHook){rel=YUD.get(currentHook.getAttribute('rel'));}}catch(e){}
aItem=YUD.getElementsByClassName(config.tabClass,'*',bp);for(var i=0;i<aItem.length;i++){var itemContent=YUD.getElementsByClassName(config.contentClass,'div',get(aItem[i].getAttribute('rel')))[0];itemContent.parentNode.style.display='';get(aItem[i].getAttribute('rel')).dropHeight=(config.dropHeight)?config.dropHeight:itemContent.offsetHeight;itemContent.parentNode.style.display='none';YUE.on(aItem[i],'mouseover',delayDrop);YUE.on(aItem[i],'mouseout',cancelDrop);}
YUE.on(bp,"mouseout",closeAllDelay);YUE.on(bp,"mouseover",function(){canClose=false;});YUE.on(bp,"mouseout",function(){canClose=true;});}};})();

AE.webUser=new function(){var _self=this;var defConfig={signoutURL:'http://us.my.alibaba.com/user/sign/sign_out.htm',signinURL:'https://login.alibaba.com',joinWithCD0URL:'http://us.my.alibaba.com/user/join.biz?cd=0',joinFro:''};var sysLanguage=navigator.browserLanguage?navigator.browserLanguage:navigator.language;var config;var isLoggedIn=false,firstName='',lastName='',country='',serviceType='';var fromChina=false,firstIn=false,openAlertWindow=false;_self.create=function(oConfig){config=TB.applyIf(oConfig||{},defConfig);var userCookie=AE.bom.getCookie('ali_non_s_temp');if(!userCookie){_self.clearSignInInfo();}else{userCookie=userCookie.split('-_-');if(userCookie.length<4){_self.clearSignInInfo();}else{country=userCookie[0];firstName=userCookie[1];lastName=userCookie[2];serviceType=userCookie[3];if(serviceType.trim().isEmpty()||country.trim().isEmpty()){_self.clearSignInInfo();}else{isLoggedIn=true;}}}
if(_self.hasLoggedIn()){if(_self.getServiceType()=='cgs'||_self.getServiceType()=='hkgs'||_self.getServiceType()=='gs'){fromChina=true;}else{fromChina=false;}}else{if(sysLanguage.toLowerCase()=='zh-cn'){fromChina=true;}else{fromChina=false;}}
if(AE.bom.getCookie('ali_intl_firstIn').isEmpty()){firstIn=true;AE.bom.setCookie('ali_intl_firstIn','n',true);}};_self.isFirstIn=function(){return firstIn;}
_self.clearSignInInfo=function(){isLoggedIn=false;country='';firstName='';lastName='';serviceType='';};_self.setUri=function(obj){config=TB.applyIf(obj||{},defConfig);};_self.isChinaUser=function(){return fromChina;}
_self.writeWelcomeInfo=function(welId){dWel=get(welId);if(!dWel){return false;}
if(_self.hasLoggedIn()){dWel.innerHTML='<span class="default">Welcome, '+_self.getFirstName()+'</span> | <a href="'+config.signoutURL+'">Sign Out</a>'}else{dWel.innerHTML='<a href="javascript:signin()"  ><strong>Sign In</strong></a> | <a href="'+config.joinWithCD0URL+config.joinFrom+'"><strong>Join Now</strong></a>';}}
_self.hasLoggedIn=function(){return isLoggedIn;};_self.getFirstName=function(){return firstName;};_self.getLastName=function(){return lastName;};_self.getCountry=function(){return country;};_self.getServiceType=function(){return serviceType;};_self.signin=function(){if(top.location.href!=self.location.href){var url=config.signinURL+"?Done="+escape(extractUrl(self.location.href));top.location.href=url;}else{var url=config.signinURL+"?Done="+escape(location.href);location.href=url;}};var openFirstInWindowHandle=function(){if(openAlertWindow){}}
_self.firstInOpenWin=function(){if(_self.isFirstIn()){openAlertWindow=true;}
YUE.on(document,'click',function(){openAlertWindow=false;});YUE.on(get('SearchTextIdx'),'keydown',function(){openAlertWindow=false;});YUE.on(window,'unload',openFirstInWindowHandle);}};function signin(){AE.webUser.signin();}
