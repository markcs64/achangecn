AE.widget.itemViewer=function(){
	var oComponent=this;
	var oDefConfig={
	itemSize:[0,0],
	itemNum:6,
	step:3,
	animTime:1,
	orientation:"h",
	toward:-1, //i dont know, why i use this.
	fireFunction:YAHOO.util.Easing.easeBothStrong,
	itemContainerId:"itemViewerContainer",
	itemClassName:"itemViewerItem",
	preBtnId:"itemViewerPre",
	nextBtnId:"itemViewerNext",
	navContainerId:"itemViewerNav",
	getDataUrl:false,
	dataFormId:false,
	upFront:2, // if sectionLoad, load data bdfore 2 page
	navFireEvent:"click",
	autoCycleTimes:false,
	cycleDelay:2000,
	loadTextLength:50,
	navCurrentClass:"current"
	
	}
	var config;
	var preBtn, nextBtn, navContainer, itemContainer;
	var anim;
	var isInited = false;
	var basePoint = [0,0];
	var currentIndex = 0;
	var pageNum, loadedItemNum;
	var loadDataForm, canGetData= true, loadDataLength; //be used by procuess data
	var cycleTimer, cycleTimes=0;
	
	oComponent.onDisablePre =new YAHOO.util.CustomEvent("disablePre",oComponent);
	oComponent.onEnablePre = new YAHOO.util.CustomEvent("enablePre",oComponent);
	oComponent.onDisableNext = new YAHOO.util.CustomEvent("disableNext",oComponent);
	oComponent.onEnableNext = new YAHOO.util.CustomEvent("enableNext",oComponent);
	
	oComponent.init=function(oConfig){
		if(isInited)return false;
		config = AE.cpAttribute(oConfig,oDefConfig);
		if(config.itemNum<0){
			isInited = true;
			return false;
			}
			try{
		preBtn = get(config.preBtnId);
		nextBtn = get(config.nextBtnId);
			}catch(E){
		preBtn=false;
		nextBtn =false;
			}
		itemContainer = get(config.itemContainerId);
		pageNum=Math.ceil(config.itemNum/config.step);
		creatNav();
		basePoint = YUD.getXY(itemContainer.parentNode);
		loadedItemNum = YUD.getElementsByClassName(config.itemClassName,'*',itemContainer).length;
		loadDataLength = loadedItemNum.toString();
		
		fixContainer(); // to make container larg enough
		anim=new YAHOO.util.Motion('itemViewerContainer', { points: { to: basePoint } },config.animTime,config.fireFunction )

		if(config.dataFormId)createForm();
		if(preBtn){
		YUE.on(preBtn, 'click', oComponent.fPre);
		YUE.on(nextBtn, 'click', oComponent.fNext);
		}
		setPointTo(0);
		createAutoCycle();
		isInited = true;
		return true;
	};
	

	
	oComponent.fPre = function(e){
		if(e)YUE.stopEvent(e);
		if(anim.isAnimated())return false;
		--currentIndex;
		if(setPointTo(currentIndex)){setCurrentNavClass(currentIndex);anim.animate();}
		};

	oComponent.fNext= function(e){

		if(e)YUE.stopEvent(e);
		if(anim.isAnimated())return false;
		++currentIndex;
		if(setPointTo(currentIndex)){
			setCurrentNavClass(currentIndex);
			anim.animate();
		}
		};

	oComponent.show = function(e,iPageNum){
		if(e)YUE.stopEvent(e);
		if(anim.isAnimated())return false;
		if(!YL.isNumber(iPageNum))return false;
		var iIndex=iPageNum-1;
		if(iIndex<0){iIndex=0}
		if(iIndex>=pageNum){iIndex=pageNum-1}
		currentIndex=iIndex;
		if(setPointTo(currentIndex)){
			setCurrentNavClass(currentIndex);
			anim.animate();
		}
		
	};
	
	oComponent.showDirectly = function(e,iPageNum){
		if(e)YUE.stopEvent(e);
		if(anim.isAnimated())return false;
		if(!YL.isNumber(iPageNum))return false;
		var iIndex=iPageNum-1;
		if(iIndex<0){iIndex=0}
		if(iIndex>=pageNum){iIndex=pageNum-1}
		currentIndex=iIndex;
		if(setPointTo(currentIndex)){
			setCurrentNavClass(currentIndex);
			anim.animate();
			anim.stop(true);
		}
		
	};
	
		
	var creatNav = function(){
		
		try{navContainer = get(config.navContainerId)}catch(E){navContainer=false;return false;}
		if(!navContainer)return false;
		for(var i=1, tmpA={};i<=pageNum;i++){
			tmpA = document.createElement("a");
			tmpA.href="javascript:void(0)";
			if(i == 1){tmpA.className=config.navCurrentClass}
			tmpA.innerHTML=i;
			YUE.on(tmpA,config.navFireEvent,oComponent.show,i);
			navContainer.appendChild(tmpA);
			}
		};
		
		var setCurrentNavClass = function(iIndex){
			if(!navContainer)return false;
			var items = navContainer.getElementsByTagName("a");
			YUD.removeClass(items,config.navCurrentClass);
			YUD.addClass(items[iIndex],config.navCurrentClass);
		}
		
		///// cycle begin
var createAutoCycle = function (){
	if(!config.autoCycleTimes)return false;
	cycleTimer = setTimeout(doCycle,config.cycleDelay);
	if(navContainer){
		YUE.on(navContainer,"mouseover",cycleStop);
		YUE.on(navContainer,"mouseout",cycleStart);
		YUE.on(itemContainer,"mouseover",cycleStop);
		YUE.on(itemContainer,"mouseout",cycleStart);
		}
		if(preBtn){
		YUE.on(preBtn,"mouseover",cycleStop);
		YUE.on(preBtn,"mouseout",cycleStart);
		YUE.on(nextBtn,"mouseover",cycleStop);
		YUE.on(nextBtn,"mouseout",cycleStart);
		}
	}
	
var cycleStop = function(e){
	YUE.stopEvent(e);
	clearTimeout(cycleTimer);
	}
var cycleStart = function(e){
	YUE.stopEvent(e);
	cycleTimer = setTimeout(doCycle,config.cycleDelay);
	}
	
 var doCycle = function(){
 	clearTimeout(cycleTimer);
 	if(currentIndex>=pageNum-1){
 		currentIndex=-1;
 		cycleTimes ++; 		
 		}
 		if(cycleTimes>=config.autoCycleTimes){
 			clearTimeout(cycleTimer);
 			if(navContainer){
	 		YUE.removeListener(navContainer,"mouseover",cycleStop);
			YUE.removeListener(navContainer,"mouseout",cycleStart);
			}
			if(preBtn){
			YUE.removeListener(preBtn,"mouseover",cycleStop);
			YUE.removeListener(preBtn,"mouseout",cycleStart);
			YUE.removeListener(nextBtn,"mouseover",cycleStop);
			YUE.removeListener(nextBtn,"mouseout",cycleStart);
			}
			YUE.removeListener(itemContainer,"mouseover",cycleStop);
			YUE.removeListener(itemContainer,"mouseout",cycleStart);
			oComponent.show(null,1);
			return;
 			}else{
 				cycleTimer = setTimeout(doCycle,config.cycleDelay);
 			}
 	oComponent.fNext();
 	
 	}
 	
 	///cycle end
 	
	var setPointTo = function(targetIndex){
		
		if(targetIndex<=0 ) { 
			disablePre();
			if(targetIndex<0 ){currentIndex=0;return false;}
			}else{
				enablePre();
			}
		
		if(targetIndex>=pageNum-1 ) {
			disableNext();
			if(targetIndex>=pageNum){currentIndex=pageNum-1;return false;}
			}else{
				enableNext();
				}
		if(config.dataFormId)getItems(targetIndex+1); //if is partially load data 
		basePoint = YUD.getXY(itemContainer.parentNode);
		var x = targetIndex * config.step * config.toward * config.itemSize[0] + basePoint[0];
		var y = targetIndex * config.step * config.toward * config.itemSize[1] + basePoint[1];
		switch(config.orientation){
		 case "h": {
		 	anim.attributes.points.to=[basePoint[0],y];
		 	break;}
		 case "w": {
		anim.attributes.points.to=[x,basePoint[1]];
		break;}
			};
		return true;
	}
	
	////////////customer event begin
	var disablePre = function (){
		oComponent.onDisablePre.fire();
		};
		
	var enablePre = function (){
		oComponent.onEnablePre.fire();
		};
		
	var disableNext = function (){
		
		oComponent.onDisableNext.fire();
		};
		
	var enableNext = function (){
		oComponent.onEnableNext.fire();
		};
		
////////////customer event end
			
			
		var fixContainer = function(){
			switch(config.orientation){
		 case "h": {
		 	var h = config.itemSize[1]*config.itemNum;
		 	itemContainer.style.height=h+"px";
		 	break;
		 	}
		 case "w": {
			 	var w = config.itemSize[0]*config.itemNum;
			 	itemContainer.style.width=w+"px";
			 	break;
			 	}
				};
			};
		
		//section load begin
		
		var createForm = function(){
			loadDataForm = get(config.dataFormId);
			//alert(loadDataForm.startIndex.value);

			YUD.setStyle(loadDataForm,"display","none");

		}
		
		
		var getItems = function(iPageNum){
			if(!canGetData)return false;
			var currentRequestLength  = iPageNum*config.step;
			if(currentRequestLength <= loadedItemNum-(config.step*config.upFront) || loadedItemNum >= config.itemNum)return false;
			
				var getItemsCallback =
				{
				  success:getItemsSuccess,
				  failure:getItemsFailure,
				  argument:[]
				};
			if(!config.getDataUrl)return false;
			canGetData = false;
			loadDataForm.startIndex.value = loadedItemNum;
			YAHOO.util.Connect.setForm(loadDataForm.id);
			var request = YAHOO.util.Connect.asyncRequest('POST', config.getDataUrl, getItemsCallback);
				
		};
		
		var getItemsSuccess = function(o){
	if(o.responseText !== undefined){
		itemContainer.innerHTML+= o.responseText;
		loadedItemNum = YUD.getElementsByClassName(config.itemClassName,'*',itemContainer).length;
		}
	canGetData = true;
	};
	
	var getItemsFailure = function(o){
		
	if(o.responseText !== undefined){
		
		}
	canGetData = true;
	};
	
	
		//section load end
		
	}