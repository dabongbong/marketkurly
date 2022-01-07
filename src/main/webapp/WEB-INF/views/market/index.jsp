<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>

<link rel="icon" href="/kurly.jpeg">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#000000">
<meta name="description"  content="Web site created using create-react-app">
<link rel="apple-touch-icon" href="/kurly.jpeg">
<link rel="manifest" href="/manifest.json">
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
<link href="/static/css/2.165ff965.chunk.css" rel="stylesheet">
<link href="/static/css/main.2df57a8d.chunk.css" rel="stylesheet">
<style data-styled="active" data-styled-version="5.3.0"></style>
<style data-jss="" data-meta="MuiBadge">
.MuiBadge-root {
	display: inline-flex;
	position: relative;
	flex-shrink: 0;
	vertical-align: middle;
}

.MuiBadge-badge {
	height: 20px;
	display: flex;
	padding: 0 6px;
	z-index: 1;
	position: absolute;
	flex-wrap: wrap;
	font-size: 0.75rem;
	min-width: 20px;
	box-sizing: border-box;
	transition: transform 225ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
	align-items: center;
	font-family: "Roboto", "Helvetica", "Arial", sans-serif;
	font-weight: 500;
	line-height: 1;
	align-content: center;
	border-radius: 10px;
	flex-direction: row;
	justify-content: center;
}

.MuiBadge-colorPrimary {
	color: #fff;
	background-color: #3f51b5;
}

.MuiBadge-colorSecondary {
	color: #fff;
	background-color: #f50057;
}

.MuiBadge-colorError {
	color: #fff;
	background-color: #f44336;
}

.MuiBadge-dot {
	height: 8px;
	padding: 0;
	min-width: 8px;
	border-radius: 4px;
}

.MuiBadge-anchorOriginTopRightRectangle {
	top: 0;
	right: 0;
	transform: scale(1) translate(50%, -50%);
	transform-origin: 100% 0%;
}

.MuiBadge-anchorOriginTopRightRectangle.MuiBadge-invisible {
	transform: scale(0) translate(50%, -50%);
}

.MuiBadge-anchorOriginTopRightRectangular {
	top: 0;
	right: 0;
	transform: scale(1) translate(50%, -50%);
	transform-origin: 100% 0%;
}

.MuiBadge-anchorOriginTopRightRectangular.MuiBadge-invisible {
	transform: scale(0) translate(50%, -50%);
}

.MuiBadge-anchorOriginBottomRightRectangle {
	right: 0;
	bottom: 0;
	transform: scale(1) translate(50%, 50%);
	transform-origin: 100% 100%;
}

.MuiBadge-anchorOriginBottomRightRectangle.MuiBadge-invisible {
	transform: scale(0) translate(50%, 50%);
}

.MuiBadge-anchorOriginBottomRightRectangular {
	right: 0;
	bottom: 0;
	transform: scale(1) translate(50%, 50%);
	transform-origin: 100% 100%;
}

.MuiBadge-anchorOriginBottomRightRectangular.MuiBadge-invisible {
	transform: scale(0) translate(50%, 50%);
}

.MuiBadge-anchorOriginTopLeftRectangle {
	top: 0;
	left: 0;
	transform: scale(1) translate(-50%, -50%);
	transform-origin: 0% 0%;
}

.MuiBadge-anchorOriginTopLeftRectangle.MuiBadge-invisible {
	transform: scale(0) translate(-50%, -50%);
}

.MuiBadge-anchorOriginTopLeftRectangular {
	top: 0;
	left: 0;
	transform: scale(1) translate(-50%, -50%);
	transform-origin: 0% 0%;
}

.MuiBadge-anchorOriginTopLeftRectangular.MuiBadge-invisible {
	transform: scale(0) translate(-50%, -50%);
}

.MuiBadge-anchorOriginBottomLeftRectangle {
	left: 0;
	bottom: 0;
	transform: scale(1) translate(-50%, 50%);
	transform-origin: 0% 100%;
}

.MuiBadge-anchorOriginBottomLeftRectangle.MuiBadge-invisible {
	transform: scale(0) translate(-50%, 50%);
}

.MuiBadge-anchorOriginBottomLeftRectangular {
	left: 0;
	bottom: 0;
	transform: scale(1) translate(-50%, 50%);
	transform-origin: 0% 100%;
}

.MuiBadge-anchorOriginBottomLeftRectangular.MuiBadge-invisible {
	transform: scale(0) translate(-50%, 50%);
}

