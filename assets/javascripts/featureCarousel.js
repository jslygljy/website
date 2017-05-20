(function($){$.fn.featureCarousel=function(options){if(this.length>1){this.each(function(){$(this).featureCarousel(options);});return this;}
options=$.extend({},$.fn.featureCarousel.defaults,options||{});var pluginData={currentCenterNum:options.startingFeature,containerWidth:0,containerHeight:0,largeFeatureWidth:0,largeFeatureHeight:0,smallFeatureWidth:0,smallFeatureHeight:0,totalFeatureCount:$(this).children("div").length,currentlyMoving:false,featuresContainer:$(this),featuresArray:[],containerIDTag:"#"+$(this).attr("id"),timeoutVar:null,rotationsRemaining:0,itemsToAnimate:0,borderWidth:0};var preload=function(callback){if(options.preload==true){var $imageElements=pluginData.featuresContainer.find("img");var loadedImages=0;var totalImages=$imageElements.length;$imageElements.each(function(index,element){var img=new Image();$(img).bind('load error',function(){loadedImages++;if(loadedImages==totalImages){callback();}});img.src=element.src;});}else{callback();}}
var getContainer=function(featureNum){return pluginData.featuresArray[featureNum-1];}
var getBySetPos=function(position){$.each(pluginData.featuresArray,function(){if($(this).data().setPosition==position)
return $(this);});}
var getPreviousNum=function(num){if((num-1)==0){return pluginData.totalFeatureCount;}else{return num-1;}}
var getNextNum=function(num){if((num+1)>pluginData.totalFeatureCount){return 1;}else{return num+1;}}
var setupFeatureDimensions=function(){pluginData.containerWidth=pluginData.featuresContainer.width();pluginData.containerHeight=pluginData.featuresContainer.height();var $firstFeatureImage=$(pluginData.containerIDTag).find(".carousel-image:first");if(options.largeFeatureWidth>1)
pluginData.largeFeatureWidth=options.largeFeatureWidth;else if(options.largeFeatureWidth>0&&options.largeFeatureWidth<1)
pluginData.largeFeatureWidth=$firstFeatureImage.width()*options.largeFeatureWidth;else
pluginData.largeFeatureWidth=$firstFeatureImage.outerWidth();if(options.largeFeatureHeight>1)
pluginData.largeFeatureHeight=options.largeFeatureHeight;else if(options.largeFeatureHeight>0&&options.largeFeatureHeight<1)
pluginData.largeFeatureHeight=$firstFeatureImage.height()*options.largeFeatureHeight;else
pluginData.largeFeatureHeight=$firstFeatureImage.outerHeight();if(options.smallFeatureWidth>1)
pluginData.smallFeatureWidth=options.smallFeatureWidth;else if(options.smallFeatureWidth>0&&options.smallFeatureWidth<1)
pluginData.smallFeatureWidth=$firstFeatureImage.width()*options.smallFeatureWidth;else
pluginData.smallFeatureWidth=$firstFeatureImage.outerWidth()/2;if(options.smallFeatureHeight>1)
pluginData.smallFeatureHeight=options.smallFeatureHeight;else if(options.smallFeatureHeight>0&&options.smallFeatureHeight<1)
pluginData.smallFeatureHeight=$firstFeatureImage.height()*options.smallFeatureHeight;else
pluginData.smallFeatureHeight=$firstFeatureImage.outerHeight()/2;}
var setupCarousel=function(){if(options.displayCutoff>0&&options.displayCutoff<pluginData.totalFeatureCount){pluginData.totalFeatureCount=options.displayCutoff;}
pluginData.featuresContainer.find(".carousel-feature").each(function(index){if(index<pluginData.totalFeatureCount){pluginData.featuresArray[index]=$(this);}});if(pluginData.featuresContainer.find(".carousel-feature").first().css("borderLeftWidth")!="medium"){pluginData.borderWidth=parseInt(pluginData.featuresContainer.find(".carousel-feature").first().css("borderLeftWidth"))*2;}
pluginData.featuresContainer.find(".carousel-feature").each(function(){$(this).css({'left':(pluginData.containerWidth/2)-(pluginData.smallFeatureWidth/2)-(pluginData.borderWidth/2),'width':pluginData.smallFeatureWidth,'height':pluginData.smallFeatureHeight,'top':options.smallFeatureOffset+options.topPadding,'opacity':1});}).find(".carousel-image").css({'width':pluginData.smallFeatureWidth});if(options.captionBelow){pluginData.featuresContainer.find('.carousel-caption').css('position','relative');}
if(pluginData.totalFeatureCount<4){pluginData.itemsToAnimate=pluginData.totalFeatureCount;}else{pluginData.itemsToAnimate=4;}
pluginData.featuresContainer.find(".carousel-caption").hide();}
var setupFeaturePositions=function(){$.each(pluginData.featuresArray,function(i){$(this).data('setPosition',i+1);});var oneBeforeStarting=getPreviousNum(options.startingFeature);pluginData.currentCenterNum=oneBeforeStarting;var $centerFeature=getContainer(oneBeforeStarting);$centerFeature.data('position',1);var $prevFeatures=$centerFeature.prevAll();$prevFeatures.each(function(i){$(this).data('position',(pluginData.totalFeatureCount-i));});var $nextFeatures=$centerFeature.nextAll();$nextFeatures.each(function(i){if($(this).data('setPosition')!=undefined){$(this).data('position',(i+2));}});if(options.counterStyle=='caption'){$.each(pluginData.featuresArray,function(){var pos=getPreviousNum($(this).data('position'));var $numberTag=$("<span></span>");$numberTag.addClass("numberTag");$numberTag.html("("+pos+" of "+pluginData.totalFeatureCount+") ");$(this).find('.carousel-caption p').prepend($numberTag);});}}
var setupTrackers=function()
{if(options.trackerIndividual){var $list=$("<ul></ul>");$list.addClass("tracker-individual-container");for(var i=0;i<pluginData.totalFeatureCount;i++){var counter=i+1;var $trackerBlip=$("<div>"+counter+"</div>");$trackerBlip.addClass("tracker-individual-blip");$trackerBlip.css("cursor","pointer");$trackerBlip.attr("id","tracker-"+(i+1));var $listEntry=$("<li></li>");$listEntry.append($trackerBlip);$listEntry.css("float","left");$listEntry.css("list-style-type","none");$list.append($listEntry);}
$(pluginData.containerIDTag).append($list);$list.hide().show();}
if(options.trackerSummation){var $tracker=$('<div></div>');$tracker.addClass('tracker-summation-container');var $current=$('<span></span>').addClass('tracker-summation-current').text(options.startingFeature);var $total=$('<span></span>').addClass('tracker-summation-total').text(pluginData.totalFeatureCount);var $middle=$('<span></span>').addClass('tracker-summation-middle').text(' of ');$tracker.append($current).append($middle).append($total);$(pluginData.containerIDTag).append($tracker);}}
var updateTracker=function(oldCenter,newCenter){if(options.trackerIndividual){var $trackerContainer=pluginData.featuresContainer.find(".tracker-individual-container");var $oldCenter=$trackerContainer.find("#tracker-"+oldCenter);var $newCenter=$trackerContainer.find("#tracker-"+newCenter);$oldCenter.removeClass("tracker-individual-blip-selected");$newCenter.addClass("tracker-individual-blip-selected");}
if(options.trackerSummation){var $trackerContainer=pluginData.featuresContainer.find('.tracker-summation-container');$trackerContainer.find('.tracker-summation-current').text(newCenter);}}
var setTimer=function(stop){clearTimeout(pluginData.timeoutVar);if(!stop&&options.autoPlay!=0){var autoTime=(Math.abs(options.autoPlay)<options.carouselSpeed)?options.carouselSpeed:Math.abs(options.autoPlay);pluginData.timeoutVar=setTimeout(function(){(options.autoPlay>0)?initiateMove(true,1):initiateMove(false,1);},autoTime);}}
var rotatePositions=function(direction){$.each(pluginData.featuresArray,function(){var newPos;if(direction==false){newPos=getNextNum($(this).data().position);}else{newPos=getPreviousNum($(this).data().position);}
$(this).data('position',newPos);});}
var animateFeature=function($feature,direction)
{var new_width,new_height,new_top,new_left,new_zindex,new_padding,new_fade;var oldPosition=$feature.data('position');var newPosition;if(direction==true)
newPosition=getPreviousNum(oldPosition);else
newPosition=getNextNum(oldPosition);if(oldPosition==1){options.leavingCenter($feature);}
if(newPosition==1){new_width=pluginData.largeFeatureWidth;new_height=pluginData.largeFeatureHeight;new_top=options.topPadding;new_zindex=$feature.css("z-index");new_left=(pluginData.containerWidth/2)-(pluginData.largeFeatureWidth/2)-(pluginData.borderWidth/2);new_fade=1.0;}else{new_width=pluginData.smallFeatureWidth;new_height=pluginData.smallFeatureHeight;new_top=options.smallFeatureOffset+options.topPadding;new_zindex=1;new_fade=1.0;if(newPosition==pluginData.totalFeatureCount){new_left=options.sidePadding;}else if(newPosition==2){new_left=pluginData.containerWidth-pluginData.smallFeatureWidth-options.sidePadding-pluginData.borderWidth;}else{new_left=(pluginData.containerWidth/2)-(pluginData.smallFeatureWidth/2)-(pluginData.borderWidth/2);new_fade=0;}}
if(oldPosition==1){$feature.find(".carousel-caption").hide();}
$feature.animate({width:new_width,height:new_height,top:new_top,left:new_left,opacity:new_fade},options.carouselSpeed,options.animationEasing,function(){if(newPosition==1){if(options.captionBelow)
$feature.css('height','auto');$feature.find(".carousel-caption").fadeTo("fast",1.0);options.movedToCenter($feature);}
pluginData.rotationsRemaining=pluginData.rotationsRemaining-1;$feature.css("z-index",new_zindex);if(options.trackerIndividual||options.trackerSummation){if(newPosition==1){var newCenterItemNum=pluginData.featuresContainer.find(".carousel-feature").index($feature)+1;var oldCenterItemNum;if(direction==false)
oldCenterItemNum=getNextNum(newCenterItemNum);else
oldCenterItemNum=getPreviousNum(newCenterItemNum);updateTracker(oldCenterItemNum,newCenterItemNum);}}
var divide=pluginData.rotationsRemaining/pluginData.itemsToAnimate;if(divide%1==0){pluginData.currentlyMoving=false;rotatePositions(direction);if(pluginData.rotationsRemaining>0)
move(direction);}
setTimer(false);}).find('.carousel-image').animate({width:new_width,height:new_height},options.carouselSpeed,options.animationEasing).end();}
var move=function(direction)
{pluginData.currentlyMoving=true;var $newCenter,$newLeft,$newRight,$newHidden;if(direction==true){$newCenter=getContainer(getNextNum(pluginData.currentCenterNum));$newLeft=getContainer(pluginData.currentCenterNum);$newRight=getContainer(getNextNum(getNextNum(pluginData.currentCenterNum)));$newHidden=getContainer(getPreviousNum(pluginData.currentCenterNum));pluginData.currentCenterNum=getNextNum(pluginData.currentCenterNum);}else{$newCenter=getContainer(getPreviousNum(pluginData.currentCenterNum));$newLeft=getContainer(getPreviousNum(getPreviousNum(pluginData.currentCenterNum)));$newRight=getContainer(pluginData.currentCenterNum);$newHidden=getContainer(getNextNum(pluginData.currentCenterNum));pluginData.currentCenterNum=getPreviousNum(pluginData.currentCenterNum);}
if(direction){$newLeft.css("z-index",3);}else{$newRight.css("z-index",3);}
$newCenter.css("z-index",4);animateFeature($newLeft,direction);animateFeature($newCenter,direction);animateFeature($newRight,direction);if(pluginData.totalFeatureCount>3){animateFeature($newHidden,direction);}}
var initiateMove=function(direction,rotations){if(pluginData.currentlyMoving==false){var queue=rotations*pluginData.itemsToAnimate;pluginData.rotationsRemaining=queue;move(direction);}}
var findShortestDistance=function(from,to){var goingToLeft=1,goingToRight=1,tracker;tracker=from;while((tracker=getPreviousNum(tracker))!=to){goingToLeft++;}
tracker=from;while((tracker=getNextNum(tracker))!=to){goingToRight++;}
return(goingToLeft<goingToRight)?goingToLeft*-1:goingToRight;}
$(options.leftButtonTag).on('click',function(){initiateMove(false,1);});$(options.rightButtonTag).on('click',function(){initiateMove(true,1);});pluginData.featuresContainer.find(".carousel-feature").click(function(){var position=$(this).data('position');if(position==2){initiateMove(true,1);}else if(position==pluginData.totalFeatureCount){initiateMove(false,1);}}).mouseover(function(){if(pluginData.currentlyMoving==false){var position=$(this).data('position');if(position==2||position==pluginData.totalFeatureCount){$(this).css("opacity",1);}}
if(options.pauseOnHover)setTimer(true);if(options.stopOnHover)options.autoPlay=0;}).mouseout(function(){if(pluginData.currentlyMoving==false){var position=$(this).data('position');if(position==2||position==pluginData.totalFeatureCount){$(this).css("opacity",1);}}
if(options.pauseOnHover){setTimer(false);}});$("a",pluginData.containerIDTag).on("click",function(event){var $parents=$(this).parentsUntil(pluginData.containerIDTag);$parents.each(function(){var position=$(this).data('position');if(position!=undefined){if(position!=1){if(position==pluginData.totalFeatureCount){initiateMove(false,1);}else if(position==2){initiateMove(true,1);}
event.preventDefault();return false;}else{options.clickedCenter($(this));}}});});$(".tracker-individual-blip",pluginData.containerIDTag).on("click",function(){var goTo=$(this).attr("id").substring(8);var whereIsIt=pluginData.featuresContainer.find(".carousel-feature").eq(goTo-1).data('position');var currentlyAt=pluginData.currentCenterNum;if(goTo!=currentlyAt){var shortest=findShortestDistance(1,whereIsIt);if(shortest<0){initiateMove(false,(shortest*-1));}else{initiateMove(true,shortest);}}});this.initialize=function(){preload(function(){setupFeatureDimensions();setupCarousel();setupFeaturePositions();setupTrackers();initiateMove(true,1);});return this;};this.next=function(){initiateMove(true,1);}
this.prev=function(){initiateMove(false,1);}
this.pause=function(){setTimer(true);}
this.start=function(){setTimer(false);}
return this.initialize();};$.fn.featureCarousel.defaults={largeFeatureWidth:0,largeFeatureHeight:0,smallFeatureWidth:.5,smallFeatureHeight:.5,topPadding:20,sidePadding:50,smallFeatureOffset:50,startingFeature:1,carouselSpeed:1000,autoPlay:4000,pauseOnHover:true,stopOnHover:false,trackerIndividual:true,trackerSummation:true,preload:true,displayCutoff:0,animationEasing:'swing',leftButtonTag:'#carousel-left',rightButtonTag:'#carousel-right',captionBelow:false,movedToCenter:$.noop,leavingCenter:$.noop,clickedCenter:$.noop};})(jQuery);