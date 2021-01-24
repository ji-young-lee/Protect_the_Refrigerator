<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

   
<header >
   <nav class="navbar navbar-expand-md fixed-top navbar-light " style="background-color:rgba(255,255,0,0.1);">
      <a class="navbar-brand" href="#" >
      
   <font color="#FF9B00"><strong>AppleMango</strong><img src="resources/img/mango.png" width="30" height="30" ></font></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse"
         data-target="#navbarCollapse" aria-controls="navbarCollapse"
         aria-expanded="false" aria-label="Toggle navigation">
        
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
         <ul class="navbar-nav mr-auto">
        
        
        
            <li class="nav-item active"><a class="nav-link" href="<c:url value="/"/>">  <font color="#00008C">Home </font><span class="sr-only"></span>
            </a></li>
            <li class="nav-item"><a class="nav-link" href="<c:url value="/logins"/>"><font color="#00008C">Login</font></a></li>
            <li class="nav-item"><a class="nav-link" href="<c:url value="/registers"/>"><font color="#00008C">RegisterRFT</font></a></li>
            
         </ul>
         <!-- 
         <form class="form-inline mt-2 mt-md-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search"
               aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
         </form> -->
         
          <hr  size="5px;">
      </div>
   </nav>
</header>