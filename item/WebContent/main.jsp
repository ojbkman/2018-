<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Marvel漫威系列电影</title>
 <script src="https://test.anygame.info:443/source/front1.4/js/common/jquery-2.2.4.min.js"></script>
    <script src="https://test.anygame.info:443/source/front1.4/js/common/common.js"></script>
    <script src="https://test.anygame.info:443/source/front1.4/js/common/UA-parser.js"></script>
    <script src="https://test.anygame.info:443/source/front1.4/plugins/layer/layer.js"></script>
    <script src="https://test.anygame.info:443/source/front1.4/js/web/login.js"></script>
    <script src="https://test.anygame.info:443/source/front1.4/js/web/payment.js"></script>
    <script src="https://test.anygame.info:443/source/front1.4/js/web/pangyu-window.js"></script>
    <script src="https://test.anygame.info:443/source/front1.4/js/web/person-center.js"></script>
    <script src="https://test.anygame.info:443/source/front1.4/js/web/game-search.js"></script>
    <script src="https://test.anygame.info:443/source/front1.4/js/web/game-range.js"></script>
    <script src="https://test.anygame.info:443/source/front1.4/js/web/game-class.js"></script>
    <script src="https://test.anygame.info:443/source/front1.4/js/web/game-detail.js"></script>
    <script src="https://test.anygame.info:443/source/front1.4/js/web/game-news.js"></script>
    <script src="https://test.anygame.info:443/source/front2.2/js/web/post-water.js"></script>
    <script src="https://test.anygame.info:443//source/js/jquery.form.js"></script>

 
<link
	href="https://test.anygame.info:443/source/front1.4/plugins/layer/theme/default/layer.css"
	rel="stylesheet">
<!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
<link rel="shortcut icon" href="images/bitbug_favicon.ico">

<link rel="stylesheet"
	href="https://test.anygame.info:443/source/front1.4/css/web/mainpage.css">
<link rel="stylesheet"
	href="https://test.anygame.info:443/source/front1.4/css/common/common.css">
<link rel="stylesheet"
	href="https://test.anygame.info:443/source/front1.4/css/web/style.css">
<!-- ZUI Javascript 依赖 jQuery -->
<link rel="stylesheet"
	href="https://test.anygame.info:443/source/front1.4/css/web/ft-carousel.css">
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<script type="text/javascript" src="JQuery/jquery-1.11.2.min.js"></script>

<script type="text/javascript">

       function  gotomovies(id){
    	   
			$.ajax({
				  type:"post",

				   url:"Movies",

				  data:{"id":id},
            
				  success:function(){ 
				  window.location.href="detail.jsp";
				  } 
			});
			
  
			
       };
	   $(function(){
		$("#list").click(function(){
		
			
			window.location.href="list.jsp";
			
			
		});
		
        $("#admin").click(function(){
		
			
			window.location.href="login.html";
			
			
		});
		   
		   
		   
		   
		   
	   });
	   
	
	
	
	

</script>

<style type="text/css">
.carousel-item {
	color: #fff;
	font-family: Arial Black
}

 .example {
	width: 1200px;
	height: 390px;
	font-size: 40px;
	text-align: center;
}
</style>

