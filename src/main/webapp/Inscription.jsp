<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">



    

    

<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">

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

    
    <!-- Custom styles for this template -->
    <link href="../java/bof/BOF/form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
    
<div class="container">
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="../java/bof/BOF/drapeau.png" alt="" width="90" height="60">
      <h2>Direction Generale des Elections</h2>
      <p class="lead">Election presidentielle senegalaise de 2019</p>
    </div>

      <div class="col-12">
        <h4 class="mb-3">Inscrivez-vous</h4>
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="firstName" class="form-label">Votre nom :</label>
              <input type="text" class="form-control" id="firstName" placeholder="Nom" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="lastName" class="form-label">Votre prenom :</label>
              <input type="text" class="form-control" id="lastName" placeholder="Prenom" value="" required>
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
            </div>
            <div class="col-sm-6">
              <label for="country" class="form-label">Civilite</label>
              <select class="form-select" id="country" required>
                <option value="">Choisir</option>
                <option>Masculin</option>
                <option>Feminin</option>
              </select>
              <div class="invalid-feedback">
                Please select a valid.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="username" class="form-label">Votre date de naissance :</label>
              <div class="input-group has-validation">
                <input type="text" class="form-control" id="date" placeholder="jj/mm/aaaa" required>
              <div class="invalid-feedback">
                  Your date is required.
                </div>
              </div>
            </div>
            <div class="col-12">
              <label for="username" class="form-label">Numero d'Identification National</label>
              <div class="input-group has-validation">
                <input type="text" class="form-control" id="NIN" placeholder="NIN" required>
              <div class="invalid-feedback">
                  Your NIN is required.
                </div>
              </div>
            </div>
            <div class="col-12">
              <label for="address" class="form-label">Adress</label>
              <input type="text" class="form-control" id="address" placeholder="" required>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>
            <div class="col-md-4">
              <label for="state" class="form-label">Region</label>
              <select class="form-select" id="state" required>
                <option value="">Choisir</option>
                <option>Dakar</option>
                <option>Thies</option>
                <option>Saint-Louis</option>
                <option>Ziguinchor</option>
                <option>Matam</option>
              </select>
              <div class="invalid-feedback">
                Please provide a valid state.
              </div>
            </div>
            <div class="col-md-5">
              <label for="country" class="form-label">Departement</label>
              <select class="form-select" id="country" required>
                <option value="">Choisir</option>
                <option>Dakar</option>
                <option>Rufisque</option>
                <option>Tivaoune</option>
                <option>Thies</option>
                <option>Mbour</option>
              </select>
              </select>
              <div class="invalid-feedback">
                Please select a valid country.
              </div>
            </div>

            <div class="col-md-3">
              <label for="zip" class="form-label">Lieu de vote</label>
              <input type="text" class="form-control" id="zip" placeholder="" required>
              <div class="invalid-feedback">
                required.
              </div>
            </div>
            <div class="col-sm-6">
              <label for="floatingPassword" class="form-label">Creer un mot de passe</label>
              <div class="input-group has-validation">
                <input type="password" class="form-control" id="floatingPassword" placeholder="mot de passe" required>
              <div class="invalid-feedback">
                  Your password is required.
                </div>
              </div>
            </div>
            <div class="col-sm-6">
              <label for="floatingPassword" class="form-label">Confirmer votre mot de passe</label>
              <div class="input-group has-validation">
                <input type="password" class="form-control" id="floatingPassword" placeholder="mot de passe" required>
              <div class="invalid-feedback">
                  Your password is required.
                </div>
              </div>
            </div>
    
            
          </div>
          </div>
          <hr class="my-3">

          <button class="w-100 btn btn-primary btn-lg" type="submit">Enregistrez</button>
        </form>
    </div>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2021–2022 E-Vote</p>
  </footer>
</div>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      <script src="../java/bof/BOF/form-validation.js"></script>
  </body>
</html>
