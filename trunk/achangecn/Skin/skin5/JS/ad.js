// JavaScript Document



  function IsNav()
 {
    return ( navigator.appName=="Netscape" );      
 }
 function IsIE()
 {
   return ( navigator.appName=="Microsoft Internet Explorer" ); 
 }
  var imgUrl=new Array();
  var imgLink=new Array();

//第1幅图
  imgUrl[1]="IMAGES/AD_a.jpg"; 
  imgLink[1]="*";
//第2幅图
  imgUrl[2]="IMAGES/AD_b.jpg"; 
  imgLink[2]="*";
//第3幅图
  imgUrl[3]="IMAGES/AD_c.jpg"; 
  imgLink[3]="*";
//第4幅图
  imgUrl[4]="IMAGES/AD_d.jpg"; 
  imgLink[4]="*";
//第5幅图
  imgUrl[5]="IMAGES/AD_e.jpg"; 
  imgLink[5]="*";

  var num_pic =5 //图片数不超过五个
  var focusPicNumSrc="IMAGES/"
  var time1 = 0; 
  var time2 = 8;
  var timeout1 = time1*1000;
  var timeout2 = time2*1000;
  var nn;
  nn=1;
  var curFileNum = 1;
  
     setTimeout('change_img()',timeout1);
  
  function change_img(){
     if(nn>num_pic) nn=1;
     setTimeout('setFocus2('+nn+')',timeout1);
     nn++;
     tt=setTimeout('change_img()',timeout2);
  }
  function setFocus2(i){
     curFileNum = i;
     selectLayer1(i);
     if(IsIE())
  {
      document.images.imgInit.filters.revealTrans.Transition=12;
      document.images.imgInit.filters.revealTrans.apply();
      playTran();
     }
     document.images.imgInit.src=imgUrl[i];
  }
  function setFocus1(i){
     nn = i;
     ln=i;
     curFileNum = i;
     selectLayer1(i);
     setFocus2(i);
  }
  function selectLayer1(i){
     for (a=1;a<num_pic+1;a++ )
     {
     document.images['fi_'+a].src=focusPicNumSrc+'num_0'+a+'off.gif';
     }
     document.images['fi_'+i].src=focusPicNumSrc+'num_0'+i+'on.gif';
  }
  function goUrl(){
  ln=nn;
  if (ln ==1)
  {
  jumpUrl=imgLink[ln];
  }else
  {
  jumpUrl=imgLink[ln-1];
  }
     jumpTarget='_blank';
     if (jumpUrl != ''){
         if (jumpTarget != '') 
         window.open(jumpUrl,jumpTarget);
         else
         location.href=jumpUrl;
     }
  }
  function playTran(){
     if (document.all)
         document.images.imgInit.filters.revealTrans.play();
  }
  function GetObj(objName){ 
   if(document.getElementById){ 
    return eval('document.getElementById("' + objName + '")'); 
   }else if(document.layers){ 
    return eval("document.layers['" + objName +"']"); 
   }else{ 
    return eval('document.all.' + objName); 
   } 
  } 
 