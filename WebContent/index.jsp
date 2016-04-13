<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.detroitipsum.IpsumGenerator" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  <title>Detroit Ipsum Generator</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>
<body>
<a href="https://github.com/jeseekia/detroitipsum"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://camo.githubusercontent.com/652c5b9acfaddf3a9c326fa6bde407b87f7be0f4/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f6f72616e67655f6666373630302e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_orange_ff7600.png"></a>
  <nav class="light-blue lighten-1" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" href="#" class="brand-logo">Detroit Ipsum</a>
      <ul class="right hide-on-med-and-down">
        <%--<li><a href="#">Detroit Tech Blog</a></li>--%>
      </ul>

      <ul id="nav-mobile" class="side-nav">
        <%--<li><a href="#">Detroit Tech Blog</a></li>--%>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
  <div class="section no-pad-bot" id="index-banner">
    <div class="container">
      <br><br>
      <h1 class="header center orange-text">Detroit Ipsum Generator</h1>
      <div class="row center">
        <h5 class="header col s12 light">A Detroit-themed lorem ipsum generator built with love by a native Detroiter.</h5>
      </div>
      <div class="row center">
        <a href="#" id="download-button" class="btn-large waves-effect waves-light orange">Get Started</a>
      </div>
      <br><br>

    </div>
  </div>

  <div class="container">
     <div class="row">
      <div class="col s12 center">
        <div class="card-panel light-blue lighten-1">
          <span class="white-text">You can select the number of paragraphs you would like, as well as the size for your paragraphs.</span>
          <br><br>
          <div class="container">
  	<div class="row">
  		<div class="col s12">
	         <form method="post" action="index.jsp" class="col s12 center" id="ipsumForm">
	            <div class="row">

    						<div class="input-field col s6 white-text">
    						    <select name="size" required>
<!--     						      <option value=" " disabled selected>Choose the size of paragraphs</option>
 -->    						  	  <option value="small">Small</option>
    						      <option value="medium">Medium</option>
    						      <option value="large">Large</option>
    						    </select>
    						    <label>Select size of paragraphs</label>
    						 </div>

      	          			<div class="input-field col s6 white-text">
      						    <select name="numParagraphs" required>
<!--       						      <option value=" " selected>Choose the number of paragraphs</option>
 -->      						      <option value="1">1</option>
      						      <option value="2">2</option>
      						      <option value="3">3</option>
      						      <option value="4">4</option>
      						      <option value="5">5</option>
      						      <option value="6">6</option>
      						      <option value="7">7</option>
      						    </select>
      						    <label>Select number of paragraphs</label>
      						 </div>
	          		</div>
	          		<div class="row">
  	          	    	<div class="input-field col s12">
  	          		       <input type="submit">
	          		    </div>
	          		</div>
	          	</form>
  		</div>
  	</div>
  </div>





        </div>
      </div>
    </div>
  </div>

  <div class="container light-blue lighten-1">
  	<div class="row">
  		<div class="col s12">
  			<div class="container">
                <c:if test="${pageContext.request.method=='POST'}">
                    <%
                        String[] paragraphs = IpsumGenerator.ipsumParagraph(request.getParameter("size"),request.getParameter("numParagraphs"));
                        request.setAttribute("paragraphs", paragraphs);
                    %>
                    <c:forEach var="paragraph" items="${paragraphs}">
                        <!-- Implement vertical alignment if possible -->
                        <p class="white-text center-align" id="ipsum-text">
                            <c:out value="${paragraph}" />

                        </p>
                    </c:forEach>
                </c:if>

  				
  			</div>
  		</div>
  	</div>
  </div>

  


<!--   <div class="container">
    <div class="section">

      <!--   Icon Section   --
      <div class="row">
        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center light-blue-text"><i class="material-icons">flash_on</i></h2>
            <h5 class="center">Speeds up development</h5>

            <p class="light">We did most of the heavy lifting for you to provide a default stylings that incorporate our custom components. Additionally, we refined animations and transitions to provide a smoother experience for developers.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center light-blue-text"><i class="material-icons">group</i></h2>
            <h5 class="center">User Experience Focused</h5>

            <p class="light">By utilizing elements and principles of Material Design, we were able to create a framework that incorporates components and animations that provide more feedback to users. Additionally, a single underlying responsive system across all platforms allow for a more unified user experience.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center light-blue-text"><i class="material-icons">settings</i></h2>
            <h5 class="center">Easy to work with</h5>

            <p class="light">We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.</p>
          </div>
        </div>
      </div>

    </div>
    <br><br>

    <div class="section">

    </div>
  </div>
-->
  <footer class="page-footer orange">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="white-text">Developer Bio</h5>
          <p class="grey-text text-lighten-4">Jeseekia got her start in tech as a freelance Frontend Developer, but recently attended a full-time Java Bootcamp to learn the ways of OOP, databases, and software goodness. She is a native Detroiter, involved in the the Detroit tech community as a co-organizer and instructor for Girl Develop It Detroit as well as an instructor and TA for Grand Circus Detroit. Jeseekia is also a senior Mechanical Engineering student at Wayne State University.</p>


        </div>
        <div class="col l3 s12">
          <h5 class="white-text">Other sites!</h5>
          <ul>
            <li><a class="white-text" href="http://www.metadevgirl.com">Jeseekia's Website</a></li>
            <li><a class="white-text" href="http://www.gdidetroit.com">Girl Develop It, Detroit</a></li>
            <li><a class="white-text" href="http://www.grandcircus.co">Grand Circus Detroit</a></li>
            <!-- <li><a class="white-text" href="#!">Link 4</a></li>-->
          </ul>
        </div>
        <div class="col l3 s12">
          <h5 class="white-text">Connect</h5>
          <ul>
            <%--<li><a class="white-text" href="#!">Detroit Ipsum Twitter</a></li>--%>
            <li><a class="white-text" href="http://www.github.com/jeseekia/detroitipsum">Detroit Ipsum Repo</a></li>
            <li><a class="white-text" href="http://www.twitter.com/metadevgirl">Jeseekia's Twitter</a></li>
            <li><a class="white-text" href="https://www.linkedin.com/in/jeseekiavaughn">Jeseekia's LinkedIn</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
      Made by <a href="http://www.metadevgirl.com">Jeseekia</a> with a side of <a class="orange-text text-lighten-3" href="http://materializecss.com">Materialize</a>
      </div>
    </div>
  </footer>


  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  <script src="js/scripts.js"></script>
  </body>
</html>
