<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>  
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Marvel漫威系列电影</title>
    <link href="https://test.anygame.info:443/source/front1.4/plugins/layer/theme/default/layer.css" rel="stylesheet">
    <link rel="shortcut icon" href="https://test.anygame.info:443/source/front1.4/images/favicon.ico" type="image/x-icon" >
    <link rel="stylesheet" href="https://test.anygame.info:443/source/front1.4/css/web/mainpage.css">
    <link rel="stylesheet" href="https://test.anygame.info:443/source/front1.4/css/common/common.css">
    <link rel="stylesheet" href="https://test.anygame.info:443/source/front1.4/css/web/style.css">
    <!-- ZUI Javascript 依赖 jQuery -->
    <link rel="stylesheet" href="https://test.anygame.info:443/source/front1.4/plugins/galleryview/galleryview.css">
    <script type="text/javascript" src="./JQuery/jquery-1.11.2.min.js"></script>
    <script type="text/javascript">
    
	   $(function(){
			$("#watch").click(function(){
			
				
				window.location.href="http://www.youku.com";
				
				
			});
			
	        $("#admin").click(function(){
			
				
				window.location.href="login.html";
				
				
			});
			   
			   
			   
			   
			   
		   });
    
    
    
    </script>
    
    
    
</head>
<body style="padding: 0px;margin: 0px;text-align: center;">
<div id="header">
		<table cellpadding="0" cellspacing="0">
			<tr>
				
				<td class="header-logo"><img src="images/logo.jpg"></td>
				<td class="header-game header-active"
					onclick="window.location.href='main.jsp';"><span>电影</span></td>

				<td class="header-game " id=""><span>下载</span></td>
				<td class="header-game "
					onclick="window.location.href='forum.jsp';"><span>论坛</span></td>
				<td></td>
				<td class="header-login"><img
					onclick="windowOpinion.prototype.gotologin();"
					src="https://test.anygame.info:443/source/front1.4/images/login/login_bg.png" />
				</td>


			</tr>
		</table>
	</div>




<div id="wrap_content">
    
<div id="detailPage">
    <p class="ht31 pm0"></p>
    <p class="ht18 pm0 font-common">
        <span onclick="window.location.href='main.jsp';" style="cursor:pointer;">电影 </span>
            <span>></span>
             ${message.moviesName}</p>
    <p class="ht15 pm0"></p>
    <table id="table-gameimgs" cellspacing="0" cellpadding="0">
        <tr>
            <td class="wd806">
               <img src="${message.image1}" width="806" height="454" />
            </td>
            <td class="detail-gamedesc">
                <table id="detail-gamedesc-desc" >
                    <tr><td class="detail-gamedesc-desc-title">发行时间</td><td class="detail-gamedesc-desc-content">&nbsp;　
                       ${message.time}
                    </td></tr>
                    <tr><td class="detail-gamedesc-desc-title">发行公司</td><td class="detail-gamedesc-desc-content">&nbsp;　
                       ${message.company}
                    </td></tr>
                </table>
                <table id="detail-gamedesc-lable" >
                    <tr><td>
