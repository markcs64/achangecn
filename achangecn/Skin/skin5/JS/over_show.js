if(!AE.widget.overShow){AE.widget.overShow = function (){
		var oComponent=this;
		var oDefConfig={
			targetId:"overShowTargetId",
			contentId:"overShowContentId",
			showDelayTime:200,
			hiddenDelayTime:200,
			excursion:[0,0]
			};
		var config;
		var isInited = false;
		var dTarget,dContent;
		var delayTimer=false;
		var canClose=true,contentShowed = false;
		oComponent.afterShow =new YAHOO.util.CustomEvent("afterShow",oComponent);
		
		oComponent.init=function(oConfig){
		if(isInited)return false;
		config = AE.cpAttribute(oConfig,oDefConfig);
		dTarget = get(config.targetId);
		dContent = get(config.contentId);

		YUE.on(dTarget,"mouseover",oComponent.showDelay);
		YUE.on(dContent,"mouseover",oComponent.showDelay);
		YUE.on(dTarget,"mouseout",oComponent.hiddenDelay);
		YUE.on(dContent,"mouseout",oComponent.hiddenDelay);
		
		
		YUE.on(dTarget,"mouseover",function(){canClose=false;});
		YUE.on(dContent,"mouseover",function(){canClose=false;});
		YUE.on(dTarget,"mouseout",function(){canClose=true;});
		YUE.on(dContent,"mouseout",function(){canClose=true;});

	}
	
	oComponent.showDelay = function(e){
		//YUE.stopEvent(e);
		if(delayTimer){clearTimeout(delayTimer);}
		delayTimer = setTimeout(oComponent.showDirectly,config.showDelayTime);
		}
	
	oComponent.showDirectly = function(){
		if(contentShowed){return;}
		var xy  = YUD.getXY(dTarget);
		xy[0]+=config.excursion[0];
		xy[1]+=config.excursion[1];
		dContent.style.display='';
		YUD.setXY(dContent,xy);
		YUD.setStyle(dContent,'opacity',1);
		oComponent.afterShow.fire();
		contentShowed=true;
			}
			
			
		oComponent.hiddenDelay = function(e){
		YUE.stopEvent(e);
		if(delayTimer){clearTimeout(delayTimer);}
		delayTimer = setTimeout(oComponent.hiddenDirectly,config.hiddenDelayTime);
		}
		oComponent.hiddenDirectly = function(){
			if(!canClose){return false;}
			dContent.style.display="none";
			contentShowed = false;
			}
	}
	
}