.MuiBadge-anchorOriginTopRightCircle {
	top: 14%;
	right: 14%;
	transform: scale(1) translate(50%, -50%);
	transform-origin: 100% 0%;
}

.MuiBadge-anchorOriginTopRightCircle.MuiBadge-invisible {
	transform: scale(0) translate(50%, -50%);
}

.MuiBadge-anchorOriginTopRightCircular {
	top: 14%;
	right: 14%;
	transform: scale(1) translate(50%, -50%);
	transform-origin: 100% 0%;
}

.MuiBadge-anchorOriginTopRightCircular.MuiBadge-invisible {
	transform: scale(0) translate(50%, -50%);
}

.MuiBadge-anchorOriginBottomRightCircle {
	right: 14%;
	bottom: 14%;
	transform: scale(1) translate(50%, 50%);
	transform-origin: 100% 100%;
}

.MuiBadge-anchorOriginBottomRightCircle.MuiBadge-invisible {
	transform: scale(0) translate(50%, 50%);
}

.MuiBadge-anchorOriginBottomRightCircular {
	right: 14%;
	bottom: 14%;
	transform: scale(1) translate(50%, 50%);
	transform-origin: 100% 100%;
}

.MuiBadge-anchorOriginBottomRightCircular.MuiBadge-invisible {
	transform: scale(0) translate(50%, 50%);
}

.MuiBadge-anchorOriginTopLeftCircle {
	top: 14%;
	left: 14%;
	transform: scale(1) translate(-50%, -50%);
	transform-origin: 0% 0%;
}

.MuiBadge-anchorOriginTopLeftCircle.MuiBadge-invisible {
	transform: scale(0) translate(-50%, -50%);
}

.MuiBadge-anchorOriginTopLeftCircular {
	top: 14%;
	left: 14%;
	transform: scale(1) translate(-50%, -50%);
	transform-origin: 0% 0%;
}

.MuiBadge-anchorOriginTopLeftCircular.MuiBadge-invisible {
	transform: scale(0) translate(-50%, -50%);
}

.MuiBadge-anchorOriginBottomLeftCircle {
	left: 14%;
	bottom: 14%;
	transform: scale(1) translate(-50%, 50%);
	transform-origin: 0% 100%;
}

.MuiBadge-anchorOriginBottomLeftCircle.MuiBadge-invisible {
	transform: scale(0) translate(-50%, 50%);
}

.MuiBadge-anchorOriginBottomLeftCircular {
	left: 14%;
	bottom: 14%;
	transform: scale(1) translate(-50%, 50%);
	transform-origin: 0% 100%;
}

.MuiBadge-anchorOriginBottomLeftCircular.MuiBadge-invisible {
	transform: scale(0) translate(-50%, 50%);
}