<!--                         类型 -->
                            <span>${message.type}</span>
                        
                        
                    </td></tr>
                </table>
                <p class="ht40 pm0"></p>
                
                <table id="table-rungame" >
                    <tr>
                            <td></td>
                            <td class="table-rungame-web" id="watch" ><span>点击观看</span></td>
                            <td></td>
                    
                        
                    </tr>
                </table>

						<table id="detail-gamedesc-castremind">
							<tr>
								<td><img
									src="https://test.anygame.info:443/source/front1.4/images/remind1.png" /></td>
								<td id="td_cast_remind">本网站仅供发表评论和打分 观看正版视频请上各大电影网站</td>	
								<td></td>
							</tr>
						</table>
					</td>
        </tr>
    </table>
    <p class="ht30 pm0"></p>
    <p class="ht18 pm0 font-common">电影详情</p>
    <p class="ht15 pm0"></p>
    <table id="table-gamedesc" cellpadding="0" cellspacing="0" style="height:482px">
        <tr>
            <td class="detail-logo">
                <img src="${message.image2}" style="height:450px">
            </td>
            <td class="detail-desc">
                <span>${message.introduced}</span>
            </td>
        </tr>
    </table>
    <p class="ht30 pm0"></p>
    <p class="ht18 pm0">
        <span class="font-common fl">热门电影</span>
        <span class="font-change fr" onclick="gameDetailOpinion.prototype.changeOtherSimlarGame([112, 111, 109, 105, 101, 100, 77, 14, 11, 9, 8, 3]);"> 换一批</span>
        <img src="https://test.anygame.info:443/source/front1.4/images/change.png" onclick="gameDetailOpinion.prototype.changeOtherSimlarGame([112, 111, 109, 105, 101, 100, 77, 14, 11, 9, 8, 3]);" class="font-change-img">
    </p>
    <p class="ht15 pm0"></p>
<!--     <table id="table-detail-hotgame" cellspacing="0" cellpadding="0"> -->
<!--         <tr> -->
            
<!--                 <td class="detail-hotgame-detail" onclick="gotoGameDetail('5DC10D6FDCD995D49AC811DD5A0D99FA');"> -->
<!--                     <img src="https://image.anygame.info/appDetail/0/4D9C67BE27F74CBE8A16125E57BC3B4C"> -->
<!--                     <p class="ht30 pm0"></p> -->
<!--                     <div> -->
<!--                         <p>返校</p> -->
<!--                         <h5 title="以一九六零年代的台湾省为原型的架空剧情,插画拼贴风格,及音乐.在紧张感中, 解开一个又一个秘密,孤独的学生, 残酷的校园, 以及让人无力面对的真相。  -->
<!-- 2017年10月，《返校》获2017年Indiecade卓越体验奖 。">以一九六零年代的台湾省为原型的架空剧情,插画拼贴风格,及音乐.在紧张感中, 解开一个又一个秘密,孤独的学生, 残酷的校园, 以及让人无力面对的真相。  -->
<!-- 2017年10月，《返校》获2017年Indiecade卓越体验奖 。</h5> -->
<!--                     </div> -->
<!--                 </td> -->
                
<!--                     <td class="wd32"></td> -->
                
            
<!--                 <td class="detail-hotgame-detail" onclick="gotoGameDetail('BF8A1E8466F037B4BAB55C8C9297F059');"> -->
<!--                     <img src="https://image.anygame.info/appDetail/161/74C49E80DE1C4410881890F58D881968"> -->
<!--                     <p class="ht30 pm0"></p> -->
<!--                     <div> -->
<!--                         <p>看门狗2</p> -->
<!--                         <h5 title="看门狗2（Watch_Dogs2）是由育碧公司开发的一款第三人称射击角色扮演游戏，游戏登陆PC、 PlayStation 4和Xbox One平台，在2016年11月份发行。 -->
<!-- 游戏背景设定在未来的旧金山，玩家需要扮演年轻的聪明黑客马可仕．哈洛威，来到技术革命的起源地：旧金山湾区。加入最恶名昭彰的黑客团体 DedSec，执行史上最大规模的黑客行动，彻底消灭犯罪首脑用来大规模监视操控市民的侵入性运作系统 ctOS 2.0。">看门狗2（Watch_Dogs2）是由育碧公司开发的一款第三人称射击角色扮演游戏，游戏登陆PC、 PlayStation 4和Xbox One平台，在2016年11月份发行。 -->
<!-- 游戏背景设定在未来的旧金山，玩家需要扮演年轻的聪明黑客马可仕．哈洛威，来到技术革命的起源地：旧金山湾区。加入最恶名昭彰的黑客团体 DedSec，执行史上最大规模的黑客行动，彻底消灭犯罪首脑用来大规模监视操控市民的侵入性运作系统 ctOS 2.0。</h5> -->
<!--                     </div> -->
<!--                 </td> -->
                
