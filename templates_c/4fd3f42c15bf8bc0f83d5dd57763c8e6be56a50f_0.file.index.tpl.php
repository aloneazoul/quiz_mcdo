<?php
/* Smarty version 4.5.2, created on 2025-01-17 15:59:43
  from '/Applications/MAMP/htdocs/Stage/templates/index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.2',
  'unifunc' => 'content_678a7e6f4d2b05_86790995',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4fd3f42c15bf8bc0f83d5dd57763c8e6be56a50f' => 
    array (
      0 => '/Applications/MAMP/htdocs/Stage/templates/index.tpl',
      1 => 1737129579,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_678a7e6f4d2b05_86790995 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>McDo - Quiz</title>
    <link href="./assets/bootstrap-5.3.3-dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/style.css"> <!-- Ton fichier CSS -->
    <link rel="stylesheet" href="./css/icon/fontawesome-free-6.4.2-web/css/all.min.css"><!--lien pour pourvoir mettre des icons-->
    <link rel="icon" type="image/png" href="./images/Logo.png">
</head>

<body>
    <header>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-1 offset-md-2">
                    <img src="./images/Logo.png" alt="Logo mcdo">
                </div>
            </div>
        </div>
    </header>
    <main>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-auto offset-md-2">
                    <h1>Choisissez votre restaurant :</h1>
                </div>
            </div>

            <div class="row mb-4">
                <div class="col-md-8 mx-auto">
                    <div class="input-group">
                        <input type="search" class="form-control custom-search" placeholder="Ex : Saint-Just-en-Chaussée" aria-label="Recherche">
                        <button class="btn search-btn" type="button">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </div>

            <div class="resto-name">
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['restos']->value, 'resto');
$_smarty_tpl->tpl_vars['resto']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['resto']->value) {
$_smarty_tpl->tpl_vars['resto']->do_else = false;
?>
                    <div class="row mt-3">
                        <div class="col-md-7 offset-md-2">
                            <button class="custom-button white-button text-start">
                                <?php echo $_smarty_tpl->tpl_vars['resto']->value['code_postale'];?>
 <?php echo $_smarty_tpl->tpl_vars['resto']->value['ville'];?>
, <?php echo $_smarty_tpl->tpl_vars['resto']->value['num_rue'];?>
 <?php echo $_smarty_tpl->tpl_vars['resto']->value['rue'];?>
 
                            </button>
                        </div>
                    </div>
                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
            </div>
        </div>
        <footer class="footer mt-5">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3 offset-md-2">
                        <h5>Contact</h5>
                        <ul class="list-unstyled">
                            <li><i class="fas fa-phone"></i> +33 7 83 83 90 10</li>
                            <li><i class="fas fa-envelope"></i> aloneazoul23@gmail.com</li>
                            <li><p>Créateur du site : Alone Azoulay</p></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <h5>Support technique</h5>
                        <ul class="list-unstyled">
                            <li><a href="/help">Assistance technique</a></li>
                            <li><a href="/contact-support">Contacter le support</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <h5>Vos suggestions</h5>
                        <ul class="list-unstyled">
                            <li><a href="/feedback">Donner votre avis</a></li>
                            <li><a href="/survey">Compléter notre enquête</a></li>
                        </ul>
                    </div>                                
                    <div class="row">
                        <div class="col text-center">
                            <p style="color: #F0E1C6;">&copy; 2025 McDonald's - Tous droits réservés</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </main>
    <?php echo '<script'; ?>
>
        document.addEventListener('DOMContentLoaded', function() {
            const searchInput = document.querySelector('.custom-search');
            const buttons = document.querySelectorAll('.custom-button');

            searchInput.addEventListener('input', function() {
                const searchValue = searchInput.value.toLowerCase();

                buttons.forEach(button => {
                    const restoText = button.textContent.toLowerCase();
                    if (restoText.includes(searchValue)) {
                        button.parentElement.parentElement.style.display = '';
                    } else {
                        button.parentElement.parentElement.style.display = 'none';
                    }
                });
            });
        });
        <?php echo '</script'; ?>
>

</body>
</html>
<?php }
}
