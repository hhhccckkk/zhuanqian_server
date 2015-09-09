<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="h" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui" />
<title>天天手机赚钱_手机赚钱软件_网上赚钱_做任务赚钱</title>
<meta name="keywords" content="手机赚钱,手机赚钱软件,网上赚钱" />
<meta name="description"
	content="手机赚钱很简单，百万网友通过天天手机赚钱玩游戏做任务，轻松赚钱。天天手机赚钱玩法简单，网上赚钱变的更有乐趣，是当前最好的手机赚钱软件！" />
<link rel="stylesheet" type="text/css" href="wechat.css" />
</head>
<body>
	<div class="wechat-header">
		<div class="user">
			<div class="avatar clearfix">
				<img src="icon2.png" width="80" height="80" alt="app图标" />
			</div>
			<div class="name">天天手机赚钱</div>
		</div>
		<div class="typo">
			<img src="typo-wechat-1.png" width="228" height="30" />
		</div>
		<div class="text">
			邀您一起玩天天手机赚钱<br /> 一分钟赚一元  一元起提现
			<br>安装就送红包随机0.1到1元人民币
		</div>
		<div class="btn">
			<a href="<h:property value="tgApp.downUrl"/>">下载安装</a>
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
					<em>天天手机赚钱自发布上线以来 用户立马突破50万，用户还在持续暴增</em>
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
				<div class="entry">
					<i>1</i><img src="icon2.png" width="40" height="40">
					<div class="body">
						<div class="title">天天手机赚钱</div>
						<em>6天共赚16,285.45元</em>
					</div>
				</div>
				<div class="entry">
					<i>2</i><img
						src="touxiang/user9.jpg"
						width="40" height="40">
					<div class="body">
						<div class="title">老科</div>
						<em>35天共赚11,020.75元</em>
					</div>
				</div>
				<div class="entry">
					<i>3</i><img
						src="touxiang/user8.jpg"
						width="40" height="40">
					<div class="body">
						<div class="title">☆流年√</div>
						<em>47天共赚5,624.51元</em>
					</div>
				</div>
				<div class="entry">
					<i>4</i><img
						src="touxiang/user10.jpg"
						width="40" height="40">
					<div class="body">
						<div class="title">凋零无声</div>
						<em>36天共赚4,709.45元</em>
					</div>
				</div>
				<div class="entry">
					<i>5</i><img
						src="touxiang/user6.jpg"
						width="40" height="40">
					<div class="body">
						<div class="title">慕容一剑</div>
						<em>47天共赚4,534.77元</em>
					</div>
				</div>
				<div class="entry">
					<i>6</i><img
						src="touxiang/user5.jpg"
						width="40" height="40">
					<div class="body">
						<div class="title">我的女神</div>
						<em>43天共赚3,432.71元</em>
					</div>
				</div>
				<div class="entry">
					<i>7</i><img
						src="touxiang/user11.jpg"
						width="40" height="40">
					<div class="body">
						<div class="title">东方神起</div>
						<em>42天共赚2,843.15元</em>
					</div>
				</div>
				<div class="entry">
					<i>8</i><img
						src="touxiang/user3.jpg"
						width="40" height="40">
					<div class="body">
						<div class="title">梦梦天天</div>
						<em>46天共赚2,770.76元</em>
					</div>
				</div>
				<div class="entry">
					<i>9</i><img
						src="touxiang/user2.jpg"
						width="40" height="40">
					<div class="body">
						<div class="title">漫步云端</div>
						<em>45天共赚2,757.77元</em>
					</div>
				</div>
				<div class="entry">
					<i>10</i><img
						src="touxiang/user1.jpg"
						width="40" height="40">
					<div class="body">
						<div class="title">默默赚钱</div>
						<em>45天共赚2,641.52元</em>
					</div>
				</div>
			</div>
		</div>
		<!-- 收入排行 end -->
		<!-- 拆红包排行 start -->
		<div class="gift-box" id="giftRank" style="display:none;">
			<div class="content">
				<div class="entry">
					<i>1</i><img
						src="http://wx.qlogo.cn/mmopen/PiajxSqBRaEKfv6SwrzPVicSvwPdl8ZP6Tx01koxSuTib7b7kNb27tZyicXufMx6EP8p0ejf7KibgrvZ37ib0l7rdstg/96"
						width="40" height="40">
					<div class="body">
						<div class="title">彭先森用的诺基亚</div>
						<em>共拆到红包3015.70元</em>
					</div>
				</div>
				<div class="entry">
					<i>2</i><img
						src="http://wx.qlogo.cn/mmopen/ajNVdqHZLLBZ0q8N3wBlQj6QibMRSgkHT3K0nribHBiaMw3888l5fqOcGJskibvCGgjYq5iaHFpW0pqsvOjUHdbsd6A/96"
						width="40" height="40">
					<div class="body">
						<div class="title">少司命我的女神</div>
						<em>共拆到红包2315.80元</em>
					</div>
				</div>
				<div class="entry">
					<i>3</i><img
						src="http://wx.qlogo.cn/mmopen/dibCvqHg4WneiaicfkPHjkZFiccS3dsC5pXj67viafXMqRYxjmfBiaYl2lgicibJgzRBzXEWMAFnJ8W08tHr66xqGYCmSN4RJic6Zm360/96"
						width="40" height="40">
					<div class="body">
						<div class="title">朋友</div>
						<em>共拆到红包1854.70元</em>
					</div>
				</div>
				<div class="entry">
					<i>4</i><img
						src="http://wx.qlogo.cn/mmopen/sv0wha7haJ74783FdxdedSadeKOpxeCGqkKvH4KicP8ibvexd4QcYZIxia3vWOqMAGDcHLcJuh527Ga7bdnChpggQZRCCpAZYIm/96"
						width="40" height="40">
					<div class="body">
						<div class="title">满天红包☞公众号mthongbao</div>
						<em>共拆到红包1677.70元</em>
					</div>
				</div>
				<div class="entry">
					<i>5</i><img
						src="http://wx.qlogo.cn/mmopen/sv0wha7haJ74783FdxdedYl0o2eLP5zia76MOzF6RicL1FFYNXsvCqKxibQmHCK1OIic6MeX9qtFOxwzLXjAZD2mD8fCtMic48y69/96"
						width="40" height="40">
					<div class="body">
						<div class="title">赚钱微信:QQ1066683434</div>
						<em>共拆到红包1456.40元</em>
					</div>
				</div>
				<div class="entry">
					<i>6</i><img
						src="http://wx.qlogo.cn/mmopen/icz582VuVOHbpwgUGNwgarRc94d0cdILGhWmliaHMYFR6PGSURKtuU1bgCIiakLzKxnfYpdBuHjDzSUajJ2R5NrHx2sW3oCBgbt/96"
						width="40" height="40">
					<div class="body">
						<div class="title">金沙星球官方</div>
						<em>共拆到红包984.10元</em>
					</div>
				</div>
				<div class="entry">
					<i>7</i><img
						src="http://wx.qlogo.cn/mmopen/NFG2UYeaAlicQmGO8X1VZcgApJ9yyKsvfPcsjw8WcbkAWYZ2JhFQ9mGxE8V77sJbG8BibG939soGf0T4hxZpwj6pPGJU5Hl3vY/96"
						width="40" height="40">
					<div class="body">
						<div class="title">雨若无痕</div>
						<em>共拆到红包843.30元</em>
					</div>
				</div>
				<div class="entry">
					<i>8</i><img
						src="http://wx.qlogo.cn/mmopen/icz582VuVOHY8Pvxstm5oK10xmHXIU9sXLEhJkaEx4AZFNK4WOaQl7ZLwgic4YnfbCTQRiaEicCZPf9I1eAmKM1AvQKGG5Lm9tgp/96"
						width="40" height="40">
					<div class="body">
						<div class="title">天天手机赚钱小雄</div>
						<em>共拆到红包750.10元</em>
					</div>
				</div>
				<div class="entry">
					<i>9</i><img
						src="http://wx.qlogo.cn/mmopen/icz582VuVOHaPNhVIAr51r8G7SsJo0ZLz0LkHPxEMlU6UvefQJLqS4wibz1Dictic00JqJpsLLNpeoRA2XFSKMHHbU15Zibln8fRY/96"
						width="40" height="40">
					<div class="body">
						<div class="title">素雅</div>
						<em>共拆到红包727.90元</em>
					</div>
				</div>
				<div class="entry">
					<i>10</i><img
						src="http://wx.qlogo.cn/mmopen/sv0wha7haJ74783FdxdedYjia67IXpp74nS3XaF5QJpibOmDbtHuM24zDrbQ73blP86jOXmDOwhM11Poh9fsW5acDyCUHJavzB/96"
						width="40" height="40">
					<div class="body">
						<div class="title">红包满天飞☞☞QQ871140880</div>
						<em>共拆到红包720.30元</em>
					</div>
				</div>
				<div class="entry">
					<i>11</i><img
						src="http://wx.qlogo.cn/mmopen/NFG2UYeaAlicQmGO8X1VZcovIGsrTbHJ9HkHjhYDTfslQnZz0PZEoqV2agacTNt1BVU6LpM2M8nTUHvv2xdZjXXhQiawcOKNQl/96"
						width="40" height="40">
					<div class="body">
						<div class="title">叫我王翔就好了。</div>
						<em>共拆到红包661.50元</em>
					</div>
				</div>
				<div class="entry">
					<i>12</i><img
						src="http://wx.qlogo.cn/mmopen/NFG2UYeaAlicI73wnUqwQvJklhW0jIEd33QZvGIf7emPyz8gvtuEswic6cXzas2Wf4TGhVJXgp7qEJFicEY4qOWjj41wyfSH4Y0/96"
						width="40" height="40">
					<div class="body">
						<div class="title">梦雪儿</div>
						<em>共拆到红包629.80元</em>
					</div>
				</div>
				<div class="entry">
					<i>13</i><img
						src="http://wx.qlogo.cn/mmopen/dibCvqHg4WncOnjBU8bHibicicYicvniazgl1nhenHlfKRYmg6kVkNRWvCg2sAav0bq40Pl0NQ7qNEAnttafricIb3Xlqs7fSTviaLEo/96"
						width="40" height="40">
					<div class="body">
						<div class="title">红包总裁</div>
						<em>共拆到红包582.50元</em>
					</div>
				</div>
				<div class="entry">
					<i>14</i><img
						src="http://wx.qlogo.cn/mmopen/dibCvqHg4Wnc7U4J2jtibTzeoL1kKsXrqM6VOJsbPECrnkFOPgBbJKDQTcV9fxa0SRayROguZ3ZS5JL0ERicFQzLg/96"
						width="40" height="40">
					<div class="body">
						<div class="title">瘫痪</div>
						<em>共拆到红包574.00元</em>
					</div>
				</div>
				<div class="entry">
					<i>15</i><img
						src="http://wx.qlogo.cn/mmopen/NFG2UYeaAlicL6zjk5ZTzY4PqmzDoeEC2Eo2XU5x68chfBcibOMSfL2NDCSJrfibooO6yqfMHSIibfh2qNBGF8Qm8Da7lDMicuKjq/96"
						width="40" height="40">
					<div class="body">
						<div class="title">加.薪.號ny46kt</div>
						<em>共拆到红包560.80元</em>
					</div>
				</div>
				<div class="entry">
					<i>16</i><img
						src="http://wx.qlogo.cn/mmopen/sv0wha7haJ4OibfqPuoeDMGl8KflcXgUeK6yCH00oeSMrbYXpyBPICwNDuvA0DIzswibb8gD0v0IhnXDZOwu0EzzbnjrI4uzibQ/96"
						width="40" height="40">
					<div class="body">
						<div class="title">Vroo</div>
						<em>共拆到红包559.90元</em>
					</div>
				</div>
				<div class="entry">
					<i>17</i><img src="" width="40" height="40">
					<div class="body">
						<div class="title">淡色 ★ゞ华年</div>
						<em>共拆到红包555.50元</em>
					</div>
				</div>
				<div class="entry">
					<i>18</i><img
						src="http://wx.qlogo.cn/mmopen/C4o82YruTmSl4Hs31oPVt5QvvYBUAWMhib5egI2tiaZyLB5eibnnqA6AErBqPWGDNmzhWA8yZ69ibwE03LpH8lZWZ6YrYtRVnq0g/96"
						width="40" height="40">
					<div class="body">
						<div class="title">我是一个悠闲的屁股</div>
						<em>共拆到红包548.20元</em>
					</div>
				</div>
				<div class="entry">
					<i>19</i><img
						src="http://wx.qlogo.cn/mmopen/sv0wha7haJ74783FdxdedYlarCiapPsxTg1QZEXmkvvfKnq3yWuySXFkDWWnZDCYjibYiapOHEh340oaNicdJTOtxoIyPveWdOpP/96"
						width="40" height="40">
					<div class="body">
						<div class="title">专属§味道</div>
						<em>共拆到红包529.90元</em>
					</div>
				</div>
				<div class="entry">
					<i>20</i><img
						src="http://wx.qlogo.cn/mmopen/PiajxSqBRaEJqIowicRftlHvu2bw6sBwUsr27F0PQb8ic1MGodrFQ3DtMWCibJPuJMzSaSA7vwkjrCmdKmgnRZ6Lhw/96"
						width="40" height="40">
					<div class="body">
						<div class="title">微信号yuanyuan55161058</div>
						<em>共拆到红包517.30元</em>
					</div>
				</div>
				<div class="entry">
					<i>21</i><img
						src="http://wx.qlogo.cn/mmopen/NFG2UYeaAl9mQXsAJn7GIJSzD0BUVeqwBLaNicJa715rbnKwM8JrOqjrya1LjZhA3WZSRPexn2melviaCcKCjbJGKlMuDgpRvic/96"
						width="40" height="40">
					<div class="body">
						<div class="title">手机赚钱第一强推荐QQ442753840</div>
						<em>共拆到红包504.50元</em>
					</div>
				</div>
				<div class="entry">
					<i>22</i><img
						src="http://wx.qlogo.cn/mmopen/sv0wha7haJ7KM8Cp7aKnYgqKkjN1A8h8DicDfZHe7xM2Bo8ibHWKHCGqNDVUtJKiayMNXtH5JTmJicFa93M0UyDlmIEubopUPhSj/96"
						width="40" height="40">
					<div class="body">
						<div class="title">程晨</div>
						<em>共拆到红包499.30元</em>
					</div>
				</div>
				<div class="entry">
					<i>23</i><img
						src="http://wx.qlogo.cn/mmopen/icz582VuVOHY8Pvxstm5oK1K1EEZobdAcAogYrSiaBLVahqLXmllc5YiauKqWavPOEIPPKTWicpGNGOeFoN9Fg7WOL3sBpoHDeaV/96"
						width="40" height="40">
					<div class="body">
						<div class="title">宇</div>
						<em>共拆到红包496.20元</em>
					</div>
				</div>
				<div class="entry">
					<i>24</i><img
						src="http://wx.qlogo.cn/mmopen/NFG2UYeaAlicQmGO8X1VZcpyP2pF7MwibzwCHeMmhKRjVicDZjeAz7pXuBZ9ZPDP6WbNbOVm5czM21YoJQHzCyLESDPHz3K9BrI/96"
						width="40" height="40">
					<div class="body">
						<div class="title">下一秒</div>
						<em>共拆到红包455.10元</em>
					</div>
				</div>
				<div class="entry">
					<i>25</i><img
						src="http://wx.qlogo.cn/mmopen/icz582VuVOHY8Pvxstm5oK4ibwOtxXGc9toTiaUonicv0JrJia3rRNVg3PU52QRic9IPQe36b8TdO5jicuaXA5EBMGAE1bBBEbhFTCu/96"
						width="40" height="40">
					<div class="body">
						<div class="title">唐浩</div>
						<em>共拆到红包441.30元</em>
					</div>
				</div>
				<div class="entry">
					<i>26</i><img
						src="http://wx.qlogo.cn/mmopen/sv0wha7haJ74783FdxdedVmeia4VxcbtqGsplQZ4U2ibI0icCRPr3LqujMmiaiaicWZ2mNVqfTnXbJgPKrprSTZjicicPGicRxV847YMM/96"
						width="40" height="40">
					<div class="body">
						<div class="title">Alex</div>
						<em>共拆到红包432.50元</em>
					</div>
				</div>
				<div class="entry">
					<i>27</i><img
						src="http://wx.qlogo.cn/mmopen/NFG2UYeaAlicQmGO8X1VZcnSph15gxB95B3Zdjjd1uibcHlibzAgLSpMPvlmxk3hmPLVN9U1MCgyjltJjZl8HkS1lS8B7QW75qO/96"
						width="40" height="40">
					<div class="body">
						<div class="title">叮当</div>
						<em>共拆到红包431.70元</em>
					</div>
				</div>
				<div class="entry">
					<i>28</i><img
						src="http://wx.qlogo.cn/mmopen/dibCvqHg4WneiaicfkPHjkZF0C0BwABEuGqKs3VGO6Jw1rp0KFHW5uIqGUJsAyuicFSJGOCdnf4QRK1PyAK6MeibPo90k7grnX1qn/96"
						width="40" height="40">
					<div class="body">
						<div class="title"></div>
						<em>共拆到红包395.10元</em>
					</div>
				</div>
				<div class="entry">
					<i>29</i><img
						src="http://wx.qlogo.cn/mmopen/sv0wha7haJ74783Fdxdedcpuoo9OgFjH26L2JfX2wK7WXJibopNWIMjjeYNVd4SKoUzyOQwXketZ6UysfwA7tBbFESZo2Iwtg/96"
						width="40" height="40">
					<div class="body">
						<div class="title">独守空城忆旧梦</div>
						<em>共拆到红包390.80元</em>
					</div>
				</div>
				<div class="entry">
					<i>30</i><img
						src="http://wx.qlogo.cn/mmopen/NFG2UYeaAlicHR7dO4tXoBpEicDZppe3UkdZb5j0BTGGessN6pAYcTEOgvW29S4gWaaOFdLk7nzmt3ZFuRpMJIowhNnDJfPvXb/96"
						width="40" height="40">
					<div class="body">
						<div class="title">烟花、绽放过后只剩黑暗</div>
						<em>共拆到红包378.50元</em>
					</div>
				</div>
			</div>
		</div>
		<!-- 拆红包排行 start -->
	</div>
	<span style="display:none;"></span>
</body>
</html>