var activeMenu=null;
var activeItem=null;
function AlicnMenu(){
var value = null;
var children = [];
this.bindData = function(data){
value = data;
};
this.draw = function(parentObj){
for(var i=0;i<value.length;i++){
var nodeElement =  window.document.createElement("div");
nodeElement.id = "menu_"+ value[i].id;
nodeElement.className = "menu";
var statelink = window.document.createElement("a");
statelink.id = "statelink_"+value[i].id;
setStatueImg(value[i],statelink,true)
var namelink = window.document.createElement("a");
namelink.id = "menu" + value[i].id;
namelink.className = "linkItem";
if(value[i].children.length!=0){
statelink.href=namelink.href='javascript:menuClick(' + value[i].id + ',1)';
}else{
if(value[i].url&&value[i].url!="#"&&value[i].url!="")namelink.href =value[i].url;
if(value[i].target&&value[i].target=="_blank"&&value[i].target!="")namelink.target ="_blank";
}
namelink.innerHTML = value[i].name;
nodeElement.appendChild(statelink);
nodeElement.appendChild(namelink);
if(value[i].statusIcon){
var floatImg= window.document.createElement("img");
floatImg.src=value[i].statusIcon;
floatImg.alt='��';
floatImg.align="absmiddle";
nodeElement.appendChild(floatImg);
}
parentObj.appendChild(nodeElement);
if(value[i].children.length!=0){
drawChildren(value[i],parentObj);
}
}
};
this.setActivedItem=function(nodeId){
//document.write(document.all.tree1.innerHTML)
if(document.getElementById("statelink_"+nodeId)!=null){
var namelink = document.getElementById("statelink_"+nodeId);
if(namelink.parentNode.className=="menu"){//��ǰΪmenu
namelink.parentNode.className="indexmenu";
return;
}
namelink.parentNode.className="selectItem2";
if(namelink.parentNode.parentNode.className=="itembox"){
var nodeId=namelink.parentNode.parentNode.id.replace("children_","")
setStateImg(nodeId,"collapse")
namelink.parentNode.parentNode.style.display="block";
activeMenu = namelink.parentNode.parentNode;
}
if(namelink.parentNode.parentNode.parentNode.className=="itembox"){
namelink.parentNode.parentNode.parentNode.style.display="block";
var nodeId = namelink.parentNode.parentNode.parentNode.id.replace("children_","")
setStateImg(nodeId,"collapse")
activeMenu = namelink.parentNode.parentNode.parentNode;
getObj("menu_"+nodeId).className="activedmenu";//arrow
}
}
}
}
function getObj(str){
return document.getElementById(str);
}
function drawChildren(value,nodeElement){
var childrenElement = null;
childrenElement =  window.document.createElement("div");
childrenElement.id="children_"+value.id;
childrenElement.className="itembox"
for(var i=0;i < value.children.length;i++){
var childElement =  window.document.createElement("div");
var statelink = window.document.createElement("a");
statelink.id = "statelink_"+value.children[i].id;
childElement.className="item2"
var namelink = window.document.createElement("a");
namelink.id = "namelink_" + value.children[i].id;
if(value.children[i].children.length>0){
statelink.href = namelink.href='javascript:menuClick(' + value.children[i].id + ',2)';
}else{
if(value.children[i].url&&value.children[i].url!="#"&&value.children[i].url!="")namelink.href=value.children[i].url;
if(value.children[i].target&&value.children[i].target=="_blank"&&value.children[i].target!="")namelink.target ="_blank";
}
setStatueImg(value.children[i],statelink,false)
namelink.innerHTML =  value.children[i].name;
childElement.appendChild(statelink);
childElement.appendChild(namelink);
childrenElement.appendChild(childElement);
if(value.children[i].children.length>0){
drawChildren(value.children[i],childrenElement);
}
/*tip������һ���˵�*/
if(document.all&&value.children[i].tips){
tipsDiv= window.document.createElement("div");
tipsDiv.innerHTML="<div><div class='left'>"+value.children[i].tips+"<\/div><div class='right'><img src='images/close.gif' alt='' style='cursor:pointer;' onclick='this.parentNode.parentNode.parentNode.className=\"hidebox\"'/><\/div>";
tipsDiv.className="myaliMenuTips";
childElement.appendChild(tipsDiv);
}
if(document.all&&value.children[i].statusIcon){
var floatImg= window.document.createElement("img");
floatImg.src=value.children[i].statusIcon;
floatImg.alt='��';
floatImg.align="absmiddle";
childElement.appendChild(floatImg);
}
}
childrenElement.style.display = "none";
nodeElement.appendChild(childrenElement);
}
function setStatueImg(value,statelink,flag){//flag����Ҷ�ӽڵ��Ƿ����leaf.gif
if(value.children.length>0){
statelink.innerHTML="<img src='images/expand.gif' border=0 align='absmiddle' style='cursor:hand'>";
return;
}else{
statelink.innerHTML="<img src='images/leaf.gif' border=0 align='absmiddle' style='cursor:hand'>";
return;
}
}
function menuClick(nodeId,flag){
if(flag==1){//click menu
if(getObj("children_"+nodeId).style.display=="none"){
getObj("children_"+nodeId).style.display="block";
setStateImg(nodeId,"collapse")
if(activeMenu!=null)
{
activeMenu.style.display="none";
setStateImg((activeMenu.id).replace("children_",""),"expand")
getObj("menu_"+(activeMenu.id).replace("children_","")).className="menu";//arrow
}
getObj("menu_"+nodeId).className="activedmenu";//arrow
activeMenu = getObj("children_"+nodeId);
return;
}else{
getObj("children_"+nodeId).style.display="none";
setStateImg(nodeId,"expand");
getObj("menu_"+nodeId).className="menu";//arrow
activeMenu =null;
return;
}
}
if(flag==2){
if(document.getElementById("children_"+nodeId).style.display=="none"){
document.getElementById("children_"+nodeId).style.display="block";
document.getElementById("statelink_"+nodeId).innerHTML="<img src='images/collapse.gif' border=0 align='absmiddle' style='cursor:hand'>";
//activeItem.className="item2";
//activeItem=document.getElementById("namelink_"+nodeId);
//document.getElementById("namelink_"+nodeId).className="selectItem";
}else{
document.getElementById("children_"+nodeId).style.display="none";
document.getElementById("statelink_"+nodeId).innerHTML="<img src='images/expand.gif' border=0 align='absmiddle' style='cursor:hand'>";
//activeItem.className="item2";
//activeItem=document.getElementById("namelink_"+nodeId);
//document.getElementById("namelink_"+nodeId).className="selectItem";
}
}
}
function setStateImg(nodeId,state){
//alert(nodeId)
if(document.getElementById("statelink_"+nodeId)){}else return;
var statelink = document.getElementById("statelink_"+nodeId);
if(state=="collapse"){
if(statelink.parentNode.className=="menu")statelink.parentNode.className="activedmenu"
statelink.innerHTML="<img src='images/collapse.gif' border=0 align='absmiddle' style='cursor:hand'>";
return;
}
if(state=="expand"){
statelink.innerHTML="<img src='images/expand.gif' border=0 align='absmiddle' style='cursor:hand'>";
return;
}
return;
}
function killErrors() {
return true;
}
window.onerror = killErrors;