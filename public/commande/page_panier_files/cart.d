function sirData(){this.insertDataURL="js.sddan.com/ID.d?";this.searchKeywords='';this.keywords='';this.partnerID=0;this.siteID=0;this.subID=0;this.requestID='';this.userID='';this.country='';this.getParams={};this.userCat={};this.userIteratorFunc=[];this.customVar={};this.cookieData={};this.hashList={};this.service='';this.u='';this.ts=null;this.welcomeMediaHash='';};sirData.prototype.getDataURL=function(){return 'https://'+this.insertDataURL;};sirData.prototype.definePartner=function(partnerID,siteID,subID){this.partnerID=partnerID;this.siteID=siteID;this.subID=subID;};sirData.prototype.getALlKeywords=function(){return this.searchKeywords+' '+this.keywords;};sirData.prototype.addKeyword=function(keywords){this.keywords+=' '+keywords;};sirData.prototype.addSearchKeyword=function(keywords){this.searchKeywords+=' '+keywords;};sirData.prototype.callUrlIfBlock=function(blockPixelArray,notBlockPixelArray){var isOpera=!!window.opera||navigator.userAgent.indexOf(' OPR/')>=0;var isChrome=!!window.chrome&&!isOpera;var isFirefox=typeof InstallTrigger!=='undefined';if(isChrome||isFirefox){var htmlElem=document.createElement('div');htmlElem.className='AdvertContainer adblock annonces_google barre_adsense adBlock';htmlElem.style.height='1px';htmlElem.style.width='1px';htmlElem.style.opacity='0.1';document.body.appendChild(htmlElem);if(htmlElem.offsetHeight==0){for(var i=0;i<blockPixelArray.length;i++){this.callURL(blockPixelArray[i]);}}
else{for(var i=0;i<notBlockPixelArray.length;i++){this.callURL(notBlockPixelArray[i]);}}
htmlElem.parentNode.removeChild(htmlElem);}};sirData.prototype.httpCall=function(url){if(!url)
return;var i=new Image();i.src=url.substr(0,2048);};sirData.prototype.httpCallList=function(list){for(var c=0;c<list.length;c++){this.httpCall(list[c]);}};sirData.prototype.httpCallWithoutProtocol=function(url){var i=new Image('http://'+url);i.src=url.substr(0,2048);};sirData.prototype.sendData=function(uri){var img=new Image();img.src=this.getDataURL()+uri;};sirData.prototype.getMeta=function(name){var metas=document.getElementsByTagName('meta');for(var x=0,y=metas.length;x<y;x++){if(metas[x].name.toLowerCase()==name){return metas[x].content;}}
return '';};sirData.prototype.sendDataArg=function(args){var uri='';for(key in args){uri+=encodeURIComponent(key)+'='+encodeURIComponent(args[key])+'&';}
this.sendData(uri);};sirData.prototype.getURLKeywords=function(url){var r=new RegExp('^https?://([a-z.-0-9]+)/(.+)$','i');var found=r.exec(url);return '';};sirData.prototype.callURL=function(url){var i=new Image();i.src=url.substr(0,1023);};sirData.prototype.stripAccent=function(str){var rExps=[{re:/[\xC0-\xC6]/g,ch:'A'},{re:/[\xE0-\xE6]/g,ch:'a'},{re:/[\xC8-\xCB]/g,ch:'E'},{re:/[\xE8-\xEB]/g,ch:'e'},{re:/[\xCC-\xCF]/g,ch:'I'},{re:/[\xEC-\xEF]/g,ch:'i'},{re:/[\xD2-\xD6]/g,ch:'O'},{re:/[\xF2-\xF6]/g,ch:'o'},{re:/[\xD9-\xDC]/g,ch:'U'},{re:/[\xF9-\xFC]/g,ch:'u'},{re:/[\xD1]/g,ch:'N'},{re:/[\xF1]/g,ch:'n'}];for(var i=0,len=rExps.length;i<len;i++){str=str.replace(rExps[i].re,rExps[i].ch);}
return str;};sirData.prototype.run=function(){if(arguments.callee.done)return;arguments.callee.done=true;var args={ri:this.requestID,pa:this.partnerID,si:this.siteID,su:this.subID,userID:this.userID,v:1,t:this.stripAccent(document.title).replace(/[^\w -.]/g,'').replace(/[ ]{2,}/g,' ').substr(0,150),k:this.keywords,u:window.location.href,r:document.referrer,s:this.searchKeywords};};sirData.prototype.findHTMLNode=function(nodeInfo){for(i=0;i<nodeInfo.length;i++){if(nodeInfo[i].css==undefined)
return false;var found=this.getElementsBySelector(nodeInfo[i].css);if(found&&found.length>0){if(nodeInfo[i].item==undefined)
for(j=0;j<found.length;j++){this.addKeyword(found[j].text!=undefined?found[j].text:found[j].innerHTML);}
else if(nodeInfo[i].item!=undefined&&found[nodeInfo[i].item]!=undefined)
this.addKeyword(found[nodeInfo[i].item].text!=undefined?found[nodeInfo[i].item].text:found[nodeInfo[i].item].innerHTML);}
return false;}};sirData.prototype.getElementsBySelector=function(all_selectors){var selected=[];if(!document.getElementsByTagName)return selected;all_selectors=all_selectors.replace(/\s*([^\w])\s*/g,"$1");var selectors=all_selectors.split(",");var getElements=function(context,tag){if(!tag)tag='*';var found=new Array;for(var a=0,len=context.length;con=context[a],a<len;a++){var eles;if(tag=='*')eles=con.all?con.all:con.getElementsByTagName("*");else eles=con.getElementsByTagName(tag);for(var b=0,leng=eles.length;b<leng;b++){found.push(eles[b]);}}
return found;};COMMA:for(var i=0,len1=selectors.length;selector=selectors[i],i<len1;i++){var context=new Array(document);var inheriters=selector.split(" ");SPACE:for(var j=0,len2=inheriters.length;element=inheriters[j],j<len2;j++){var left_bracket=element.indexOf("[");var right_bracket=element.indexOf("]");var pos=element.indexOf("#");if(pos+1&&!(pos>left_bracket&&pos<right_bracket)){var parts=element.split("#");var tag=parts[0];var id=parts[1];var ele=document.getElementById(id);if(!ele||(tag&&ele.nodeName.toLowerCase()!=tag)){continue COMMA;}
context=new Array(ele);continue SPACE;}
pos=element.indexOf(".");if(pos+1&&!(pos>left_bracket&&pos<right_bracket)){var parts=element.split('.');var tag=parts[0];var class_name=parts[1];var found=getElements(context,tag);context=new Array;for(var l=0,len=found.length;fnd=found[l],l<len;l++){if(fnd.className&&fnd.className.match(new RegExp('(^|\s)'+class_name+'(\s|$)')))context.push(fnd);}
continue SPACE;}
if(element.indexOf('[')+1){if(element.match(/^(\w*)\[(\w+)([=~\|\^\$\*]?)=?['"]?([^\]'"]*)['"]?\]$/)){var tag=RegExp.$1;var attr=RegExp.$2;var operator=RegExp.$3;var value=RegExp.$4;}
var found=getElements(context,tag);context=new Array;for(var l=0,len=found.length;fnd=found[l],l<len;l++){if(operator=='='&&fnd.getAttribute(attr)!=value)continue;if(operator=='~'&&!fnd.getAttribute(attr).match(new RegExp('(^|\\s)'+value+'(\\s|$)')))continue;if(operator=='|'&&!fnd.getAttribute(attr).match(new RegExp('^'+value+'-?')))continue;if(operator=='^'&&fnd.getAttribute(attr).indexOf(value)!=0)continue;if(operator=='$'&&fnd.getAttribute(attr).lastIndexOf(value)!=(fnd.getAttribute(attr).length-value.length))continue;if(operator=='*'&&!(fnd.getAttribute(attr).indexOf(value)+1))continue;else if(!fnd.getAttribute(attr))continue;context.push(fnd);}
continue SPACE;}
var found=getElements(context,element);context=found;}
for(var o=0,len=context.length;o<len;o++){selected.push(context[o]);}}
return selected;};sirData.prototype.addPixelInIframe=function(url){var tag=document.createElement('iframe');tag.width=0;tag.height=0;tag.src='https://ct.sddan.com/CT.d?imgUrl='+encodeURIComponent(url);tag.frameborder=0;tag.style.display='none';this.appendElemToBody(tag);};sirData.prototype.addIframeInIframe=function(url){var tag=document.createElement('iframe');tag.width=0;tag.height=0;tag.src='https://ct.sddan.com/CT.d?iframeUrl='+encodeURIComponent(url);tag.frameborder=0;tag.style.display='none';this.appendElemToBody(tag);};sirData.prototype.appendElemToBody=function(elem){if(document.getElementsByTagName('body').length>0){document.getElementsByTagName('body')[0].appendChild(elem);return;}
var scripts=document.getElementsByTagName("script");if(scripts.length>0&&scripts[0].parentNode!==undefined&&scripts[0].parentNode!=null){scripts[0].parentNode.appendChild(elem);}};sirData.prototype.getUserID=function(){return this.userID;};sirData.prototype.getPartnerID=function(){return this.partnerID;};sirData.prototype.setService=function(service){this.service=service;};sirData.prototype.getService=function(){return this.service;};sirData.prototype.setCountry=function(country){this.country=country;};sirData.prototype.getCountry=function(){return this.country;};sirData.prototype.setCity=function(city){this.city=city;};sirData.prototype.getCity=function(){return this.city;};sirData.prototype.setHash=function(type,value){this.hashList[type]=value;};sirData.prototype.getHash=function(type){return this.hashList[type]?this.hashList[type]:false;};sirData.prototype.setCookieData=function(data){this.cookieData=data;};sirData.prototype.getCookie=function(name){return this.cookieData[name]?this.cookieData[name]:false;};sirData.prototype.setGetParams=function(params){this.getParams=params;};sirData.prototype.getGetParams=function(){return this.getParams;};sirData.prototype.getGetParam=function(paramName){return this.getParams[paramName]!==undefined?this.getParams[paramName]:false;};sirData.prototype.getIntGetParam=function(paramName){var val=this.getGetParam(paramName);if(!val)
return false;val.replace(',','.').replace(/[^0-9.]/,'');return val?parseFloat(val):false;};sirData.prototype.getUserCat=function(catID){return this.userCat[catID]!==undefined?this.userCat[catID]:false;};sirData.prototype.setUserData=function(userData){this.userData=userData;this.userCat={};for(var i=0;i<userData.categories.length;i++){this.userCat[userData.categories[i].id]=userData.categories[i].cat;}};sirData.prototype.getUserCats=function(){return this.userCat;};sirData.prototype.getUrl=function(){if(this.getGetParam('u'))
return this.getGetParam('u');if(this.getGetParam('r'))
return this.getGetParam('r');return this.u;};sirData.prototype.addUserCatIterator=function(func,beforeExec,afterExec){this.userIteratorFunc.push([func,beforeExec,afterExec]);};sirData.prototype.executeUserCatIteratorFunc=function(){for(var c=0;c<this.userIteratorFunc.length;c++){if(this.userIteratorFunc[c][1])
this.userIteratorFunc[c][1]();}
for(var catID in this.userCat){for(var c=0;c<this.userIteratorFunc.length;c++)
if(this.userIteratorFunc[c][0])
this.userIteratorFunc[c][0](catID,this.userCat[catID]);}
for(var c=0;c<this.userIteratorFunc.length;c++){if(this.userIteratorFunc[c][2])
this.userIteratorFunc[c][2]();}};var _sdAD=new sirData();_sdAD.insertDataURL='/GS.d?';_sdAD.userID="20210928_021b2849d5d82ee86aad5133d7cc24fc";_sdAD.partner_id="24556";_sdAD.setService('cart.d');_sdAD.setGetParams({"cat_name":"","command_amount":"","is_client":"0","pa":"24556","product_id":"","r":"https://www.boulanger.com/ref/1169067","u":"https://www.boulanger.com/checkout/cart"});_sdAD.setCountry("TN");_sdAD.setCookieData({"SDDAN":"20210928_021b2849d5d82ee86aad5133d7cc24fc","d_sh":"1","dc3":"1","eye":"1","map_adobe":"43952351422751249892351936704379298306","map_beop":"323f204a-3005-4b96-82f4-e01d0efe374d","map_freewheel":"e19bb09f2e6f686186cc105e83a1f719","map_google":"EXT|a3f6f3b88ef34e662fd956d4007fe8b2","map_nexus":"3003684079450352928","map_smart":"1454927340055016523","map_squadata":"163282108813721223","map_taboola":"6cb1c353-3e53-4a85-a157-eb6198b3562e-tuct84db241","map_ttd":"8752a47e-5095-452c-9f9f-4f999c750c6b","map_weborama":"KP6bMZ3eXRCiqq3ipjUo9u","map_yahoo":"y-_Ya3enhE2oP.AZv35EH4lo49s1i8SGbXWMU-~A","mex":"1","mgm":"1","mregen3":"1","rubi":"1","tb":"1"});_sdAD.setUserData({"id":"20210928_021b2849d5d82ee86aad5133d7cc24fc","segments":[{"id":4,"expiration_time":"2022-01-21T18:30:22.103Z"},{"id":1004,"expiration_time":"2021-11-22T09:45:27.576Z"},{"id":783,"expiration_time":"2021-11-22T09:45:27.576Z"},{"id":109,"expiration_time":"2022-01-20T14:40:13Z"},{"id":2200,"expiration_time":"2022-01-09T10:03:11Z"}],"categories":[{"id":19501,"points":128,"timestamp":"2021-10-22T14:40:13Z"},{"id":7370,"points":1000,"timestamp":"2021-10-23T18:30:22.103Z"},{"id":5256,"points":212,"timestamp":"2021-10-07T15:54:46Z"},{"id":19553,"points":129,"timestamp":"2021-10-08T11:06:06Z"},{"id":19504,"points":128,"timestamp":"2021-10-22T14:40:13Z"},{"id":2959,"points":1000,"timestamp":"2021-10-23T09:45:27.576Z"},{"id":5255,"points":434,"timestamp":"2021-10-15T12:29:05Z"},{"id":6049,"points":5,"timestamp":"2021-09-29T09:07:12Z"},{"id":6121,"points":220,"timestamp":"2021-09-29T09:07:12Z"},{"id":8493,"points":220,"timestamp":"2021-09-29T09:07:12Z"},{"id":131,"points":45,"timestamp":"2021-10-15T12:29:05Z"},{"id":626,"points":112,"timestamp":"2021-10-22T10:01:29Z"},{"id":5491,"points":300,"timestamp":"2021-10-22T10:01:29Z"},{"id":4745,"points":564,"timestamp":"2021-10-22T14:40:13Z"},{"id":5326,"points":143,"timestamp":"2021-10-04T08:19:07Z"},{"id":65,"points":2,"timestamp":"2021-10-13T15:58:22Z"},{"id":5219,"points":9,"timestamp":"2021-10-13T15:58:22Z"},{"id":7464,"points":564,"timestamp":"2021-10-22T14:40:13Z"},{"id":5242,"points":1202,"timestamp":"2021-10-11T10:03:11Z"},{"id":107,"points":219,"timestamp":"2021-10-11T10:03:11Z"},{"id":230,"points":66,"timestamp":"2021-10-13T15:58:22Z"}],"mapping_key":[{"user_id":"20210928_021b2849d5d82ee86aad5133d7cc24fc","name":"Adobe","value":"43952351422751249892351936704379298306","timestamp":"2021-10-13T10:29:51.064Z"},{"user_id":"20210928_021b2849d5d82ee86aad5133d7cc24fc","name":"Beop","value":"323f204a-3005-4b96-82f4-e01d0efe374d","timestamp":"2021-10-15T11:27:11.239Z"},{"user_id":"20210928_021b2849d5d82ee86aad5133d7cc24fc","name":"Freewheel","value":"e19bb09f2e6f686186cc105e83a1f719","timestamp":"2021-10-13T10:26:32.923Z"},{"user_id":"20210928_021b2849d5d82ee86aad5133d7cc24fc","name":"Google","value":"EXT|a3f6f3b88ef34e662fd956d4007fe8b2","timestamp":"2021-10-13T10:33:46.004Z"},{"user_id":"20210928_021b2849d5d82ee86aad5133d7cc24fc","name":"Nexus","value":"3003684079450352928","timestamp":"2021-10-13T10:10:17.649Z"},{"user_id":"20210928_021b2849d5d82ee86aad5133d7cc24fc","name":"PA:22066","value":"ZG6AA2FS318AAAAIB3MlAw==","timestamp":"2021-10-13T10:55:58.025Z"},{"user_id":"20210928_021b2849d5d82ee86aad5133d7cc24fc","name":"PA:22508","value":"1102113362","timestamp":"2021-10-15T11:00:49.922Z"},{"user_id":"20210928_021b2849d5d82ee86aad5133d7cc24fc","name":"Smart","value":"1454927340055016523","timestamp":"2021-10-27T10:42:06.776Z"},{"user_id":"20210928_021b2849d5d82ee86aad5133d7cc24fc","name":"Squadata","value":"163282108813721223","timestamp":"2021-10-13T11:03:32.529Z"},{"user_id":"20210928_021b2849d5d82ee86aad5133d7cc24fc","name":"Taboola","value":"6cb1c353-3e53-4a85-a157-eb6198b3562e-tuct84db241","timestamp":"2021-10-13T10:33:41.421Z"},{"user_id":"20210928_021b2849d5d82ee86aad5133d7cc24fc","name":"TheTradeDesk","value":"8752a47e-5095-452c-9f9f-4f999c750c6b","timestamp":"2021-10-13T10:28:39.301Z"},{"user_id":"20210928_021b2849d5d82ee86aad5133d7cc24fc","name":"Weborama","value":"KP6bMZ3eXRCiqq3ipjUo9u","timestamp":"2021-10-13T10:16:47.478Z"},{"user_id":"20210928_021b2849d5d82ee86aad5133d7cc24fc","name":"Yahoo","value":"y-_Ya3enhE2oP.AZv35EH4lo49s1i8SGbXWMU-~A","timestamp":"2021-10-13T10:03:33.621Z"}],"mapping_keys":[]});_sdAD.u="https://www.boulanger.com/checkout/cart";_sdAD.run();_sdAD.httpCall("https://trk.datnova.com/tech_cookie.php");_sdAD.httpCall("https://secure.adnxs.com/seg?add=3149912:24556&t=2");_sdAD.httpCall("https://secure.adnxs.com/seg?add=27119323&t=2");