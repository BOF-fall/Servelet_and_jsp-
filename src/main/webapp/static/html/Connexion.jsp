<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">

<link href="${pageContext.request.contextPath}/static/styles/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/static/styles/css/signin.css" rel="stylesheet">
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>


  </head>
  <body class="text-center">
    
<main class="form-signin w-100 m-auto">
  <form method="post" action="<%= request.getContextPath()%>/main/webapp/src/Controller/LoginServelet">
    <img class="mb-4" src="${pageContext.request.contextPath}/static/images/drapeau.png" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">Connectez-vous</h1>

    <div class="col-12">
      <label for="NIN" class="form-label"></label>
      <div class="input-group has-validation">
      <input type="text" class="form-control" id="NIN" placeholder="Numéro d'Identification National" required>
        <div class="invalid-feedback">
           Your NIN is required.
        </div>
        <div class="col-12">
              <label for="floatingPassword" class="form-label"></label>
              <div class="input-group has-validation">
                <input type="password" class="form-control" id="floatingPassword" placeholder="Mot de passe" required>
                  <div class="invalid-feedback">
                    Your password is required.
                  </div>
              </div>
        </div>
    </div>
    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Se souvenir de moi
      </label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">Connexion</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2021-2022</p>
  </form>
</main>


    
  </body>
</html>
