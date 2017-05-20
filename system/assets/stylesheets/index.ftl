
<html>
  <head>

  <title>米谷 - 苏州米谷科技_游戏虚拟交易服务商官网</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="Description" content="米谷，全网最专业的虚拟游戏交易服务提供商。苏州米谷科技，为游戏交易提供交易服务的专 业提供商，相信米谷，同赢未来。">
  <meta name="Keywords" content="米谷,米谷科技,米谷交易,苏州米谷,米交所">
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
<meta name="baidu-site-verification" content="qmog3cQT5d" />
  <link rel="icon" href="favicon.ico" type="image/x-icon" />
  <!-- Libraries -->
  <script type="text/javascript" src="${basePath}/system/js/jquery-1.11.0.min.js"></script>
  <script type="text/JavaScript" src="${basePath}/system/template/javascripts/template.js"></script>

  <!-- Demo Files -->
  <link rel="stylesheet" type="text/css" href="${basePath}/system/assets/stylesheets/demo.css">
  <link rel="stylesheet" type="text/css" href="${basePath}/system/assets/stylesheets/animations.css">
  <link rel="stylesheet" type="text/css" href="${basePath}/system/assets/stylesheets/component.css">
  

  <script type="text/javascript">
  	 
  	function pageShow(){
  		var array = new Array(${pageCount});
  		var tt ="";
  		$.each(array,function(n,value) {   
  			
			if((n+1) == 1){
				tt="<p class='current' href='javascript:void(0);' onclick='jump("+(n+1)+",this)' title='到第"+(n+1)+"页'><a href='javascript:void(0);'  class='active' title='到第 "+(n+1)+"页'>"+(n+1)+"</a></p>";				
			} else {
				tt+=" <p class='pager-item' onclick='jump("+(n+1)+",this)'><a href='javascript:void(0);'  class='active' title='到第 "+(n+1)+"页'>"+(n+1)+"</a></p>";
			}  	  	
       		$("#pager").html(tt);
  		});  
  	}
  	
  	function jump(pageNum,obj){
  		if(pageNum == ''){
  			pageNum = 1;
  		}
  		$("#pager p").attr("class","pager-item");
  		$(obj).attr("class","current");
  		$.ajax({
	        data: {pageNum: pageNum},
	        type: "POST",
	        url: "${basePath}/join.htm",
	        contentType: "application/x-www-form-urlencoded; charset=utf-8", 
	        success: function (data) {
	        	var dataArray = $.parseJSON(data);
	        	var infoHtml = "";
	        	$.each(dataArray,function(n,summary) {
	        		infoHtml = infoHtml + 
	                " <div class='clearfix article-box '>"+
	                " <a href='${basePath}/newsDetail/"+summary.articleId+".htm' class='a-img' target='_blank'>";
	                if(summary.imgUrl){
	                	infoHtml = infoHtml + " <img src='${basePath}"+summary.imgUrl+"'>";	
	                } else {
	                	infoHtml = infoHtml + " <img src=''>"+"</a>";
	                }
	                infoHtml = infoHtml + " <div class='article-box-ctt'>"
	                +" <h4><a href='${basePath}/newsDetail/"+summary.articleId+".htm' target='_blank'>"+summary.name+"</a><time>"+summary.createTimeAsStr+"</time></h4>"
	                +" <div class='article-summary'>" + summary.description + "</div>"
	                +" <p class='tags-box'>" 
	                + summary.title
	                +" </p>"
	                +" </div>"
	                +" </div>";
	        	});
	        	console.log(infoHtml);
	        	$("#miguzixun").html(infoHtml);
	        }
		});
  	}
  </script>
  </head>
  
 <body class="index">
  <!-- menu1  -->
  <div class="left-side">
    <div class="header">
        <a class="link" title="米米logo">
          <img src="${basePath}/system/images/menu_logo.png" class="logo" title="米谷logo" alt="米谷logo">
          <div class="close" onclick="closeLeft()"></div>
        </a>
    </div>
    <ul class="sidenav left-nav">
      <li class="choose"><a href="#first"><i class="fa fa-home"></i><b>遇见米谷</b></a></li>
      <li><a href="#second"><i class="fa fa-inbox"></i><b>他们和米谷</b></a></li>
      <li><a href="#four"><i class="fa fa-book"></i><b>期待合作</b></a></li>
      <li><a href="#five"><i class="fa fa-star"></i><b>游戏交易系统</b></a></li>
      <li><a href="#six"><i class="fa fa-star2"></i><b>米谷的家</b></a></li>
      <li><a href="#seven"><i class="fa fa-star3"></i><b>这就是我们</b></a></li>
      <li><a href="#news"><i class="fa fa-star4"></i><b>米谷资讯</b></a></li>
      <li><a href="#eight"><i class="fa fa-star4"></i><b>加入米谷</b></a></li>
      <li><a href="#nine"><i class="fa fa-star5"></i><b>关于米谷</b></a></li>
    </ul>
