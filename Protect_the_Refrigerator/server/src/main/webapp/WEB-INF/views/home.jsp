<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<head>
<style>
@font-face{

font-family:"SDMiSaeng";
src:crl("resources/fonts/SDMiSaeng.ttf") format("truetype");
font-style="normal";
font-weight="normal";

}


body{


font-family:"SDMiSaeng";
font-size: 30px;




}

</style>


</head>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
   <div style="margin-top: 20px">
      <div class="nav1">
         <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
         </ol>
         <div class="carousel-inner">
            <!--coursel 첫번째-->
            <div class="carousel-item active">
               <svg class="bd-placeholder-img" width="100%" height="100%"
                  xmlns="http://www.w3.org/2000/svg"
                  preserveAspectRatio="xMidYMid slice" focusable="false" role="img">
               
               <rect width="100%" height="100%" fill="   #F4A460" />
                <img src="resources/img/tomato2.jpg"
                     style="width: 100%; height: 100%;"></svg>
               <div class="container">
                  <p class="bg-info">
                  <div class="carousel-caption text-left">




                     

                     <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
                     <div class="col-xl-9 mx-auto">
                        <h1 class="mb-5"><div style="color: #FFD732; font-family: 'Nanum Myeongjo', serif;">냉장고
                           속 식재료를 스마트하게 관리하다.</div>
                     </h1></div>
                     <br>
                     <link   href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap"   rel="stylesheet">
                     <p>
                     <div
                        style="color: #f9f9f9; font-family: 'Nanum Myeongjo', serif;">

                        - 냉장고 속 식재료를 잊더라도, 유통기한에 가까워지면 이메일로 <strong>"알림 기능"</strong> 제공<br>
                        - 냉장고 속 식재료를 분석해 당신만을 위한 맞춤형 퍼스널 푸드 <strong>"레시피"</strong> 제공
                     </div>
                     </p>

                  </div>
               </div>
            </div>
            <!--coursel 두번째-->
            <div class="carousel-item">
               <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img">
            
               <rect width="100%" height="100%" fill="#f87534" />
               <img src="resources/img/frenchtoast.png" style="width: 100%; height: 100%;">
               </svg>
            </span>
               </svg>
               <div class="container">
                  <div class="carousel-caption  text-right">

                     <link   href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
                     
                        <div class="col-xl-9 mx-auto">
                        <h1 class="mb-5"><div style="color: #F56E6E; font-family: 'Nanum Myeongjo', serif;">
                        당신만을 위한 냉장고 식재료 알람 서비스</div></h1>
                     </div>
                     
                     <br>

                     <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap"   rel="stylesheet">
                     <p>
                     <div
                        style="color: #fff9bd; font-family: 'Nanum Myeongjo', serif;">

                        -웹페이지 접속을 통해 냉장고 내부의 <strong>"식품 정보"</strong>와 <strong>"사진"</strong>
                        제공<br> -식품의 유통기한이 임박 또는 초과 시 <strong>"메일 알림 기능"</strong> 제공<br>
                        </p>
                     </div>
                  </div>
               </div>
            </div>

            <!--coursel 세번째-->
            <div class="carousel-item">
               <svg class="bd-placeholder-img" width="100%" height="100%"
                  xmlns="http://www.w3.org/2000/svg"
                  preserveAspectRatio="xMidYMid slice" focusable="false" role="img">
               <rect width="100%" height="100%" fill="#e43939" />
               
                 <img src="resources/img/freshthings.jpg"
                     style="width: 100%; height: 100%;"></svg>
               <div class="container">
                  <div class="carousel-caption text-center">

                        <link   href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
                     
                     <div class="col-xl-9 mx-auto"><body>
                        <h1 class="mb-5"><div style="color: #E56D29;font-family: 'Nanum Myeongjo', serif;">
                        먹는게 제일 중요한 당신을 위한 추천 레시피</div></h1></body></div>
                     

                     <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
                     <p>
                     <div style="color: #FFF0F0; font-family: 'Nanum Myeongjo', serif;">
                        -냉장고 속 식재료를 파악하여 당신의 <strong>"퍼스널 푸드"</strong> 분석<br> -퍼스널
                        푸드로 통해 도출된 <strong> " 취향 맞춤형 레시피"</strong> 제공
                        </p> </div>

                  </div>
               </div>
            </div>
         </div>
         <!--버튼 이전 다음-->
         <a class="carousel-control-prev" href="#myCarousel" role="button"
            data-slide="prev"> <span class="carousel-control-prev-icon"
            aria-hidden="true"></span> <span class="sr-only">Previous</span>
         </a> <a class="carousel-control-next" href="#myCarousel" role="button"
            data-slide="next"> <span class="carousel-control-next-icon"
            aria-hidden="true"></span> <span class="sr-only">Next</span>
         </a>
      </div>
   </div>

   <!-- Marketing messaging and featurettes
  ================================================== -->
   <!-- Wrap the rest of the page in another container to center all the content. -->
   
   
   
      <!-- Marketing messaging and featurettes
      ================================================== -->
      <!-- Wrap the rest of the page in another container to center all the content. -->
   
   

   
   
   
   <!--
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">AppleMango</h1>
    <p class="lead">당신의 푸드 취향에 applemango를 더하다.
                applemango의 이야기가 궁금하다면?</p>
  </div>
</div>-->
<link href="https://fonts.googleapis.com/css2?family=Yeon+Sung&display=swap" rel="stylesheet">
   
   <div class="media">
      <div class="container clearfix"><img src="resources/img/ref2.jpg" class="align-self-end mr-3" style="max-width=100%" height=auto";
         alt="...">
      <div class="media-body">
         <div style="font-family: 'Yeon Sung', cursive;">
         <h5 class="mt-5">What's in your Refrigerator</h5>
         <p>
            당신의 현재 식재료 재고가 궁금하다면?<br> 당신의 식재료 쇼핑에 작은 특별함을 더하다.
         </p>
         <a href="<c:url value="/infridge"/>" role="button"
            class="btn btn-outline-success btn-lg"> >> 냉장고 내부 </a>

         <h5 class="mt-5">All of Recipe</h5>
         <p>
            다른 레시피를 알고싶다면? <br> applemango가 제안하는 전체 레시피
         </p>
         <a href="<c:url value="/totalRecipe"/>" role="button"
            class="btn btn-outline-warning btn-lg"> >> 전체 레시피 </a>

         <h5 class="mt-5">Recipe only for you</h5>
         <p>
            당신의 푸드 취향에 레시피를 더하다.<br> applemango는 당신만을 위한 레시피를 씁니다.
         </p>
         <a href="<c:url value="/totalRecommend"/>" role="button"
            class="btn btn-outline-info btn-lg"> >> 개인 맞춤 레시피 </a>

      </div>

   </div>
</div>
</div>
</div>
</p>

</div>


<footer class="container">
   <p class="mt-5 mb-3 text-muted">
   <div class="nav2">
      <p class="float-right">
         <a href="#">Back to top</a>
      </p>
      <p>
         &copy; 2020 graduate project by AppleMango. &middot; <a href="#">Privacy</a>
         &middot; <a href="#">Terms</a>
      </p>

   </div>
   </p>
</footer>


</div>




</div>