</head>
<body style="padding: 0px; margin: 0px; text-align: center;">

	<div id="header">
		<table cellpadding="0" cellspacing="0">
			<tr>
				
				<td class="header-logo"><img src="images/logo.jpg"></td>
				<td class="header-game header-active"
					onclick="window.location.href='main.jsp';"><span>电影</span></td>

				<td class="header-game"  ><span>下载</span></td>
				<td class="header-game"   onclick="window.location.href='forum.jsp';"><span>论坛</span></td>
				<td></td>
				<td class="header-login"><img
					onclick="windowOpinion.prototype.gotologin();"
					src="https://test.anygame.info:443/source/front1.4/images/login/login_bg.png" />
				</td>


			</tr>
		</table>
	</div>

	<div id="header-searchtype">
		<table cellpadding="0" cellspacing="0">
			<tr>
				<td class="header-search-model">
					<div onclick="" class="model-active" style="margin-left: 34px;">
						<span>推荐</span>
					</div>
				</td>
				<td class="header-search-model">
					<div id="list" style="width: 48px !important; margin-left: 26px;">
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



		<div id="mainPage">
			<p class="ht30"></p>
			<div class="layui-carousel" id="test1">
				<div carousel-item>
				
					<div>
						<img src="images/2.jpg" onclick="gotomovies('1')">
					</div>
					 <div>
						<img src="images/duye/FjeCEWXdQLQO43TK2YZhQk4fuX4x.jpg" onclick="gotomovies('2')">
					</div>
					<div>
						<img src="images/3.jpg" onclick="gotomovies('3')">
					</div>
					<div>
						<img src="images/4.jpg" onclick="gotomovies('4')">
					</div>
					<div>
						<img src="images/5.jpg" onclick="gotomovies('5')">
					</div>
					<div>
						<img src="images/1.jpg" onclick="gotomovies('6')">
					</div>
				</div>
			</div>
			<!-- 条目中可以是任意内容，如：<img src=""> -->

			<p class="ht59"></p>
			<table class="table-title" cellspacing="0" cellpadding="0">
				<tr>
					<td class="title-lab"><div></div></td>
					<td class="title-content"><label>本周热门</label></td>
					<td></td>
					<td class="title-more"><a
						onclick="window.open('https://test.anygame.info:443/gameRangeList/1.html');">查看更多热门电影
							></a></td>
				</tr>
			</table>
			<p class="ht40"></p>
			<div class="layui-carousel" id="test2">
				<div carousel-item>
					<div>
						<table id="table-hotgame-ff" cellspacing="0" cellpadding="0">
							<tr>
								<td rowspan="3" class="pdr10"></td>
								<td rowspan="3" class="fst-hotgame"
									onclick="gotomovies('1')">
									<div class="fst-hotgame-img">
										<img src="images/p2384569531_gaitubao_com_380x563.jpg">
									</div>
									<div class="fst-hotgame-title">
										<h2>奇异博士</h2>
										<a>了解详情</a>
									</div>
								</td>



								<td class="wd30"></td>


								<td class="other-hotgame"
									onclick="gotomovies('2')">
									<div class="other-hotgame-img">
										<img
											src="images/duye/duye3.jpg">
									</div>
									<div class="other-hotgame-title">
										<h2>毒液：致命守护者</h2>
										<a>了解详情</a>
									</div>
								</td>



								<td class="wd30"></td>


								<td class="other-hotgame"
									onclick="gotomovies('3')">
									<div class="other-hotgame-img">
										<img
											src="images/heibao/heibao1.jpg">
									</div>
									<div class="other-hotgame-title">
										<h2>黑豹</h2>
										<a>了解详情</a>
									</div>
								</td>
							<tr>
								<td colspan="4" class="ht26"></td>
							</tr>
							<tr>
								<td class="wd30"></td>


								<td class="other-hotgame"
									onclick="gotomovies('4')">
									<div class="other-hotgame-img">
										<img
											src="images/huwei/huwei1.jpg">
									</div>
									<div class="other-hotgame-title">
										<h2>银河护卫队1</h2>
										<a>了解详情</a>
									</div>
								</td>



								<td class="wd30"></td>


								<td class="other-hotgame"
									onclick="gotomovies('5')">
									<div class="other-hotgame-img">
										<img
											src="images/iron/ironman1.jpg">
									</div>
									<div class="other-hotgame-title">
										<h2>钢铁侠3</h2>
										<a>了解详情</a>
									</div>
								</td>

								<td rowspan="3" class="pdr10"></td>

							</tr>
						</table>
					</div>
					<div>
						<table id="table-hotgame-ff" cellspacing="0" cellpadding="0">
							<tr>
								<td rowspan="3" class="pdr10"></td>
								<td rowspan="3" class="fst-hotgame"
									onclick="gotomovies('6')">
									<div class="fst-hotgame-img">
										<img
											src="images/spider/spider1.jpg">
									</div>
									<div class="fst-hotgame-title">
										<h2>蜘蛛侠：英雄归来</h2>
										<a>了解详情</a>
									</div>
								</td>



								<td class="wd30"></td>


								<td class="other-hotgame"
									onclick="gotomovies('7')">
									<div class="other-hotgame-img">
										<img
											src="images/ant/ant1.jpg">
									</div>
									<div class="other-hotgame-title">
										<h2>蚁人1</h2>
										<a>了解详情</a>
									</div>
								</td>



								<td class="wd30"></td>


								<td class="other-hotgame"
									onclick="gotomovies('8')">
									<div class="other-hotgame-img">
										<img
											src="images/captain/captain1.jpg">
									</div>
									<div class="other-hotgame-title">
										<h2>美国队长3:内战</h2>
										<a>了解详情</a>
									</div>
								</td>
							<tr>
								<td colspan="4" class="ht26"></td>
							</tr>
							<tr>
								<td class="wd30"></td>


								<td class="other-hotgame"
									onclick="gotomovies('9')">
									<div class="other-hotgame-img">
										<img
											src="images/thor/thor1.jpg">
									</div>
									<div class="other-hotgame-title">
										<h2>雷神1</h2>
										<a>了解详情</a>
									</div>
								</td>



								<td class="wd30"></td>


								<td class="other-hotgame"
									onclick="gotomovies('10')">
									<div class="other-hotgame-img">
										<img
											src="images/deadpool/deadpool1.jpg">
									</div>
									<div class="other-hotgame-title">
										<h2>死侍1</h2>
										<a>了解详情</a>
									</div>
								</td>
								<td rowspan="3" class="pdr10"></td>
							</tr>
						</table>
					</div>
				</div>
			</div>


			<p class="ht45"></p>


			<table class="table-title" cellspacing="0" cellpadding="0">
				<tr>
					<td class="title-lab">
						<div></div>
					</td>
					<td class="title-content"><label>最新上架</label></td>
					<td></td>
				</tr>
			</table>
			<p class="ht40"></p>
			<table id="table-newgame" cellspacing="0" cellpadding="0">
				<tr>

					<td class="table-game-item"
						onclick="gotomovies('12')">
						<div class="table-game-item-img">
							<img src="images/avg2/1.jpg">
						</div>
						<div class="table-game-item-title">
							<label class="new-game-name">复仇者联盟2</label> <label
								class="new-game-about">了解电影详情</label>
						</div>
					</td>

					<td></td>


					<td class="table-game-item"
						onclick="gotomovies('11')">
						<div class="table-game-item-img">
							<img
								src="images/ant2/ant1.jpg">
						</div>
						<div class="table-game-item-title">
							<label class="new-game-name">蚁人2</label> <label
								class="new-game-about">了解电影详情</label>
						</div>
					</td>

					<td></td>


					<td class="table-game-item"
						onclick="gotomovies('13')">
						<div class="table-game-item-img">
							<img src="images/avg3/avg1.jpg">
						</div>
						<div class="table-game-item-title">
							<label class="new-game-name">复仇者联盟3</label> 
								 <label
								class="new-game-about">了解电影详情</label>
						</div>
					</td>

					<td></td>


					<td class="table-game-item"
						onclick="gotomovies('14')">
						<div class="table-game-item-img">
							<img
								src="images/deadpool2/deadpool1.jpg">
						</div>
						<div class="table-game-item-title">
							<label class="new-game-name">死侍2</label> <label
								class="new-game-about">了解电影详情</label>
						</div>
					</td>

					<td></td>


					<td class="table-game-item"
						onclick="gotomovies('15')">
						<div class="table-game-item-img">
							<img
								src="images/huwei2/huwei21.jpg">
						</div>
						<div class="table-game-item-title">
							<label class="new-game-name">银河护卫队2</label><label
								class="new-game-about">了解电影详情</label>
						</div>
					</td>


				</tr>
			</table>
			<p class="ht109"></p>
		</div>

	</div>

	<div id="footer">
		<table cellpadding="0" cellspacing="0">
			<tr>
				<td class="ht24"></td>
			</tr>
			<tr>
				<td class="ht14"><a href=""
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
<div id="div_loginform" style="display: none;">
    <table>
        <tr><td colspan="2" class="ht45">
            <input type="text" id="loginName" name="user_name" placeholder="用户名" autocomplete="off" />
        </td></tr>
        <tr><td colspan="2" class="remind-td ht19">
            <label class="colorgreen" style="visibility:hidden;">*用户名由不少于8位的数字加字母组成</label>
        </td></tr>
        <tr><td colspan="2" class="ht45">
            <input type="password" id="loginPassWord" name="password" placeholder="请输入密码" autocomplete="off"/>
        </td></tr>
        <tr><td colspan="2" class="remind-td ht19">
            <label id="loginMsg" class="colorred" style="visibility:hidden;">*密码不匹配</label>
        </td></tr>

        <tr>
            <td>
                   <span class="remember-me-span"><label class="va-checkbox va-item-span"><i class="mt4 mr4 va-checkbox-true"   onClick="SelectCheck(this,0);" ></i>
                       <input type="hidden" name="rememberMe"  value="0" checked="checked" /><span >记住我</span></label></span>
            </td>
            <td class="forget-td"><a onclick="windowOpinion.prototype.forgetPwd();">忘记密码?</a></td>
        </tr>
        <tr>
            <td colspan="2" class="ht32"></td>
        </tr>
        <tr>
            <td colspan="2" id="loginButton" class="submit-td"onclick="loginOpinion.prototype.login();"><a>登录</a></td>
        </tr>
        <tr>
            <td class="other-login-td"><label>其他登录： </label></td>
            <td class="other-login">
                <img src="https://test.anygame.info:443/source/front1.4/images/login/tencent.png" onclick="loginOpinion.prototype.QQtoLogin();">
                <img src="https://test.anygame.info:443/source/front1.4/images/login/wechat.png" onclick="loginOpinion.prototype.weiXinLogin();">
            </td>
        </tr>
        <tr><td colspan="2"></td></tr>
    </table>
