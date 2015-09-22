
<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="h" uri="/struts-tags"%>
<html class="bg-light-gray">
<head>
<meta charset="utf-8">
<title>天天手机赚钱_天天手机赚钱官网_一款手机赚钱软件_手机赚钱_最好的手机赚钱软件</title>
<meta name="keywords" content="天天手机赚钱,天天手机赚钱官网" />
<meta name="description"
	content="天天手机赚钱是时下最好用的一款手机赚钱软件，天天手机赚钱官网分享最新最热门的网上赚钱项目，百万网友通过玩游戏做任务，玩法简单，轻轻松松赚钱！" />
<link rel="stylesheet" href="style.css" charset="utf-8">
</head>
<body>
	<a name="top"></a>
	<div id="main-header" class="full-container clearfix">
		<div class="inner clearfix">
			<div class="group clearfix">
				<div class="qr">
					<img src="icon2.png" width="150" height="150" />
					<p>安装就送红包</p>
				</div>
				<div class="buttons">
					<div class="android">
					<h:if test="tgApp== null">
					<a href="apk/ttzq.apk"/>>android版本下载</a> 
					</h:if>
					<h:else><a href="<h:property value="tgApp.downUrl"/>">android版本下载</a></h:else>
					</div>
					<div class="ios">
						<a href="javascript:alert('正在开发中')">ios版本下载</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="slice-box" class="full-container clearfix">

		<div class="inner clearfix">
			<div class="col left">
				<div class="summary">
					<div class="title">关于天天手机赚钱</div>
					<p>天天手机赚钱是一款手机赚钱app，一分钟可以赚一元，一元就能提现，每天几分钟，话费Q币不用愁</p>
					<p>您安装我们app后，即送您0.1元—1元的红包，通过赚钱专区，下载我们推荐的其他软件，即可以获取金币，金币直接对话Q币支付宝现金，一元起可兑换，基本几分钟可以赚一元</p>
					<p>为什么我可以通过本应用获取收入?</p>
					<p>本软件和多个广告商建立合作，一方面为广告主更好的推广自己的应用，提高自己软件的曝光率，为自己的应用做宣传和推广，为更多的人知晓，以便应用被更多的人使用
						另一方面：用户（即下载使用本应用的朋友们）可以通过每个赚钱区，浏览到广告主的app，通过下载上面的app，然后进行试玩，按照广告主的要求完成任务后，可以获取
						相应的金币。用户获取到金币后，可以直接用金币兑换Q币支付宝。1000金币等于一元人民币</p>
					<p>这个手机赚钱app真能赚钱？</p>
					<p>这个真心不用多解释了，每天一会儿，几块十块钱绝对是有的，想增加收入请看右边推广赚钱，不相信这软件真这么牛逼神奇，你可以直接下载，亲自试用一会儿，就明白了，花不到你多少时间的，希望您不要错过这样一个轻松赚钱的好机会</p>
				</div>
			</div>
			<div class="col right">
				<div class="summary">
					<div class="title">5级好友下线推广奖励，躺着就赚钱</div>
					<p>什么是5级好友推广奖励？</p>
					<p>
						举个例子：你推广了一个用户A（1级推广用户），A推广了一个用户B（2级推广用户），B推广了C（3级推广用户），C推广了D（4级推广用户），D推广了E（5级推广用户），那么ADCDE这些用户都是您的推广用户。
						你只需要随便推广几个一级推广用户，就可以轻松获取几十万的推广用户。</p>
					<p>超牛逼的推广奖励体系</p>
					您每推广一个一级用户，可以获取红包0.1元。所有5级推广用户，每次兑换成功后，您将获取他们兑换收入的10%推广奖励。你只需要随便推广几个用户，依靠强大的5级推广系统，轻松获取几十万的推广用户，
					每个人赚10元钱，你轻松获取10万X10X10%=10万元
					</p>
					<p>怎样推广获取一级推广用户？</p>
					<p>请点击下载按钮，下载app安装手机，打开app后，自动为您生成推广链接，用户通过链接下载app安装，即成为您的1级推广用户，每一个用户安装打开，我们送您0.1一元</p>
				</div>
			</div>
		</div>
	</div>


	<div id="step-box" class="full-container clearfix">
		<div class="header">
			<div class="title">
				<span class="left"></span>六大优势快速赚钱 我和小伙伴都惊呆了<span class="right"></span>
			</div>
		</div>
		<div class="inner clearfix">
			<div class="col">
				<h2 class="title">3分钟一个Q币，简单快捷</h2>
				<div class="text">您只需要随便下载几个软件，可以获取金币，金币直接换Q币支付宝</div>
				<i class="icon-date"></i>
			</div>
			<div class="col offset-13">
				<h2 class="title">超低兑换起点</h2>
				<div class="text">满一元即可以兑换Q币或者支付宝，最迟一天后到账</div>
				<i class="icon-money"></i>
			</div>
			<div class="col">
				<h2 class="title">下载安装就送红包</h2>
				<div class="text">下载安装打开立即赠送价值0.1元——1元随机红包</div>
				<i class="icon-task"></i>
			</div>
			<div class="col">
				<h2 class="title">中国最新最实在手机赚钱软件</h2>
				<div class="text">天天手机赚钱自发布上线以来 用户立马突破50万，用户还在持续暴增</div>
				<i class="icon-date1"></i>
			</div>
			<div class="col offset-13">
				<h2 class="title">吊炸天的5级好友推广奖励</h2>
				<div class="text">随便推广几个一级用户，轻松获取几十万的推广用户</div>
				<i class="icon-money1"></i>
			</div>
			<div class="col">
				<h2 class="title">超牛逼推广奖励</h2>
				<div class="text">每安装就送红包0.1元，每次获取推广用户收入10%提成</div>
				<i class="icon-task1"></i>
			</div>



		</div>
	</div>


	<div id="users-box" class="full-container clearfix">
		<div class="header">
			<div class="title">
				<span class="left"></span>赚钱排行榜<span class="right"></span>
			</div>
		</div>
		<div class="inner clearfix">
			<div class="col">
				<div class="head clearfix">
					<h3 class="title"></h3>
				</div>
				<div class="list clearfix">
					<div class="item clearfix">
						<i class="number">1</i>
						<div class="user">
							<img src="touxiang/user9.jpg" width="40" height="40" /> <span
								class="name">老科</span>
						</div>
						<div class="pull-right">
							<span class="typo-red">一共赚钱30344.60元</span>
						</div>
					</div>
					<div class="item clearfix">
						<i class="number">2</i>
						<div class="user">
							<img src="touxiang/user8.jpg" width="40" height="40" /> <span
								class="name">漫步云端</span>
						</div>
						<div class="pull-right">
							<span class="typo-red">一共赚钱: 23631.30元</span>
						</div>
					</div>
					<div class="item clearfix">
						<i class="number">3</i>
						<div class="user">
							<img src="touxiang/user11.jpg" width="40" height="40" /> <span
								class="name">西门吹风</span>
						</div>
						<div class="pull-right">
							<span class="typo-red">一共赚钱: 18658.00元</span>
						</div>
					</div>
					<div class="item clearfix">
						<i class="number">4</i>
						<div class="user">
							<img src="touxiang/user6.jpg" width="40" height="40" /> <span
								class="name">纯牛奶1号</span>
						</div>
						<div class="pull-right">
							<span class="typo-red">一共赚钱: 17072.60元</span>
						</div>
					</div>
					<div class="item clearfix">
						<i class="number">5</i>
						<div class="user">
							<img src="touxiang/user5.jpg" width="40" height="40" /> <span
								class="name">睡不醒的梦</span>
						</div>
						<div class="pull-right">
							<span class="typo-red">一共赚钱: 14936.40元</span>
						</div>
					</div>
					<div class="item clearfix">
						<i class="number">6</i>
						<div class="user">
							<img src="touxiang/user10.jpg" width="40" height="40" /> <span
								class="name">孤独患者</span>
						</div>
						<div class="pull-right">
							<span class="typo-red">一共赚钱: 10062.00元</span>
						</div>
					</div>
					<div class="item clearfix">
						<i class="number">7</i>
						<div class="user">
							<img src="touxiang/user3.jpg" width="40" height="40" /> <span
								class="name">雨若无痕</span>
						</div>
						<div class="pull-right">
							<span class="typo-red">一共赚钱: 8572.40元</span>
						</div>
					</div>
					<div class="item clearfix">
						<i class="number">8</i>
						<div class="user">
							<img src="touxiang/user2.jpg" width="40" height="40" /> <span
								class="name">素雅</span>
						</div>
						<div class="pull-right">
							<span class="typo-red">一共赚钱: 7771.20元</span>
						</div>
					</div>
					<div class="item clearfix">
						<i class="number">9</i>
						<div class="user">
							<img src="touxiang/user1.jpg" width="40" height="40" /> <span
								class="name">女神</span>
						</div>
						<div class="pull-right">
							<span class="typo-red">一共赚钱: 7491.90元</span>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>


	<div id="footer" class="full-container clearfix margin-top-20">
		<div class="inner">Copyright &copy;2015-2015
			天天手机赚钱版权所有(蜀ICP备15003192号 ) 联系企鹅:782244031</div>
	</div>

</body>
</html>