</div>
  <label id="tm" class="label-left"><i class="fa fa-bars"></i></label>
  <ul class="content">
    <li class="first ss-active" id="first">
      <div class="w980">
        <span class="first_welcome"></span>
        <a class="left_first" href="#second"></a>
        <a class="right_first" href="#five"></a>
        <div class='eye_wrapper' id='eyeballs'>
          <span class="center_first floating"></span>
        </div>
        </div>
    </li>
    <li class="second" id="second">
      <div class="w980">
        <div class="boxBor"></div>
        <!-- menu1  <div class="sec_div"><span class="second_game_title"><img src="${basePath}/system/assets/images/2.gif"></span></div>-->
        
        <div class="four_h1_div breathe-btn" style="-moz-user-select:none;" onselectstart="javascript:return false;">
            合作案例
        </div>
        <div class="second_game_list">
          <a class="second_game_logo1 box" href=""><img class="img-full" src="${basePath}/system/assets/images/logo1.png" title="米谷合作案例-桃花源记"></a>
          <a class="second_game_logo2 box" href=""><img class="img-full" src="${basePath}/system/assets/images/logo2.png" title="米谷合作案例-神仙与妖怪"></a>
          <a class="second_game_logo4 box" href=""><img class="img-full" src="${basePath}/system/assets/images/logo4.png" title="米谷合作案例-忘仙"></a>
          <a class="second_game_logo3" href="#four"><img class="img-full" src="${basePath}/system/assets/images/logo3.png" title="米谷合作案例-与我们合作"></a>
        </div>
          
        <div class="four_h1_div breathe-btn" style="-moz-user-select:none;" onselectstart="javascript:return false;">
            合作收益
        </div>
        <img src="${basePath}/system/assets/images/second_bg.png"  title="米谷合作收益">
      </div>
    </li>
    <li class="four" id="four">
      <div class="w980">
          <div class="four_h1_div breathe-btn four_breathe four_first" style="-moz-user-select:none;" onselectstart="javascript:return false;">合作流程</div>
          <div class="col-xs-2">
            <div class="img-responsive four_list2">
              <img src="${basePath}/system/assets/images/3-02.png" class="img-responsive img-full four_list" title="米谷合作流程1">
              <img src="${basePath}/system/assets/images/3-01.png" class="img-responsive img-full stat" title="米谷合作流程1-具体">
            </div>
          </div>
          <div class="col-xs-2">
            <div class="img-responsive four_list2">
              <img src="${basePath}/system/assets/images/3-04.png" class="img-responsive img-full four_list" title="米谷合作流程2">
              <img src="${basePath}/system/assets/images/3-03.png" class="img-responsive img-full stat" title="米谷合作流程2-具体">
            </div>
          </div>
          <div class="col-xs-2">
            <div class="img-responsive four_list2">
              <img src="${basePath}/system/assets/images/3-06.png" class="img-responsive img-full four_list" title="米谷合作流程3">
              <img src="${basePath}/system/assets/images/3-05.png" class="img-responsive img-full stat" title="米谷合作流程3-具体">
            </div>
          </div>
          <div class="col-xs-2">
            <div class="img-responsive four_list2">
              <img src="${basePath}/system/assets/images/3-08.png" class="img-responsive img-full four_list" title="米谷合作流程4">
              <img src="${basePath}/system/assets/images/3-07.png" class="img-responsive img-full stat" title="米谷合作流程4-具体">
            </div>
          </div>
        
      </div>
    </li>
    <li class="five" id="five">
       <div class="w980"> 
          <div class="four_h1_div breathe-btn five_breathe" style="-moz-user-select:none;" onselectstart="javascript:return false;">
              游戏交易系统
          </div>
          <span class="app_bg3"></span>
          <span class="app_bg1"></span>
          <span class="app_bg2"></span>
        </div>
    </li>
    <li class="six" id="six">
      <div id="ad-1">
        <div id="clouds">
          <ul id="cloud-group-1">
            <li class="cloud-1"></li>
            <li class="cloud-2"></li>
            <li class="cloud-3"></li>
            <li class="cloud-4"></li>
            <li class="cloud-5"></li>
          </ul>
          <ul id="cloud-group-2">
            <li class="cloud-1"></li>
            <li class="cloud-2"></li>
            <li class="cloud-3"></li>
            <li class="cloud-4"></li>
            <li class="cloud-5"></li>
          </ul>
        </div>
      </div>
      <div class="w980">
        <div class="six_980_bg">
          <div style="position: relative;">
            <p class="six_left1">米谷坐落在风光秀美、精致典雅的苏州独<br>墅湖高教区东南大学研究院内。</p>
            <P class="six_left2">米谷是一家立足于虚拟财产交易的专业服务提供商,可以令虚拟财产在政府许可的范围内，更加安全、自由、多元地流通，同时令合作游戏的社会化属性更加稳定繁荣。 </p>
            <p class="six_right1">苏州米谷网络科技有限公司成立<br>于2013年6月1日，注册资金1000万元。</p>
            <p class="six_right2">米谷拥有宽敞明亮的工作区，舒适的休闲<br>娱乐室，力求给每一位来到米谷的小伙伴<br>带来家的温暖。</p>
          </div>
        </div>
      </div>
    </li>
    <li class="seven" id="seven">
      <div class="w980_2">
        <div class="four_h1_div breathe-btn seven_breathe seven_title" style="-moz-user-select:none;" onselectstart="javascript:return false;">
            这就是我们
        </div>
      </div>
        <div class="seven_photo">
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/01-03.jpg" class="img-responsive img-full">
              <div class="hover">
                <img src="photo/01-04.jpg" class="img-responsive img-full">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/02-1.jpg" class="img-responsive img-full" title="米谷照片墙2">
              <div class="hover">
                <img src="${basePath}/system/photo/02-2.jpg" class="img-responsive img-full" title="米谷照片墙2">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/03-1.jpg" class="img-responsive img-full" title="米谷照片墙3">
              <div class="hover">
                <img src="${basePath}/system/photo/03-2.jpg" class="img-responsive img-full" title="米谷照片墙3">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/04-1.jpg" class="img-responsive img-full" title="米谷照片墙4">
              <div class="hover">
                <img src="${basePath}/system/photo/04-2.jpg" class="img-responsive img-full" title="米谷照片墙4">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/05-1.jpg" class="img-responsive img-full" title="米谷照片墙5">
              <div class="hover">
                <img src="${basePath}/system/photo/05-2.jpg" class="img-responsive img-full" title="米谷照片墙5">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/06-1.jpg" class="img-responsive img-full" title="米谷照片墙6">
              <div class="hover">
                <img src="${basePath}/system/photo/06-2.jpg" class="img-responsive img-full" title="米谷照片墙6">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/07-1.jpg" class="img-responsive img-full" title="米谷照片墙7">
              <div class="hover">
                <img src="${basePath}/system/photo/07-2.jpg" class="img-responsive img-full" title="米谷照片墙7">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/08-1.jpg" class="img-responsive img-full" title="米谷照片墙8">
              <div class="hover">
                <img src="${basePath}/system/photo/08-2.jpg" class="img-responsive img-full" title="米谷照片墙8">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/09-1.jpg" class="img-responsive img-full" title="米谷照片墙9">
              <div class="hover">
                <img src="${basePath}/system/photo/09-2.jpg" class="img-responsive img-full" title="米谷照片墙9">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/20-2.jpg" class="img-responsive img-full" title="米谷照片墙10">
              <div class="hover">
                <img src="${basePath}/system/photo/20-1.jpg" class="img-responsive img-full" title="米谷照片墙10">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/11-1.jpg" class="img-responsive img-full" title="米谷照片墙11">
              <div class="hover">
                <img src="${basePath}/system/photo/11-2.jpg" class="img-responsive img-full" title="米谷照片墙11">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/12-1.jpg" class="img-responsive img-full" title="米谷照片墙12">
              <div class="hover">
                <img src="${basePath}/system/photo/12-2.jpg" class="img-responsive img-full" title="米谷照片墙12">
              </div>
            </div>
          </div>
         <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/13-1.jpg" class="img-responsive img-full" title="米谷照片墙13">
              <div class="hover">
                <img src="${basePath}/system/photo/13-2.jpg" class="img-responsive img-full" title="米谷照片墙13">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/14-1.jpg" class="img-responsive img-full" title="米谷照片墙14">
              <div class="hover">
                <img src="${basePath}/system/photo/14-2.jpg" class="img-responsive img-full" title="米谷照片墙14">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/15-1.jpg" class="img-responsive img-full" title="米谷照片墙15">
              <div class="hover">
                <img src="${basePath}/system/photo/15-2.jpg" class="img-responsive img-full" title="米谷照片墙15">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/16-1.jpg" class="img-responsive img-full" title="米谷照片墙16">
              <div class="hover">
                <img src="${basePath}/system/photo/16-2.jpg" class="img-responsive img-full" title="米谷照片墙16">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/17-1.jpg" class="img-responsive img-full" title="米谷照片墙17">
              <div class="hover">
                <img src="${basePath}/system/photo/17-2.jpg" class="img-responsive img-full" title="米谷照片墙17">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/19-1.jpg" class="img-responsive img-full" title="米谷照片墙18">
              <div class="hover">
                <img src="${basePath}/system/photo/19-2.jpg" class="img-responsive img-full" title="米谷照片墙18">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/21-1.jpg" class="img-responsive img-full" title="米谷照片墙19">
              <div class="hover">
                <img src="${basePath}/system/photo/21-2.jpg" class="img-responsive img-full" title="米谷照片墙19">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/22-1.jpg" class="img-responsive img-full" title="米谷照片墙20">
              <div class="hover">
                <img src="${basePath}/system/photo/22-2.jpg" class="img-responsive img-full" title="米谷照片墙20">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/23-1.jpg" class="img-responsive img-full" title="米谷照片墙21">
              <div class="hover">
                <img src="${basePath}/system/photo/23-2.jpg" class="img-responsive img-full" title="米谷照片墙21">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/24-1.jpg" class="img-responsive img-full" title="米谷照片墙22">
              <div class="hover">
                <img src="${basePath}/system/photo/24-2.jpg" class="img-responsive img-full" title="米谷照片墙22">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/25-1.jpg" class="img-responsive img-full" title="米谷照片墙23">
              <div class="hover">
                <img src="${basePath}/system/photo/25-2.jpg" class="img-responsive img-full" title="米谷照片墙23">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/26-1.jpg" class="img-responsive img-full" title="米谷照片墙24">
              <div class="hover">
                <img src="${basePath}/system/photo/26-2.jpg" class="img-responsive img-full" title="米谷照片墙24">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/27-1.jpg" class="img-responsive img-full" title="米谷照片墙25">
              <div class="hover">
                <img src="${basePath}/system/photo/27-2.jpg" class="img-responsive img-full" title="米谷照片墙25">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/28-1.jpg" class="img-responsive img-full" title="米谷照片墙26">
              <div class="hover">
                <img src="${basePath}/system/photo/28-2.jpg" class="img-responsive img-full" title="米谷照片墙26">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/29-1.jpg" class="img-responsive img-full" title="米谷照片墙27">
              <div class="hover">
                <img src="${basePath}/system/photo/29-2.jpg" class="img-responsive img-full" title="米谷照片墙27">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/30-1.jpg" class="img-responsive img-full" title="米谷照片墙28">
              <div class="hover">
                <img src="${basePath}/system/photo/30-2.jpg" class="img-responsive img-full" title="米谷照片墙28">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/31-1.jpg" class="img-responsive img-full" title="米谷照片墙29">
              <div class="hover">
                <img src="${basePath}/system/photo/31-2.jpg" class="img-responsive img-full" title="米谷照片墙29">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/32-1.jpg" class="img-responsive img-full" title="米谷照片墙30">
              <div class="hover">
                <img src="${basePath}/system/photo/32-2.jpg" class="img-responsive img-full" title="米谷照片墙30">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/33-1.jpg" class="img-responsive img-full" title="米谷照片墙31">
              <div class="hover">
                <img src="${basePath}/system/photo/33-2.jpg" class="img-responsive img-full" title="米谷照片墙31">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/34-1.jpg" class="img-responsive img-full" title="米谷照片墙32">
              <div class="hover">
                <img src="${basePath}/system/photo/34-2.jpg" class="img-responsive img-full" title="米谷照片墙32">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/35-1.jpg" class="img-responsive img-full" title="米谷照片墙33">
              <div class="hover">
                <img src="${basePath}/system/photo/35-2.jpg" class="img-responsive img-full" title="米谷照片墙33">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/36-1.jpg" class="img-responsive img-full" title="米谷照片墙34">
              <div class="hover">
                <img src="${basePath}/system/photo/36-2.jpg" class="img-responsive img-full" title="米谷照片墙34">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/37-1.jpg" class="img-responsive img-full" title="米谷照片墙35">
              <div class="hover">
                <img src="${basePath}/system/photo/37-2.jpg" class="img-responsive img-full" title="米谷照片墙35">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/38-1.jpg" class="img-responsive img-full" title="米谷照片墙36">
              <div class="hover">
                <img src="${basePath}/system/photo/38-2.jpg" class="img-responsive img-full" title="米谷照片墙36">
              </div>
            </div>
          </div>
          <div class="col-xs-3">
            <div class="team-member">
              <img src="${basePath}/system/photo/39-1.jpg" class="img-responsive img-full" title="米谷照片墙37">
              <div class="hover">
                <img src="${basePath}/system/photo/39-2.jpg" class="img-responsive img-full" title="米谷照片墙37">
              </div>
            </div>
          </div>
         <a href="#eight" class="seven_last"></a>
    </li>
    <li class="news" id="news">
      <div class="w980">
          <div class="four_h1_div breathe-btn news_breathe" style="-moz-user-select:none;" onselectstart="javascript:return false;">
                	米谷资讯
          </div>
          <div id="miguzixun">
          	 <#list pageInfo.list as summary>
          	<div class="clearfix article-box ">
              <a href="${basePath}/newsDetail/${summary.articleId}.htm" class="a-img" target="_blank">
              <#if summary.imgUrl?exists>
              	<img src="${basePath}/${summary.imgUrl}">
              <#else>
              	<img src="">
              </#if>
              </a>
              <div class="article-box-ctt">
                  <h4><a href="${basePath}/newsDetail/${summary.articleId}.htm" target="_blank">${summary.name}</a><time>${summary.createTime?string('yyyy-MM-dd HH:mm')}</time></h4>
                  <div class="article-summary">${summary.description}</div>
                  <p class="tags-box">
                    ${summary.title}
                  </p>
              </div>
           </div>
          </#list>
           </div>
          
          <div id="pager" class="pager">
             
          </div>
       </div>
    </li>
    <li class="eight" id="eight">
        <div class="w980">
            <div class="four_h1_div breathe-btn bk_flag eight_breathe" style="-moz-user-select:none;" onselectstart="javascript:return false;">
              加入米谷
            </div>
            <div id="tab_menu">
                <a class="eight_a choose">开发类</a>
                <a class="eight_a">产品类</a>
                <a class="eight_a">设计类</a>
            </div>
            <div class="eight_tab">
              <div class="re_deatail" style="margin: 42px 0px 0px 69px;">
                <h4>IOS 工程师</h4>
                <p class="eight_p">岗位职责:</p>
                <p>1.根据产品需求，开发基于ios客户端软件;</p>
                <p>2.研究移动客户端领域的新技术并加以应用实施;</p>
                <p>3.按时完成上级领导安排的各项任务.</p>
                <p class="eight_p">职位要求:</p>
                <p>1.熟悉ios开发，熟悉Mac系统;</p>
                <p>2.熟练掌握Objective-C开发语言;</p>
                <p>3.熟练使用Xcode、Eclipse等开发工具;</p>
                <p>4.熟悉MSSQL/MySql/Oracle等主流数据库的数据结构与算法;</p>
                <p>5.能快速理解业务模式;</p>
                <p>6.有良好的敬业精神、学习能力、沟通能力和团队协作能力.</p>
                <p class="eight_p">经历方面:</p>
                <p>1.计算机相关专业，大专及以上学历;</p>
                <p>2.有一定的英语基础，大学英语四级通过者优先考虑;</p>
                <p>3.从事移动应用客户端软件开发1年以上.</p>
              </div>
              <div class="re_deatail eight_mune_hiden" style="margin-left: 133px;margin-top: 40px">
                <h4>安卓工程师</h4>
                <p class="eight_p">岗位职责:</p>
                <p>1.计算机或相关专业全日制本科及以上学历;</p>
                <p>2.精通java语言，熟悉常用的设计模式,2年以上android 应用开发经验;</p>
                <p>3.熟悉Android OS体系结构，熟悉Android SDK、对Android应用结构有深刻的认识；熟悉SQLITE数据库，擅长UI开发;</p>
                <p>4.独立或者主导开发过成功的Android应用;</p>
                <p>5.精通Android开发工具、测试工具及常用开发库;</p>
                <p>6.具备良好的学习能力、分析和解决问题的能力、组织协调能力;</p>
                <p>7.有安卓各个主流应用市场上架作品者优先.</p>
              </div>
              <div class="re_deatail eight_mune_hiden" style="margin: 42px 0px 0px 69px;">
                <h4>搜索引擎工程师</h4>
                <p class="eight_p">岗位职责:</p>
                <p>1.搜索引擎相关算法的研发;</p>
                <p>2.海量数据的分析与挖掘.</p>
                <p class="eight_p">任职要求:</p>
                <p>1.产品核心、重要功能开发工作</p>
                <p>2.协助开发经理进行系统部分功能设计工作</p>
                <p class="eight_p">任职资格</p>
                <p>1.计算机或数学专业，本科及以上学历;</p>
                <p>2.精通算法设计与数据结构;</p>
                <p>3.具有良好的学习能力和理解能力;</p>
                <p>4.精通Java或C++;</p>
                <p>5.英语CET-6,可熟练阅读英文文献;</p>
                <p>6.有分布式计算、分布式搜索经验者优先;</p>
                <p>7.有搜索引擎开发经验者优先</p>
              </div>
            </div>
            <div class="eight_tab" style="display:none;">
                <div class="re_deatail" style="margin: 42px 0px 0px 69px;">
                  <h4>产品经理</h4>
                  <p class="eight_p">岗位描述:</p>
                  <p>1.负责米谷游戏虚拟物品交易的产品设计和规划，包括收集用户需求、制定产品发展规划、完成产品功能设计和需求文档撰写;</p>
                  <p>2.协同技术,设计,运营团队的成员,驱动产品功能实现,跟进项目的实施进展;</p>
                  <p>3.能够协调设计、运营团队,推动业务的快速实现.</p>
                  <p class="eight_p">岗位要求:</p>
                  <p>1.大学本科及以上学历,热爱互联网,2年以上互联网搜索或电子商务产品设计类相关工作经验;</p>
                  <p>2.对于用户体验比较有感觉,熟悉交互、UI、布局设计,熟练使用Auxre等常用产品设计工具;</p>
                  <p>3.逻辑思维好,沟通表达能力强,具有复杂业务、资源协调问题推动解决的意愿和能力;</p>
                  <p>4.具备团队合作精神,善于与不同类型人合作,执行力强,能够承受较大压力;</p>
                  <p>5.有自主创业或自主完整创办、经营网站经历者优先;</p>
                  <p>6.熟悉网站如何技术实现,有一定技术功底者优先;</p>
                  <p>7.热爱游戏,游戏玩家优先考虑.</p>
                </div>
            </div>
            <div class="eight_tab" style="display:none;">
              <div class="re_deatail" style="margin: 42px 0px 0px 69px;">
                <h4>用户体验交互师</h4>
                <p class="eight_p">岗位职责:</p>
                <p>1.负责公司相关产品的用户界面交互设计,对产品的用户体验负责;</p>
                <p>2.了解产品需求并提出创新想法,完成信息架构、流程设计并输出高保真产品原型;</p>
                <p>3.撰写并规范交互设计文档,参与产品测试与用户研究项目的实施;</p>
                <p>4.进行用户体验研究和分析,积累并整理用户反馈,持续优化体验,提高用户满意度;</p>
                <p class="eight_p">任职要求:</p>
                <p>1.两年以上网站、手机交互设计相关经验;</p>
                <p>2.心理学、计算机、工业设计或相关专业大专及以上学历;(条件突出可放宽)</p>
                <p>3.善于思考,逻辑能力强,能够把握引导产品需求设计分析与场景分解;</p>
                <p>4.熟练运用交互设计各种方法,对交互设计理论有较深的了解和认识;</p>
                <p>5.富有创造力和激情,对各种互联网及移动产品有强烈兴趣并有灵敏触觉;</p>
                <p>6.能熟练应用各种图形来表达设计思路与传递信息;</p>
                <p>7.提供成功作品.</p>
              </div>
            </div>
        </div>
    </li>
    <li class="nine" id="nine">
      <div class="w980">
        <div class="four_h1_div breathe-btn nine_breathe">
              关于米谷
        </div>
        <div style="position: relative;">
          <img src="${basePath}/system/assets/images/nine_top.png" class="last_img img-full" title="关于米谷地图">
          <img src="${basePath}/system/assets/images/pin.png" class="nine_icon" title="米谷指针跳动">
        </div>
        <div class="hi-icon-wrap hi-icon-effect-4 hi-icon-effect-4a">
            <div class="where_div" style="width:397px;">
              <a class="hi-icon hi-icon-clock"></a>
              <p>地址：苏州工业园区林泉街399号三江院515室</p>
              <p>邮编：215000</p>
            </div>
            <div class="where_div">
              <a class="hi-icon hi-icon-videos"></a>
              <p>电话：0512-62981271</p>
              <p>传真：0512-62981270</p>
            </div>
            <div class="where_div">
              <a class="hi-icon hi-icon-list"></a>
              <p>业务联系：qiuping@migu99.com</p>
              <p>其他联系：hao.guan@migu99.com</p>
            </div>
        </div>
          <div style="border-top:1px solid #da8c2e;position:absolute;bottom:5%;width: 100%;">
              <div class="hi-icon-wrap hi-icon-effect-7 hi-icon-effect-7b">
                <a href="http://weibo.com/3674446343" target="_blank" class="hi-icon hi-icon-images" style="margin-left:275px;margin-right: 96px;"></a>
                <a href="${basePath}/system/assets/images/chat_sao.jpg"  target="_blank" class="hi-icon hi-icon-pencil"></a>
                <a class="hi-icon hi-icon-link friend_lk1 friend_lk2"></a>
                <div class="fri_lk fr_lk2">
                   <b>
                      <i></i>
                    </b>
                    <!-- menu1 
                    <a href="" title="手机游戏" target="_blank">手机游戏</a> 
                    <a href="" title="捕鱼达人" target="_blank">捕鱼达人</a> 
                    <a href="" title="dota2" target="_blank">dota2</a> 
                    <a href="" title="壁纸吧" target="_blank">壁纸吧</a> 
                    <a href="" title="棋牌游戏" target="_blank">棋牌游戏</a> 
                    <a href="" title="手机游戏" target="_blank">手机游戏</a> 
                    <a href="" title="手机网游" target="_blank">手机网游</a> 
                    <a href="" title="英雄联盟" target="_blank">英雄联盟</a> 
                    <a href="" title="烈焰" target="_blank">烈焰</a> 
                    <a href="" title="美女小游戏" target="_blank">美女小游戏</a> 
                    <a href="" title="07073发号中心" target="_blank">07073发号中心</a> 
                    <a href="" title="单机游戏下载大全" target="_blank">单机游戏下载大全</a> 
                    <a href="" title="棋牌游戏平台" target="_blank">棋牌游戏平台</a> 
                    <a href="" title="网页游戏" target="_blank">网页游戏</a> 
                    <a href="" title="游戏资讯" target="_blank">游戏资讯</a> 
                    <a href="" title="游戏攻略" target="_blank">游戏攻略</a> 
                    <a href="" title="单机游戏" target="_blank">单机游戏</a> 
                    <a href="" title="简单百宝箱" target="_blank">简单百宝箱</a> 
                    <a href="" title="41717小游戏" target="_blank">41717小游戏</a> 
                    <a href="" title="苹果游戏软件下载" target="_blank">苹果游戏软件下载</a> 
                     -->
                </div>
              </div>
          </div>
        </div>
      </div>
    </li>
  </ul>
  <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1000464429'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1000464429%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
    <!-- Template Files -->
  <link rel="stylesheet" type="text/css" href="${basePath}/system/template/stylesheets/reset.css">
  <link rel="stylesheet" type="text/css" href="${basePath}/system/template/stylesheets/template.css">
  <!-- SnapScroll Core Files -->
  <script type="text/JavaScript" src="${basePath}/system/core/dependencies/jquery.scroll_to.js"></script>
  <script type="text/JavaScript" src="${basePath}/system/core/jquery.snapscroll.js"></script>
  <script type="text/JavaScript" src="${basePath}/system/assets/javascripts/demo.js"></script>
  <script type="text/JavaScript" src="${basePath}/system/assets/javascripts/featureCarousel.js"></script>
  <script type="text/JavaScript" src="${basePath}/system/assets/javascripts/modernizr.custom.js"></script>
  <script type="text/JavaScript" src="${basePath}/system/assets/javascripts/jquery.lazyload.mini.js"></script>