</div>
<div id="div_registerform" style="display: none;">
        <table>
            <tr><td colspan="2" class="ht45">
                <input id="registerUserid"  name="user_id" type="text" placeholder="请输入账号" autocomplete="off" />
            </td></tr>
            <tr><td colspan="2" class="remind-td ht19">
                <label id="registerUseridMsg" class="colorgreen">*请输入6-12位字母及数字</label>
            </td></tr>
            <tr><td colspan="2" class="ht45">
                <input id="registerUsername"  name="user_name" type="text" placeholder="请输入用户名" autocomplete="off" />
            </td></tr>
            <tr><td colspan="2" class="remind-td ht19">
                <label id="registerUsernameMsg" class="colorgreen">*请输入6-12位字母及数字</label>
            </td></tr>
            <tr><td colspan="2" class="ht45">
                <input id="registerPsd" name="password" type="password" placeholder="请输入密码" autocomplete="off"  />
            </td></tr>
            <tr><td colspan="2" class="remind-td ht19">
                <label id="registerPsdMsg" class="colorgreen">*请输入6-16位密码</label>
            </td></tr>
            <tr><td colspan="2" class="ht45">
                <input id="registerPsdCheck" type="password" placeholder="请确认密码" autocomplete="off"  />
            </td></tr>
            <tr><td colspan="2" class="remind-td ht19">
                <label id="registerPsdCheckMsg" class="colorgreen">*请再次输入密码</label>
            </td></tr>
            <tr><td colspan="2" class="ht45">
                <input id="registerPhone"  name="phone" type="text" placeholder="请输入手机号" autocomplete="off" />
            </td></tr>
            <tr><td colspan="2" class="ht45">
                <input id="registerCode"  name="Code" type="text" placeholder="请输入手机验证码" autocomplete="off" />
            </td></tr>
            <tr><td colspan="2" class="remind-td ht19">
                <label id="registerCodeCheck" class="colorgreen">*请在一分钟内输入验证码</label>
            </td></tr>
            <tr>
                <td colspan="2"  class="submit-td" onclick="send()"><a>发送验证码</a></td>
            </tr>
            
            <tr><td colspan="2" class="ht12"></td></tr>
            <tr>
                <td colspan="2" id="registerButton" class="submit-td" onclick="loginOpinion.prototype.register();"><a>注册</a></td>
            </tr>
        </table>
