<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>电影排行</title>
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
            <td class="header-game  header-active"
                onclick="window.location.href='main.jsp';"><span>电影</span></td>

            
             
                
                <td class="header-game "
                    onclick=""><span>下载</span></td>
                <td class="header-game"
                    onclick="window.location.href='forum.jsp';"><span>论坛</span></td>
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
				<td class="header-search-model">
					<div onclick="window.location.href='main.jsp';" class="" style="margin-left: 34px;">
						<span>推荐</span>
					</div>
				</td>
				<td class="header-search-model">
					<div id="list" class="model-active" style="width: 48px !important; margin-left: 26px;">
						<span>排行榜</span>
					</div>
					<td class="header-search-model">
					<div id="" style="width: 48px !important; margin-left: 26px;">
						<span>分类</span>
					</div>
					<td class="header-search-model">
					<div id="" style="width: 80px !important; margin-left: 26px;">
						<span>活动资讯</span>
					</div>
					


				<td></td>
<td>
                    <ul id="hotLable">
                        
                            
                                <li onclick="gotomovies('12')">
                                    <span>复仇者联盟</span></li>
                                
                                    
                                        <li class="wd28">|</li>
                                    
                                
                            
                        
                            
                                <li onclick="gotomovies('2')">
                                    <span>毒液</span></li>
                                
                                    
                                        <li class="wd28">|</li>
                                    
                                
                            
                        
                            
                                <li onclick="gotomovies('1')">
                                    <span>奇异博士</span></li>
                                
                                    
                                        <li class="wd28">|</li>
                                    
                                
                            
                        
                            
                                <li onclick="gotomovies('4')">
                                    <span>银河护卫队</span></li>
                                
                            
                        
                    </ul>
                </td>

				<td style="width: 20px;"></td>
				<td class="header-search-box"><input id="ipt_search_box"
					type="text" maxlength="20" placeholder="搜索电影" value=""></td>
				<td class="header-search-btn" onclick="searchAction();">
					<div>
						<img
							src="https://test.anygame.info:443/source/front1.4/images/search.png">
					</div>
				</td>
			</tr>
		</table>
	</div>