<script type="text/javascript">
//   var time = null;
//$(".friend_lk1").hover(function(){
//    clearTimeout(time);
//    $(".fri_lk").css("display","block");
//    },function(){
//    time = setTimeout(function(){
 //     $(".fri_lk").css("display","none");
  //      },50);
 //   });
//$(".fri_lk").hover(function(){
//    clearTimeout(time);
//    $(".fri_lk").css("display","block");
 //   },function(){
 //   time = setTimeout(function(){
 //     $(".fri_lk").css("display","none");
 //       },50);
 //   });
//var content_li= $(".content li").hasClass("ss-active").index();
//$(".sidenav li:eq(content_li) b").attr("style","color:white");


  $("ul.sidenav > li").click(function(){
    $("ul.sidenav > li").removeClass("choose");
    $(this).addClass("choose");
  });

  $(document).scroll(function() {
    var li=$(".content > li.ss-active");
    var index=$(".content > li").index(li);
    
    $("ul.sidenav > li").removeClass("choose").eq(index).addClass("choose");


  });



 $(".app_bg3").hover(function(){
    clearTimeout(time);
    $(".five span").removeClass("pulse");
    $(this).addClass("pulse");
    });
  $(".app_bg2").hover(function(){
    clearTimeout(time);
    $(".five span").removeClass("pulse");
    $(this).addClass("pulse");
    });
   $(".app_bg1").hover(function(){
    clearTimeout(time);
    $(".five span").removeClass("pulse");
    $(this).addClass("pulse");
    });