</div>
<div id="div_bindform" style="display: none;">
    <table>
        <input id="bindAccount" name="account" type="hidden"/>
        <input id="bindPassword" name="password" type="hidden"/>
        <tr><td colspan="2" class="ht45">
            <input id="bindPhone" name="phone" type="text" placeholder="手机号" autocomplete="off" />
        </td></tr>
        <tr><td colspan="2" class="remind-td ht19">
            <label id="bindPhoneMsg" class="colorred">*请输入正确的手机号码</label>
        </td></tr>
        <tr>
            <td class="ht45">
                <input id="bindKaptchaCode" class="wd253" type="text" name="kaptchaCode" placeholder="请输入图形验证码" autocomplete="off"  />
            </td>
            <td class="wd94" style="text-align: right;" >
                <img id="kaptchaImage"  src="https://test.anygame.info:443/pangyu/login/image.do" class="cursor" onclick="loginOpinion.prototype.getNewBindKaptcha(this)" height="39">
            </td>
        </tr>
        <tr><td colspan="2" class="remind-td ht19">
            <label id="bindKaptchaCodeMsg" class="colorred">*请输入图形验证码</label>
        </td></tr>
        <tr>
            <td class="ht45">
                <input type="text" name="validateCode" class="wd253"  placeholder="请输入短信验证码" autocomplete="off"  />
            </td>
            <td style="text-align: right;">
                <a id="bindValidatecode" class="validatecode" >获取验证码</a>
            </td>
        </tr>
        <tr><td colspan="2" class="remind-td ht19">
            <label class="colorred" style="visibility:hidden;">*验证码错误/绑定失败等错误提醒</label>
        </td></tr>
        <tr><td colspan="2" class="ht15"></td></tr>
        <tr>
            <td colspan="2" id="bindButton" class="submit-td" ><a >确定</a></td>
        </tr>
    </table>
