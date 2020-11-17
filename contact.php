<!-- Se almacenan los datos del formulario de contacto en una tabla en la BBDD -->
<?php

  session_start();
  include './php/conexion.php';

  // Comprobamos que existan las variables y no estén vacías.
  if((isset($_POST['form_name']) && !empty($_POST['form_name']))
  && (isset($_POST['f_email']) && !empty($_POST['f_email']))
  && (isset($_POST['f_subject']) && !empty($_POST['f_subject']))){

  $name = $_POST['form_name'];
  $lastName = $_POST['form_last_name'];
	$email = $_POST['f_email'];
	$subject = $_POST['f_subject'];
	$message = $_POST['f_messaje'];
	
  // Introducimos los datos en la BBDD
  $conexion->query("INSERT INTO contacto (id, name, email, subject, message) 
  VALUES(
    '',
    '".$_POST['form_name']." ".$_POST['form_last_name']."', 
    '".$_POST['f_email']."',
    '".$_POST['f_subject']."',
    '".$_POST['f_messaje']."'
    )")or die($conexion->error);

	}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Contacto</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">


    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body>
  
  <div class="site-wrap">
  <?php include("./layouts/header.php"); ?> 

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2 class="h3 mb-3 text-black">Get In Touch</h2>
          </div>
          <div class="col-md-7">

            <form method="post">
              
              <div class="p-3 p-lg-5 border">
                <div class="form-group row">
                <!-- Nombre, mínimo 3, máximo 20 -->
                  <div class="col-md-6">
                    <label for="c_fname" class="text-black">Nombre<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="form_name" name="form_name" 
                    minlength="3" maxlength="20" required> 
                  </div>
                  <!-- Apellidos, mínimo 5, máximo 25 -->
                  <div class="col-md-6">
                    <label for="c_lname" class="text-black">Apellidos<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="form_last_name" name="form_last_name"
                    minlength="5" maxlength="25" required>
                  </div>
                </div>
                <!-- Email -->
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Correo electrónico<span class="text-danger">*</span></label>
                    <input type="email" class="form-control" id="f_email" name="f_email" required>
                  </div>
                </div>
                <!-- Asunto, mínimo 5, máximo 30 -->
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_subject" class="text-black">Asunto<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="f_subject" name="f_subject"
                    minlength="5" maxlength="30" required>
                  </div>
                </div>
                <!-- Mensaje, mínimo 10, máximo 350 -->
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_message" class="text-black">Mensaje<span class="text-danger">*</span></label>
                    <textarea name="f_messaje" id="f_messaje" cols="30" rows="7" class="form-control"
                    minlength="10" maxlength="350" required ></textarea>
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-lg-12">
                    <input type="submit" class="btn btn-primary btn-lg btn-block" value="Enviar mensaje">
                    <?php 
                    // Si la variable nombre no está vacía, mostramos el mensaje "Recibido"
                      if(isset($_POST['form_name'])){
                    ?>
                    <br>
                    <h6><?php echo "<center>Gracias ".$_POST['form_name']. ", su mensaje se ha enviado correctamente</center>";?></h6>
                    <?php } ?>
                  </div>
                </div>
              </div>
            </form>
          </div>
          <div class="col-md-5 ml-auto">
            <div class="p-4 border mb-3">
              <span class="d-block text-primary h6 text-uppercase">New York</span>
              <p class="mb-0">203 Fake St. Mountain View, San Francisco, California, USA</p>
            </div>
            <div class="p-4 border mb-3">
              <span class="d-block text-primary h6 text-uppercase">London</span>
              <p class="mb-0">203 Fake St. Mountain View, San Francisco, California, USA</p>
            </div>
            <div class="p-4 border mb-3">
              <span class="d-block text-primary h6 text-uppercase">Canada</span>
              <p class="mb-0">203 Fake St. Mountain View, San Francisco, California, USA</p>
            </div>

          </div>
        </div>
      </div>
    </div>

    <?php include("./layouts/footer.php"); ?> 
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>