//第七页图片效果
$(document).ready(function() {
  $("#carousel").featureCarousel({
    autoPlay:7000,
    trackerIndividual:false,
    trackerSummation:false,
    topPadding:50,
    smallFeatureWidth:.9,
    smallFeatureHeight:.9,
    sidePadding:0,
    smallFeatureOffset:0
  });
});
//侧边栏点击效果
$("#tm").on("click",function(){
  openLeft();
});
function openLeft(){
  $("body").removeClass("close-left");$("body").toggleClass("open-left");return false;};
function closeLeft(){
  $("body").removeClass("open-left");
  $("body").toggleClass("close-left");
  return false;
};
//左边导航栏
   $("#click_first").click(function(){
    $("#menu").animate({left:"0em"});
    $(this).hide();
    $("#click_then").animate({left:"138px"});
    $("#click_then").show();
  });
   $("#click_then").click(function(){
    $("#menu").animate({left:"-8em"});
    $(this).hide();
    $("#click_first").animate({left:"0px"});
    $("#click_first").show();
  });

  //第一页logo_hover效果
   var time = null;
$(".eye_wrapper").hover(function(){
    clearTimeout(time);
    $(".right_first").animate({opacity:"1","right": "20%","top": "60%"},1000);
    $(".left_first").animate({opacity:"1","left": "20%","top": "60%"},1000);
    $(".first_welcome").addClass("fadeIn");
    },function(){
    time = setTimeout(function(){
        },50);
    });

 //合作流程
   var time = null;