<!--                     <td class="wd32"></td> -->
                
            
<!--                 <td class="detail-hotgame-detail" onclick="gotoGameDetail('3CB7B14C85773C59B2CE39A049A5BBA3');"> -->
<!--                     <img src="https://image.anygame.info/appDetail/148/14B0F2C1ED3746C6864CFDCF419B3746"> -->
<!--                     <p class="ht30 pm0"></p> -->
<!--                     <div> -->
<!--                         <p>方舟：生存进化</p> -->
<!--                         <h5 title="由虚幻4引擎打造的一款多人在线生存竞技网游，在一个超高自由度的开放世界里，可以体验采集、制造、打猎、收获、建造、研究以及驯服恐龙等超多自由内容，感受酷热白昼、冰冷夜晚的动态天气系统以及饥饿口渴等现实中的生存挑战，还要面对其它生存者的威胁，合作生存还是竞技厮杀，由你决定！">由虚幻4引擎打造的一款多人在线生存竞技网游，在一个超高自由度的开放世界里，可以体验采集、制造、打猎、收获、建造、研究以及驯服恐龙等超多自由内容，感受酷热白昼、冰冷夜晚的动态天气系统以及饥饿口渴等现实中的生存挑战，还要面对其它生存者的威胁，合作生存还是竞技厮杀，由你决定！</h5> -->
<!--                     </div> -->
<!--                 </td> -->
                
<!--                     <td class="wd32"></td> -->
                
            
<!--                 <td class="detail-hotgame-detail" onclick="gotoGameDetail('9B0AC8D7581D5C0E6A686974BCF44315');"> -->
<!--                     <img src="https://image.anygame.info/appDetail/141/DA2B356F5ED9417CBCF6B2E3ED5DBE15"> -->
<!--                     <p class="ht30 pm0"></p> -->
<!--                     <div> -->
<!--                         <p>最终幻想15</p> -->
<!--                         <h5 title="与挚友一同踏上这场永生難忘的旅程，穿越令人屏息的开放世界、目睹迷人的大地风采，在旅途中挑战体型惊人的猛兽，并奋力打败强大敌人，夺回家园。 -->

<!-- 采用动感十足的战斗系统，在惊险刺激的战斗中，轻松引导先祖的力量，穿梭战场时空。和战友携手合作，掌握武器、魔法和团队战斗的技能。">与挚友一同踏上这场永生難忘的旅程，穿越令人屏息的开放世界、目睹迷人的大地风采，在旅途中挑战体型惊人的猛兽，并奋力打败强大敌人，夺回家园。 -->

<!-- 采用动感十足的战斗系统，在惊险刺激的战斗中，轻松引导先祖的力量，穿梭战场时空。和战友携手合作，掌握武器、魔法和团队战斗的技能。</h5> -->
<!--                     </div> -->
<!--                 </td> -->
                
            
<!--             <td></td> -->
<!--         </tr> -->
<!--     </table> -->
    <p class="ht60 pm0"></p>
</div>

</div>

<div id="footer">
		<table cellpadding="0" cellspacing="0">
			<tr>
				<td class="ht24"></td>
			</tr>
			<tr>
				<td class="ht14"><a href="javascript:void(0)"
					onclick="">文化部服务格式化协议必备条款</a>
					<a target="_blank"
					href="">自审制度</a> <a
					target="_blank"
					href="">监管平台</a> <a
					target="_blank"
					href="">用户注册协议</a>
					<a target="_blank"
					href="">帮助中心</a></td>
			</tr>
			<tr>
				<td class="ht3"></td>
			</tr>

			<tr>
				<td class="ht38"></td>
			</tr>
		</table>
	</div>
</body>
</html>