</div>
<div id="div_forgetform" style="display: none;">
    <table>
        <tr><td colspan="2" class="ht45">
            <input id="forgetPhone" name="phone" type="text" placeholder="账号/手机号" autocomplete="off" />
        </td></tr>
        <tr><td colspan="2" class="remind-td ht19">
            <label id="forgetPhoneMsg" class="colorgreen"></label>
        </td></tr>
        <tr>
            <td class="ht45">
                <input id="forgetKaptchaCode" class="wd253" type="text" name="kaptchaCode" placeholder="请输入图形验证码" autocomplete="off" />
            </td>
            <td class="wd94">
                <img id="forgetKaptchaImage" src="https://test.anygame.info:443/pangyu/login/image.do" class="cursor"  onclick="loginOpinion.prototype.getNewForgetKaptcha(this)">
            </td>
        </tr>
        <tr><td colspan="2" class="remind-td ht19">
            <label id="forgetKaptchaCodeMsg" class="colorred"></label>
        </td></tr>
        <tr>
            <td class="ht45">
                <input type="text"  class="wd253" name="validateCode" placeholder="请输入短信验证码" autocomplete="off"  />
            </td>
            <td >
                <a id="forgetValidatecode" class="validatecode" onclick="loginOpinion.prototype.getForgetVerfiedCode(this);">获取验证码</a>
            </td>
        </tr>
        <tr><td colspan="2" class="remind-td ht19">
            <label class="colorred" style="visibility:hidden;">*验证码错误</label>
        </td></tr>
        <tr><td colspan="2" class="ht15"></td></tr>
        <tr>
            <td colspan="2" id="forgetButton" class="submit-td" ><a>下一步</a></td>
        </tr>
    </table>
</div>
<div id="div_resetform" style="display: none;">
    <table>
        <input id="resetAccount" name="account" type="hidden"/>
        <tr><td colspan="2" class="ht45">
            <input id="resetPsd"  name="password" type="password" placeholder="请输入新密码" autocomplete="off" />
        </td></tr>
        <tr><td colspan="2" class="remind-td ht19">
            <label id="resetPsdMsg" class="colorgreen">*请输入6-16位密码</label>
        </td></tr>

        <tr><td colspan="2" class="ht45">
            <input id="resetPsdCheck" type="password" placeholder="请输入确认密码" autocomplete="off" />
        </td></tr>
        <tr><td colspan="2" class="remind-td ht19">
            <label id="resetPsdCheckMsg" class="colorgreen">*请再次输入密码</label>
        </td></tr>
        <tr><td colspan="2" class="ht15"></td></tr>
        <tr>
            <td colspan="2" id="resetButton" class="submit-td"><a>确定</a></td>
        </tr>
    </table>
</div>


	<script src="layui/layui.js"></script>
	<script>
layui.use('carousel', function(){
  var carousel = layui.carousel;
  //建造实例
  carousel.render({
    elem: '#test1'
    ,width: '100%' 
    ,height:'600px'
    //设置容器宽度
    ,arrow: 'always' //始终显示箭头
    ,indicator:'outside'
    //,anim: 'updown' //切换动画方式
  });
  carousel.render({
	    elem: '#test2'
	    ,width: '100%' 
	    ,height:'509px'
	    //设置容器宽度
	    ,arrow: 'always' //始终显示箭头
	    ,indicator:'outside'
	    //,anim: 'updown' //切换动画方式
	  });
});

</script>
</body>
</html>