$(".four_list2").hover(function(){
    clearTimeout(time);
    $(this).next(".stat").css("top","0px");
    
    },function(){
     $(this).next(".stat").css("top","240px");
    $(this).css("overflow","inherit");
    });

//第二页效果
  $(window).scroll(function() {
    $('.second_game_title').each(function(){
    var imagePos = $(this).offset().top;

    var topOfWindow = $(window).scrollTop();
      if (imagePos < topOfWindow+400) {
        $(this).addClass("expandUp");
        setTimeout(function () {
        $(".second_game_title img").attr("src","assets/images/second_change_img.png");
        $(".second_game_title").attr("style","top:140px");
        $(".second_game_list").fadeIn("slow");
      },2600);
      }
    });
  });

  $('.box').bind('mouseover',function(){
    var oPosition=$(this).position();
    var oThis=$(this)   
    $('.boxBor').queue('fnHide');   
    if($(".boxBor").attr('deta-switch')!=='true'){
      $(".boxBor").attr('deta-switch','true');
      $(".boxBor").css({
        width:'240px',
        height:$(window).height(),
        left:'-50px',
        top:'-50px',
        opacity:0,
        display:'block'
      })
    }
    $(".boxBor").stop(false,false).animate({
      opacity:1,
      left:oPosition.left,
      top:oPosition.top,
      width:oThis.width(),
      height:oThis.height()
    },250)
  });
