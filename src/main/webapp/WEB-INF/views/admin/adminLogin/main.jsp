<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>메인페이지 테스트</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="main.css" />
<script src="main.js"></script>

<style>
body{
margin: 0;
padding: 0;
background-color: #eaf5ee;
}
ul{
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%, -50%);
margin: 0;
padding: 0;
display: flex;

}
ul li{
list-style: none;
margin: 0 40px;

}
ul li .fa{
font-size: 40px;
color: #262626;
line-height: 80px;
transition: .5s;

}
ul li a{
position: relative;
display: block;
width: 80px;
height: 80px;
background-color: #fff;
text-align: center;
transform: perspective(100px) rotate(-30deg) skew(25deg) translate(0,0);
transition: .5s;
box-shadow: -20px 20px 10px rgb(0, 0, 0, 0.5);
}
ul li a::before{
content: "";
position: absolute;
top: 10px;
left: -20px;
height: 100%;
width: 20px;
background: #b1b1b1;
transition: .5s;
transform: rotate(0deg) skewY(-45deg);
}
ul li a::after{
content: "";
position: absolute;
top: 80px;
left: -11px;
height: 20px;
width: 100%;
background: #b1b1b1;
transition: .5s;
transform: rotate(0deg) skewX(-45deg);
}
ul li a:hover{
transform: perspective(1000px) rotate(-30deg) skew(25deg) translate(20px, -20px);
box-shadow: -50px 50px 50px rgb(0, 0, 0, 0.5);
}
ul li:hover .fa{
color: #fff;
}
ul li a:hover{
transform: perspective(1000px) rotate(-30deg) skew(25deg) translate(20px, -20px);
box-shadow: -50px 50px 50px rgb(0, 0, 0, 0.5);
}
ul li:hover:nth-child(1) a{
background: #78c485;
}

ul li:hover:nth-child(1) a:before{
background: #8fe39e;
}
ul li:hover:nth-child(1) a:after{
background: #80cf8e;
}
ul li:hover:nth-child(2) a{
background: #78c485;
}

ul li:hover:nth-child(2) a:before{
background: #8fe39e;
}
ul li:hover:nth-child(2) a:after{
background: #80cf8e;
}

ul li:hover:nth-child(3) a{
background: #dd4b39;
}

ul li:hover:nth-child(3) a:before{
background: #c13929;
}
ul li:hover:nth-child(3) a:after{
background: #e83322;
}

ul li:hover:nth-child(4) a{
background: #78c485;
}

ul li:hover:nth-child(4) a:before{
background: #8fe39e;
}
ul li:hover:nth-child(4) a:after{
background: #80cf8e;
}

ul li:hover:nth-child(5) a{
background: #78c485;
}

ul li:hover:nth-child(5) a:before{
background: #8fe39e;
}
ul li:hover:nth-child(5) a:after{
background: #80cf8e;
}
</style>
</head>
<body>
<ul>

<li><a href="/admin/adminLogin/logout"><i class="fa fa-sign-out" aria-hidden="true"></i></a></li><!-- 로그아웃 -->
<li><a href="/admin/adminUser/userPage"><i class="fa fa-address-card-o" aria-hidden="true"></i></a></li><!-- 회원관리 -->
<li><a href="/admin/adminBoard/adminNotice"><i class="fa fa-exclamation-circle" aria-hidden="true"></i></a></li><!-- 공지사항 -->
<li><a href="/admin/adminBoard/bestVolunteer"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a></li><!-- 우수봉사자 -->
<li><a href="/admin/adminQna/qnaMain"><i class="fa fa-quora" aria-hidden="true"></i></a></li><!-- QnA -->
</ul>
