<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
int i=1;
%>
<%@ taglib prefix="h" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui" />
<title>蝌蚪手机赚钱_手机赚钱软件_网上赚钱_网赚</title>
<meta name="keywords" content="手机赚钱,手机赚钱软件,网上赚钱,蝌蚪手机赚钱" />
<meta name="description"
	content="手机赚钱很简单，百万网友通过蝌蚪手机赚钱玩游戏做任务，轻松赚钱。蝌蚪手机赚钱玩法简单，网上赚钱变的更有乐趣，是当前最好的手机赚钱软件！" />
<link rel="stylesheet" type="text/css" href="wechat.css" />
<link rel="stylesheet" href="app.css"/>

</head>
<body>
	<div class="wechat-header">
		<div class="user">
			<div class="avatar clearfix">
				<img src="icon2.png" width="80" height="80" alt="app图标" />
			</div>
			<div class="name">蝌蚪手机赚钱</div>
		</div>
		<div class="typo">
			<img src="typo-wechat-1.png" width="228" height="30" />
		</div>
		<div class="text">
			邀您一起玩蝌蚪手机赚钱<br /> 一分钟赚一元  一元起提现
			<br>安装就送红包随机0.3到0.8元人民币
		</div>
		<div class="btn">
			<a href="<h:property value="tgApp.downUrl"/>" id="xiazai">下载安装</a>
		</div>
	</div>
	<div class="wechat-main">
		<div class="list-box">
			<div class="entry clearfix">
				<i class="icon-gift"></i>
				<div class="body">
					<div class="title">3分钟一个Q币，简单快捷</div>
					<em>您只需随便下载几个软件，获取金币，金币直接换Q币支付宝</em>
				</div>
			</div>
			<div class="entry clearfix">
				<i class="icon-date"></i>
				<div class="body">
					<div class="title">1元起可以兑换Q币支付宝等</div>
					<em>满一元即可以兑换，超低兑换起点</em>
				</div>
			</div>
			<div class="entry clearfix">
				<i class="icon-ad"></i>
				<div class="body">
					<div class="title">任务多多 时时更新</div>
					<em>已经和几十家全国最好的广告平台取得合作，保证有大量的任务。</em>
				</div>
			</div>
			<div class="entry clearfix">
				<i class="icon-list"></i>
				<div class="body">
					<div class="title">中国最新最实在手机赚钱软件</div>
					<em>蝌蚪手机赚钱自发布上线以来 用户立马突破50万，用户还在持续暴增</em>
				</div>
			</div>
			<div class="entry clearfix">
				<i class="icon-ad1"></i>
				<div class="body">
					<div class="title">兑换起点很低，1元可以兑换，几分钟可以获取</div>
					<em>1个Q币就能兑换，最快3分钟到账</em>
				</div>
			</div>
			<div class="entry clearfix">
				<i class="icon-list1"></i>
				<div class="body">
					<div class="title">靠谱好评无数</div>
					<em>我们充分尊重您的劳动成功，不扣币，不拖欠，好评如潮</em>
				</div>
			</div>
		</div>
		<div class="tabs-box">
			<div class="tab">
				<a href="javascript:showIncomeRank()" class="active"
					id="incomeRankTrigger">赚钱排行榜</a>
			</div>
		</div>
		<!-- 收入排行 start -->
		<div class="gift-box" id="incomeRank">
			<div class="content">
			<h:iterator value="paiHangBeans" var="u">
				<div class="entry">
					<i><%=i++ %></i><img src="<h:property value="#u.tx"/>" width="40" height="40">
					<div class="body">
						<div class="title"><h:property value="#u.userName"/></div>
						<em>一共赚钱:<h:property value="#u.allMoney"/>元</em>
					</div>
				</div>
				</h:iterator>
			</div>
		</div>
		
	</div>
	<span style="display:none;"></span>
	<div id="weixin-tip"><p><img src="live_weixin.png" alt="微信打开"/><span id="close" title="关闭" class="close">×</span></p></div>
	<script type="text/javascript">
	var is_weixin = (function() {
	    var ua = navigator.userAgent.toLowerCase();
	    if (ua.match(/MicroMessenger/i) == "micromessenger") {
	        return true;
	    } else {
	        return false;
	    }
	})();
	window.onload = function(){
		var winHeight = typeof window.innerHeight != 'undefined' ? window.innerHeight : document.documentElement.clientHeight;
		var btn = document.getElementById('xiazai');
		var tip = document.getElementById('weixin-tip');
		var close = document.getElementById('close');
		if(is_weixin){
			btn.onclick = function(e){
				tip.style.height = winHeight + 'px';
				tip.style.display = 'block';
				return false;
			}
			close.onclick = function(){
				tip.style.display = 'none';
			}
		}
	}
	

	</script>
	
	
</body>
</html>