<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>论坛</title>
    <link rel="shortcut icon" href="https://test.anygame.info:443/source/img/favicon.ico" type="image/x-icon" >
    <link href="https://test.anygame.info:443/source/front1.4/plugins/layer/theme/default/layer.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <link rel="shortcut icon" href="https://test.anygame.info:443/source/front1.4/images/favicon.ico" type="image/x-icon" >

    <link rel="stylesheet" href="https://test.anygame.info:443/source/front1.4/css/web/mainpage.css">
    <link rel="stylesheet" href="https://test.anygame.info:443/source/front1.4/css/common/common.css">
    <link rel="stylesheet" href="https://test.anygame.info:443/source/front1.4/css/web/style.css">
    <!-- ZUI Javascript 依赖 jQuery -->
    
    <meta name="baidu-site-verification" content="25Pj6UNTHO"/>
    <meta name="keywords"
          content="云游戏，云电脑，云游戏机，游戏，游戏平台，主机游戏，单机游戏，PC游戏，端游，吃鸡，绝地求生，大逃杀，steam，育碧，胖鱼，胖鱼游戏，胖鱼游戏平台，云格，云格致力，云格平台，云格游戏，云格游戏平台">
    <meta name="description"
          content="胖鱼游戏是由云格致力推出的云游戏平台，无需下载安装，无需等待，只需点击鼠标，随时随地，想玩就玩；让你的终端变成超级游戏机，多平台，跨终端畅玩各种大型游戏、3A大作，尽享速度和画面带来的极致体验；不要犹豫，快来加入胖鱼游戏吧!">
    
    <link rel="stylesheet" href="https://test.anygame.info:443/source/front1.4/css/web/ft-carousel.css">
    <link rel="stylesheet" href="https://test.anygame.info:443/source/front2.2/css/swiper.min.css"/>
    <link rel="stylesheet" href="https://test.anygame.info:443/source/front2.2/css/common.css">
    <script src="https://test.anygame.info:443/source/front2.2/js/web/swiper.min.js"></script>
    <script src="https://test.anygame.info:443/source/front2.2/js/bbsHome.js"></script>
    <script src="https://test.anygame.info:443/source/front1.4/js/web/ft-carousel.min.js"></script>
</head>

<body style="padding: 0px;margin: 0px;text-align: center;">
<div id="header">
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td class="header-logo"><img src="images/logo.jpg"></td>
            <td class="header-game "
                onclick="window.location.href='main.jsp';"><span>电影</span></td>

            
             
                
                <td class="header-game "
                    onclick=""><span>下载</span></td>
                <td class="header-game header-active"
                    onclick=""><span>论坛</span></td>
                <td></td>
                <td class="header-login">
                    <img onclick=""
                         src="https://test.anygame.info:443/source/front1.4/images/login/login_bg.png"/>
                </td>
            
            
        </tr>
    </table>
</div>


    <div id="header-searchtype">
        <table cellpadding="0" cellspacing="0">
            <tr>
                
                    <td class="header-search-model" onclick="">
                        <div
                                
                                class="model-active"
                                style="margin-left: 34px;">
                            <span>首页</span></div>
                    </td>
                
                    <td class="header-search-model" onclick="">
                        <div
                                
                                
                                style="margin-left: 34px;">
                            <span>灌水</span></div>
                    </td>
                
                    <td class="header-search-model" onclick="">
                        <div
                                style="width: 70px;text-align:center;margin: 0 auto" 
                                
                                style="margin-left: 34px;">
                            <span>意见反馈</span></div>
                    </td>
                
                    <td class="header-search-model" onclick="">
                        <div
                                
                                
                                style="margin-left: 34px;">
                            <span>公告</span></div>
                    </td>
                
                <td></td>
                <td style="width: 20px;"></td>
                <td style="width: 440px;"></td>
                <td class="header-search-box" style="width: 110px; position: relative">
                    <select id="forumSelect" class="form-control" style="width: 90px;height: 34px;border-top-left-radius: 34px;border-bottom-left-radius: 34px;outline: none;border: 1px solid #f9b460;    position: absolute;
    left:-69px;border-right: none;text-align: center;text-align-last: center; cursor: pointer; appearance:none;-moz-appearance:none;-webkit-appearance:none; background:#ffffff url(https://test.anygame.info:443/source/front2.2/img/drop-down.png) no-repeat; background-position: right center;  background-size: 18% ; ">
                        
                            
                        
                            
                                <option value="watering"
                                         >灌水</option>
                            
                        
                            
                                <option value="feedback"
                                         >意见反馈</option>
                                             
                                <option value="notice"
                                         >公告</option>   
                    </select>
                    <input id="bbs_search_box" type="text" maxlength="20"
                           placeholder="帖子搜索" value=""></td>
                <td class="header-search-btn" onclick="bbsSearch()">
                    <div><img src="https://test.anygame.info:443/source/front1.4/images/search.png"></div>
                </td>
            </tr>
        </table>
    </div>
   
<div id="wrap_content">
    
<!------------------------------------------- banner ------------------------------------------------>
<div class="banner">
    <div class="left">
        <div class="swiper-container">
            <div class="swiper-wrapper">
                
            </div>
        </div>
        <!-- 如果需要分页器 -->
        <div class="swiper-pagination"></div>
        <!-- 如果需要导航按钮 -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>
    <!------------------------------------------------- 公告部分 ---------------------------------------------------->
    <div class="right">
        <div class="announcement">
            <h3>公告</h3>
            <a href="">更多公告></a>
        </div>
        <ul>
            
        </ul>
    </div>
</div>
<div class="forumHot">
    <div class="hotTitle">
        <h3>本周热门</h3>
        <span onclick="reFresh()">刷一下 <img src="../../source/front2.2/img/refresh.png" alt=""> </span>
    </div>
    <div id="hotContent" class="hotContent">
        <ul>
            
        </ul>
    </div>
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