<html>
<head>
  <title>${article.name}-米谷</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="Description" content="米谷，全网最专业的虚拟游戏交易服务提供商。苏州米谷科技，为游戏交易提供交易服务的专 业提供商，相信米谷，同赢未来。">
  <meta name="Keywords" content="米谷,米谷科技,米谷交易,苏州米谷,游戏虚拟交易">
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
  <link rel="icon" href="favicon.ico" type="image/x-icon" />
  <!-- Demo Files -->
  <link rel="stylesheet" type="text/css" href="http://www.migu99.com/system/assets/stylesheets/demo.css">
</head>
<body class="news_detail">
    <div class="w980">
        <div class="four_h1_div breathe-btn news_breathe">
                新闻详细
          </div>
          <h2>${article.name}</h2>
          <div class="news_details">
             ${article.content}   
          </div>
          <div class="context">
            <ul>
            <#if downArticle?exists>
            	<li class="pull-left">上一篇：<a href="http://www.migu99.com/newsDetail/${downArticle.articleId}.htm">${downArticle.name}</a> </li>
            <#else>
            	<li class="pull-left">上一篇：<a>此篇已是第一篇</a></li>
            </#if>
            <#if nextArticle?exists>
            	<li class="pull-right">下一篇：<a href="http://www.migu99.com/newsDetail/${nextArticle.articleId}.htm">${nextArticle.name}</a> </li>
            <#else>
            	<li class="pull-right">下一篇：<a>此篇已是最后篇</a></li>
            </#if>
            
            </ul>
          </div>
    </div>
</body>
</html>