//第四页效果
  $(window).scroll(function() {
    $('.device-arrow').each(function(){
    var imagePos = $(this).offset().top;

    var topOfWindow = $(window).scrollTop();
      if (imagePos < topOfWindow+700) {
        $(this).addClass("stretchRight");
      }
    });
  });

//第五页手机hover效果
  if($(".guide").length > 0) {
    var _nTimer = 0,
      _oGuide$ = $(".guide"),
      _oGuideTrigger$ = $("#guideTrigger, #tipTrigger"),
      _oMask$ = $(".mask");

      function _back() {
        _nTimer = setTimeout(function() {
        _oMask$.stop().animate({opacity:0}, function(){$(".mask").hide()});
        _oGuide$.stop().animate({marginLeft:"-120px",opacity:0}, "400", "swing",function(){
          _oGuide$.hide();
        });
      }, 100);
    };
//第六页效果
  $(window).scroll(function() {
    $('.six_left1').each(function(){
    var imagePos = $(this).offset().top;
    var topOfWindow = $(window).scrollTop();
      if (imagePos < topOfWindow+500) {
        interval = setInterval('$(this).addClass("stretchRight")',1500);
      }
    });
  });
    /*guide*/
    _oGuide$.css({"left":"50%"});
    _oGuideTrigger$.mouseover(function(){
      clearTimeout(_nTimer);
      _oMask$.show().stop().animate({"opacity":0.2});
      _oGuide$.css("display", "block").stop().animate({marginLeft:"+40px", opacity:1}, 900, "swing", function() {
        _oGuide$.animate({marginLeft:"+20px"}, 300);
      });
    }).mouseout(_back);

    _oGuide$.mouseover(function(){
      clearTimeout(_nTimer);
    }).mouseout(_back);
  };

//第八页效果
var $div_li = $("#tab_menu a");
       $div_li.click(function(){
              $(this).addClass("choose").siblings().removeClass("choose");
              var div_index = $div_li.index(this);
              $(".eight_tab").eq(div_index).show().siblings().hide();
              $("#tab_menu").show();
              $(".bk_flag").show();
              $(".pager").show();
       });

//第九页效果
    $(window).scroll(function() {
      $('.nine_icon').each(function(){
      var imagePos = $(this).offset().top;

      var topOfWindow = $(window).scrollTop();
        if (imagePos < topOfWindow+500) {
          $(this).addClass("floating");
        }
      });
    });
    $(function() {
    pageShow();
  $(".img-full").lazyload({ 
  effect : "fadeIn" 
  
  }); 
  }); 

  </script>

</body>
</html>
