 <head>
    <title>Knihy k maturitě</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">  
 </head>

 <body style="padding-top: 90; background-color: whitesmoke">    
    <nav class="navbar navbar-expand-lg navbar-dark bg-secondary fixed-top">
    <h1 class="navbar-brand">Knihy k maturitě</h1>
        <div class="container">
                <div class="collapse navbar-collapse" id="navbarResponsive">
               
                <?php if($this->session->userdata('logged_in')){ ?>


                    
                    <ul class="navbar-nav ml-auto">
                        <?php foreach($polozky as $p): ?>
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo base_url("stranka/".$p->idmenu)?>"><?= $p->categorie ?><span class="sr-only">(current)</span></a>
                        </li>
                        <?php endforeach; ?>
                    </ul>
                    <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                    <a class="nav-link" href="<?php echo base_url("auth/logout")?>">Odhlásit se</a>
                        </li>
                        <li class="nav-item">
                    <a class="nav-link" href="<?php echo base_url("formular")?>">Přidat knížku</a>
                        </li>
                   
                   <?php }else{ ?>
                   
                    <ul class="navbar-nav ml-auto">
                        <?php foreach($polozky as $p): ?>
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo base_url("stranka/".$p->idmenu)?>"><?= $p->categorie ?><span class="sr-only">(current)</span></a>
                        </li>
                        <?php endforeach; ?>
                    </ul>
                    <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                    <a class="nav-link" href="<?php echo base_url("auth/login")?>">Login</a>
                        </li>
                        <li class="nav-item">
                    <a class="nav-link" href="<?php echo base_url("auth/create_user")?>">Registrovat se</a>
                        </li>
                   
                   
                  
                   
                    </ul>
                <?php }?>
                </div>
        </div>
    </nav> 