<div id="wrap_content">
<div id="rangePage">
    <p class="ht30 pm0"></p>
    <table id="table-rangelist" cellspacing="0" cellpadding="0">
        
        
            
                
                    <tr class="tr-bgrffffff" onclick="">
                        <td class="td-logo">
                             <img src="https://test.anygame.info:443/source/front1.4/images/range/no2.png" class="td-logo-rangeimg"/>
                            <span class="td-logo-rangeno notext1">NO.1</span>
                            <img src="" class="td-logo-logoimg" onclick="" />
                        </td>
                        <td>
                            <p class="td-title-name"></p><p class="td-title-online"></p>
                            <p class="td-title-label">
                                
                                    
                                        <span></span>
                                    
                                    
                                
                                    
                                    
                                        <span></span>
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                            </p>
                        </td>
                        <td class="td-rungame"><a onclick=""></a></td>
                    </tr>
                    <tr><td colspan="3" class="ht10"></td></tr>
                
                
                
            
            
        
            
                
                    <tr class="tr-bgrffffff" onclick="">
                        <td class="td-logo">
                            <img src="https://test.anygame.info:443/source/front1.4/images/range/no2.png" class="td-logo-rangeimg"/>
                            <span class="td-logo-rangeno notext1">NO.2</span>
                            <img src="" class="td-logo-logoimg" onclick="" />
                        </td>
                        <td>
                            <p class="td-title-name"></p><p class="td-title-online"></p>
                            <p class="td-title-label">
                                
                                    
                                        <span></span>
                                    
                                    
                                
                                    
                                    
                                        <span></span>
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                            </p>
                        </td>
                        <td class="td-rungame"><a onclick=""></a></td>
                    </tr>
                    <tr><td colspan="3" class="ht10"></td></tr>
                
                
                
            
            
        
            
                
                    <tr class="tr-bgrffffff" onclick="">
                        <td class="td-logo">
                            <img src="" class="td-logo-rangeimg"/>
                            <span class="td-logo-rangeno notext1"></span>
                            <img src="" class="td-logo-logoimg" onclick="gotoGameDetail('9D3FBBBB592DACBA360200CBBC5ECFE8');" />
                        </td>
                        <td>
                            <p class="td-title-name"></p><p class="td-title-online"></p>
                            <p class="td-title-label">
                                
                                    
                                        <span></span>
                                    
                                    
                                
                                    
                                    
                                        <span></span>
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                            </p>
                        </td>
                        <td class="td-rungame"><a onclick=""></a></td>
                    </tr>
                    <tr><td colspan="3" class="ht10"></td></tr>
                
                
                
            
            
        
            
                
                
                
                    <tr class="tr-bgrffffff" onclick="">
                        <td class="td-logo">
                            <img src="https://test.anygame.info:443/source/front1.4/images/range/no4.png" class="td-logo-rangeimg"/>
                            <span class="td-logo-rangeno notext2"></span>
                            <img src="" class="td-logo-logoimg" onclick="" />
                        </td>
                        <td>
                            <p class="td-title-name"></p><p class="td-title-online"></p>
                            <p class="td-title-label">
                                
                                    
                                        <span></span>
                                    
                                    
                                
                                    
                                    
                                        <span></span>
                                    
                                
                                    
                                    
                                
                            </p>
                        </td>
                        <td class="td-rungame"><a onclick=""></a></td>
                    </tr>
                    <tr><td colspan="3" class="ht10"></td></tr>
                
            
            
        
            
                
                
                
                    <tr class="tr-bgrffffff" onclick="">
                        <td class="td-logo">
                            <img src="" class="td-logo-rangeimg"/>
                            <span class="td-logo-rangeno notext2"></span>
                            <img src="" class="td-logo-logoimg" onclick="" />
                        </td>
                        <td>
                            <p class="td-title-name"></p><p class="td-title-online"></p>
                            <p class="td-title-label">
                                
                                    
                                        <span></span>
                                    
                                    
                                
                                    
                                    
                                        <span></span>
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                            </p>
                        </td>
                        <td class="td-rungame"><a onclick=""></a></td>
                    </tr>
                    <tr><td colspan="3" class="ht10"></td></tr>
                
            
            
        
            
                
                
                
                    <tr class="tr-bgrffffff" onclick="">
                        <td class="td-logo">
                            <img src="https://test.anygame.info:443/source/front1.4/images/range/no4.png" class="td-logo-rangeimg"/>
                            <span class="td-logo-rangeno notext2"></span>
                            <img src="" class="td-logo-logoimg" onclick="" />
                        </td>
                        <td>
                            <p class="td-title-name"></p><p class="td-title-online"></p>
                            <p class="td-title-label">
                                
                                    
                                        <span></span>
                                    
                                    
                                
                                    
                                    
                                        <span></span>
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                            </p>
                        </td>
                        <td class="td-rungame"><a onclick=""></a></td>
                    </tr>
                    <tr><td colspan="3" class="ht10"></td></tr>
                
            
            
        
            
                
                
                
                    <tr class="tr-bgrffffff" onclick="">
                        <td class="td-logo">
                            <img src="" class="td-logo-rangeimg"/>
                            <span class="td-logo-rangeno notext2">NO.7</span>
                            <img src="" class="td-logo-logoimg" onclick="" />
                        </td>
                        <td>
                            <p class="td-title-name"></p><p class="td-title-online"></p>
                            <p class="td-title-label">
                                
                                    
                                        <span></span>
                                    
                                    
                                
                            </p>
                        </td>
                        <td class="td-rungame"><a onclick=""></a></td>
                    </tr>
                    <tr><td colspan="3" class="ht10"></td></tr>
                
            
            
        
            
                
                
                
                    <tr class="tr-bgrffffff" onclick="">
                        <td class="td-logo">
                            <img src="" class="td-logo-rangeimg"/>
                            <span class="td-logo-rangeno notext2"></span>
                            <img src="" class="td-logo-logoimg" onclick="" />
                        </td>
                        <td>
                            <p class="td-title-name"></p><p class="td-title-online"></p>
                            <p class="td-title-label">
                                
                                    
                                        <span></span>
                                    
                                    
                                
                                    
                                    
                                        <span></span>
                                    
                                
                            </p>
                        </td>
                        <td class="td-rungame"><a onclick=""></a></td>
                    </tr>
                    <tr><td colspan="3" class="ht10"></td></tr>
                
            
            
        
            
                
                
                
                    <tr class="tr-bgrffffff" onclick="">
                        <td class="td-logo">
                            <img src="" class="td-logo-rangeimg"/>
                            <span class="td-logo-rangeno notext2"></span>
                            <img src="" class="td-logo-logoimg" onclick="" />
                        </td>
                        <td>
                            <p class="td-title-name"></p><p class="td-title-online"></p>
                            <p class="td-title-label">
                                
                                    
                                        <span></span>
                                    
                                    
                                
                                    
                                    
                                        <span></span>
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                                    
                                    
                                
                            </p>
                        </td>
                        <td class="td-rungame"><a onclick=""></a></td>
                    </tr>
                    <tr><td colspan="3" class="ht10"></td></tr>
                
            
            
        
            
                
                
                
                    <tr class="tr-bgrffffff" onclick="">
                        <td class="td-logo">
                            <img src="" class="td-logo-rangeimg"/>
                            <span class="td-logo-rangeno notext2">NO.10</span>
                            <img src="" class="td-logo-logoimg" onclick="" />
                        </td>
                        <td>
                            <p class="td-title-name"></p><p class="td-title-online"></p>
                            <p class="td-title-label">
                                
                                    
                                        <span></span>
                                    
                                    
                                
                            </p>
                        </td>
                        <td class="td-rungame"><a onclick=""></a></td>
                    </tr>
                    <tr><td colspan="3" class="ht10"></td></tr>
                
            
            
        
        
    </table>
    <table id="table-page" cellspacing="0" cellpadding="0">
        <tr><td><div><div id="kkpager"><input type="hidden" id="pageNumber" name="pageNo" value="1" /></div></div></td></tr>
    </table>
</div>
</div>






<div id="footer" >
    <table cellpadding="0" cellspacing="0">
        <tr><td class="ht24"></td></tr>
        <tr>
            <td class="ht14">
                <a href="javascript:void(0)" onclick="">文化部网络游戏服务格式化协议必备条款</a>
                <a target="_blank" href="" >自审制度</a>
                <a target="_blank" href="" >家长监管平台</a>
                <a target="_blank" href="" >用户注册协议</a>
                <a target="_blank" href="" >帮助中心</a>
            </td>
        </tr>
        <tr><td class="ht3"></td></tr>
      
        <tr><td class="ht38"></td></tr>
    </table>
</div>

</body>
</html>