.MuiBadge-invisible {
	transition: transform 195ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
}
</style>
</head>
<body>
	<div id="root">
		<div width="1050px" height="37px" display="block"  class="sc-bdnxRM elcips">
			<div width="auto" height="37px" display="flex" 	class="sc-bdnxRM jhbwZd">
				<p color="#5f0080" width="" class="sc-hKFxyN FYSAP">회원가입 &nbsp; &nbsp; |</p>
				<p color="#262626" width="" class="sc-hKFxyN loxJKU">로그인 |</p>
				<p color="" width="" class="sc-hKFxyN biVNBb">고객센터 ▼</p>
			</div>
		</div>
		<div width="1050px" height="" display="block" class="sc-bdnxRM fdEFJG">
			<div width="100%" height="" display="block" class="sc-bdnxRM hZWkYm">
				<div src="https://res.kurly.com/images/marketkurly/logo/logo_x2.png" width="105px" height="80px" class="sc-eCApnc kBdtco"></div>
			</div>
		</div>
		<div width="1050px" height="56px" display="block" class="sc-bdnxRM iGbWMH">
			<div width="100%" height="" display="flex" class="sc-bdnxRM sUHnS">
				<div width="16px" height="" display="block" class="sc-bdnxRM dZIbxH">
					<div src="https://res.kurly.com/pc/service/common/1908/ico_gnb_all_off.png" width="16px" height="14px" class="sc-eCApnc coTGia"></div>
				</div>
				<div width="168px" height="" display="block" class="sc-bdnxRM ddboNo">
					<p color="" width="" class="sc-hKFxyN hzIcLF">전체 카테고리</p>
				</div>
				<div width="124px" height="" display="block" class="sc-bdnxRM jMdKQk">
					<p color="" width="" class="sc-hKFxyN hzIcLF">신상품</p>
				</div>
				<div width="116px" height="" display="block" class="sc-bdnxRM bFimWZ">
					<p color="" width="" class="sc-hKFxyN hzIcLF">베스트</p>
				</div>
				<div width="124px" height="" display="block" class="sc-bdnxRM jMdKQk">
					<p color="" width="" class="sc-hKFxyN hzIcLF">알뜰쇼핑</p>
				</div>
				<div width="116px" height="" display="block" class="sc-bdnxRM bFimWZ">
					<p color="" width="" class="sc-hKFxyN hzIcLF">특가/혜택</p>
				</div>
				<div width="242px" height="" display="block" class="sc-bdnxRM dwRZZe">
					<input width="100%" height="36px" color="#666" type="text" placeholder="건강기원 새해맞이 보양식 레시피" class="sc-dlnjwi gYsZNI" value="">
				</div>
				<div width="36px" height="" display="block" class="sc-bdnxRM jRMbbE">
					<div src="https://hyunjung.s3.ap-northeast-2.amazonaws.com/pngwing.com.png" width="36px" height="36px" class="sc-eCApnc fryMnz"></div>
				</div>
				<div width="36px" height="" display="block" class="sc-bdnxRM hKYoCC">
					<span class="MuiBadge-root">
						<div src="https://res.kurly.com/pc/service/common/2011/ico_cart.svg" width="36px" height="36px" class="sc-eCApnc hPSyif"></div>
						<span class="MuiBadge-badge MuiBadge-anchorOriginTopRightRectangle MuiBadge-colorSecondary MuiBadge-invisible">0</span></span>
				</div>
			</div>
		</div>
		<div>
			<div class="slick-slider slick-initialized" dir="ltr">
				<button type="button" data-role="none" class="slick-arrow slick-prev" style="display: block;">Previous</button>
				<div class="slick-list">
					<div class="slick-track" 	style="width: 8288px; opacity: 1; transform: translate3d(-1184px, 0px, 0px);">
						<div data-index="-1" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1184px;">
							<div>
								<div tabindex="-1" style="width: 100%; display: inline-block;">
									<img src="/static/media/kurly3.4e5892f2.png" alt="/static/media/kurly3.4e5892f2.png" class="sc-gKAaRy hydYaP">
								</div>
							</div>
						</div>
						<div data-index="0" class="slick-slide slick-active slick-current"
							tabindex="-1" aria-hidden="false"
							style="outline: none; width: 1184px;">
							<div>
								<div tabindex="-1" style="width: 100%; display: inline-block;">
									<img src="/static/media/kurly1.4e689179.png"
										alt="/static/media/kurly1.4e689179.png"
										class="sc-gKAaRy hydYaP">
								</div>
							</div>
						</div>
						<div data-index="1" class="slick-slide" tabindex="-1"
							aria-hidden="true" style="outline: none; width: 1184px;">
							<div>
								<div tabindex="-1" style="width: 100%; display: inline-block;">
									<img src="/static/media/kurly2.8d789930.png"
										alt="/static/media/kurly2.8d789930.png"
										class="sc-gKAaRy hydYaP">
								</div>
							</div>
						</div>
						<div data-index="2" class="slick-slide" tabindex="-1"
							aria-hidden="true" style="outline: none; width: 1184px;">
							<div>
								<div tabindex="-1" style="width: 100%; display: inline-block;">
									<img src="/static/media/kurly3.4e5892f2.png"
										alt="/static/media/kurly3.4e5892f2.png"
										class="sc-gKAaRy hydYaP">
								</div>
							</div>
						</div>
						<div data-index="3" tabindex="-1" class="slick-slide slick-cloned"
							aria-hidden="true" style="width: 1184px;">
							<div>
								<div tabindex="-1" style="width: 100%; display: inline-block;">
									<img src="/static/media/kurly1.4e689179.png"
										alt="/static/media/kurly1.4e689179.png"
										class="sc-gKAaRy hydYaP">
								</div>
							</div>
						</div>
						<div data-index="4" tabindex="-1" class="slick-slide slick-cloned"
							aria-hidden="true" style="width: 1184px;">
							<div>
								<div tabindex="-1" style="width: 100%; display: inline-block;">
									<img src="/static/media/kurly2.8d789930.png"
										alt="/static/media/kurly2.8d789930.png"
										class="sc-gKAaRy hydYaP">
								</div>
							</div>
						</div>
						<div data-index="5" tabindex="-1" class="slick-slide slick-cloned"
							aria-hidden="true" style="width: 1184px;">
							<div>
								<div tabindex="-1" style="width: 100%; display: inline-block;">
									<img src="/static/media/kurly3.4e5892f2.png"
										alt="/static/media/kurly3.4e5892f2.png"
										class="sc-gKAaRy hydYaP">
								</div>
							</div>
						</div>
					</div>
				</div>
				<button type="button" data-role="none"
					class="slick-arrow slick-next" style="display: block;">
					Next</button>
				<ul class="slick-dots" style="display: block;">
					<li class="slick-active"><button>1</button></li>
					<li class=""><button>2</button></li>
					<li class=""><button>3</button></li>
				</ul>
			</div>
			<div class="sc-iCoGMd kMthTr">이 상품 어때요?</div>
			<div style="width: 1050px; margin: 0px auto; place-items: center;">
				<div class="slick-slider slick-initialized">
					<div class="slick-list">
						<div class="slick-track"
							style="opacity: 1; transform: translate3d(0px, 0px, 0px); transition: -webkit-transform 5000ms linear 0s;"></div>
					</div>
				</div>
			</div>
			<div width="100%" height="" display="block" class="sc-bdnxRM dnhyPi">
				<div class="sc-iCoGMd kMthTr">지금 가장 핫한 상품</div>
				<div class="sc-jSFjdj jcTaHb"></div>
			</div>
		</div>
	</div>
	<script>!function(e){function r(r){for(var n,i,a=r[0],c=r[1],l=r[2],s=0,p=[];s<a.length;s++)i=a[s],Object.prototype.hasOwnProperty.call(o,i)&&o[i]&&p.push(o[i][0]),o[i]=0;for(n in c)Object.prototype.hasOwnProperty.call(c,n)&&(e[n]=c[n]);for(f&&f(r);p.length;)p.shift()();return u.push.apply(u,l||[]),t()}function t(){for(var e,r=0;r<u.length;r++){for(var t=u[r],n=!0,a=1;a<t.length;a++){var c=t[a];0!==o[c]&&(n=!1)}n&&(u.splice(r--,1),e=i(i.s=t[0]))}return e}var n={},o={1:0},u=[];function i(r){if(n[r])return n[r].exports;var t=n[r]={i:r,l:!1,exports:{}};return e[r].call(t.exports,t,t.exports,i),t.l=!0,t.exports}i.e=function(e){var r=[],t=o[e];if(0!==t)if(t)r.push(t[2]);else{var n=new Promise((function(r,n){t=o[e]=[r,n]}));r.push(t[2]=n);var u,a=document.createElement("script");a.charset="utf-8",a.timeout=120,i.nc&&a.setAttribute("nonce",i.nc),a.src=function(e){return i.p+"static/js/"+({}[e]||e)+"."+{3:"7d066803"}[e]+".chunk.js"}(e);var c=new Error;u=function(r){a.onerror=a.onload=null,clearTimeout(l);var t=o[e];if(0!==t){if(t){var n=r&&("load"===r.type?"missing":r.type),u=r&&r.target&&r.target.src;c.message="Loading chunk "+e+" failed.\n("+n+": "+u+")",c.name="ChunkLoadError",c.type=n,c.request=u,t[1](c)}o[e]=void 0}};var l=setTimeout((function(){u({type:"timeout",target:a})}),12e4);a.onerror=a.onload=u,document.head.appendChild(a)}return Promise.all(r)},i.m=e,i.c=n,i.d=function(e,r,t){i.o(e,r)||Object.defineProperty(e,r,{enumerable:!0,get:t})},i.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},i.t=function(e,r){if(1&r&&(e=i(e)),8&r)return e;if(4&r&&"object"==typeof e&&e&&e.__esModule)return e;var t=Object.create(null);if(i.r(t),Object.defineProperty(t,"default",{enumerable:!0,value:e}),2&r&&"string"!=typeof e)for(var n in e)i.d(t,n,function(r){return e[r]}.bind(null,n));return t},i.n=function(e){var r=e&&e.__esModule?function(){return e.default}:function(){return e};return i.d(r,"a",r),r},i.o=function(e,r){return Object.prototype.hasOwnProperty.call(e,r)},i.p="/",i.oe=function(e){throw console.error(e),e};var a=this.webpackJsonpkurly_client=this.webpackJsonpkurly_client||[],c=a.push.bind(a);a.push=r,a=a.slice();for(var l=0;l<a.length;l++)r(a[l]);var f=c;t()}([])</script>
	<script src="/static/js/2.190e9700.chunk.js"></script>
	<script src="/static/js/main.9b2dad5a.chunk.js"></script>
</body>
</html>