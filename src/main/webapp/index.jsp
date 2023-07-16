<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es-418">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Trabajo Integrador CAC</title>
    <link rel="stylesheet" href="./css/index.css">
    <link rel="apple-touch-icon" href="./public/img/codoacodo.png" />
    <link rel="shorcut icon" href="./public/img/codoacodo.png" type="image/x-png" />
    <link rel="icon" href="./public/img/codoacodo.png" type="image/x-png" />
</head>

<body>
    <header class="conteiner">
        <nav class="row  navbar navbar-expand bg-dark pb-3 pt-3 ">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01"
                aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                <div class="col-4 d-flex flex-row divNavImg align-items-center">
                    <a href="#"><img class="navImg" src="./public/img/codoacodo.png" alt="..."></a>
                    <p class="d-flex align-items-center mt-auto mb-auto text-light fs-3">Conf Bs As</p>
                </div>

                <ul class="col nav d-flex align-items-center flex-row justify-content-end">
                    <li class="nav-item">
                        <a class="nav-link text-light fs-5 active" aria-current="page" href="#">La conferencia</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white-50 fs-5" href="#ORADORES">Los oradores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white-50 fs-5" href="#FECHAYLUGAR">El lugar y la fecha</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white-50 fs-5" href="#SEORADOR">Convi&eacute;rtete en orador</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-success fs-5 me-5" href="./public/sectiions/tickets.html">Comprar tickets</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="row divImgCiudades">
            <div class="position-absolute">
                <img class="divImageCover" src="./public/img/ba1.jpg" alt="...">
            </div>
            <div class="text-white vw-100 text-end divImageCover2">
                <p class="fs-1 text-end">Conf Bs AS</p>
                <p class="fs-5 text-end textDescription">Bs As llega por primera vez a Argentina. Un evento para
                    compartir con nuestra
                    comunidad el conocimiento y experiencia de los expertos que est&aacute;n creando el futuro de internet. Ven
                    a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel
                    que tenemos para t&iacute;. Te esperamos!</p>
                <div class="d-flex flex-row justify-content-end">
                    <button type="button" class="btn btn-outline-light me-2 fs-5"><a class="text-decoration-none" href="#SEORADOR">Quiero ser orador</a></button>
                    <button type="button" class="btn btn-success fs-5"><a class="text-decoration-none text-white" href="./public/sectiions/tickets.html">Comprar tickets</a></button>
                </div>
            </div>
        </div>
    </header>
    <main class="pt-3 w-100 d-flex flex-column justify-content-center">
        <section class="container">
            <div class="row">
                <div class="col text-center">
                    <p id="ORADORES" class="m-0">CONOCE A LOS</p>
                    <p class="fs-2"><b>ORADORES</b></p>
                </div>
                <div class="row g-0 justify-content-center mb-5">
                    <div class="col-sm-12 mb-2 col-md-6 col-lg-4 col-xl-3">
                        <div class="card p-md-2 p-lg-3 cardList">
                            <img src="./public/img/steve.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <span class="badge bg-warning text-dark">JavaScript</span>
                                <span class="badge bg-info text-light">React</span>
                                <h5 class="card-title">Steve Jobs</h5>
                                <p class="card-text overflow-auto altoDelParrafoCarsOradores">Steven Jobs empresario,
                                    diseñador industrial, magnate empresarial, propietario de medios e inversor
                                    estadounidense. Cofundador y presidente ejecutivo de Apple y m&aacute;ximo accionista
                                    individual de The Walt Disney Company.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 mb-2 col-md-6 col-lg-4 col-xl-3">
                        <div class="card p-md-2 p-lg-3 cardList">
                            <img src="./public/img/bill.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <span class="badge bg-warning text-dark">TypeScript</span>
                                <span class="badge bg-info text-light">Angular</span>
                                <h5 class="card-title">Bill Gates</h5>
                                <p class="card-text overflow-auto altoDelParrafoCarsOradores">Bill Gates es un magnate
                                    empresarial, desarrollador de software,
                                    inversor, autor y fil&aacute;ntropo estadounidense. Es cofundador de Microsoft, junto con
                                    su amigo de la infancia Paul Allen.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 mb-2 col-md-6 col-lg-4 col-xl-3">
                        <div class="card p-md-2 p-lg-3 cardList">
                            <img src="./public/img/ada.jpeg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <span class="badge bg-secondary text-light">Negocios</span>
                                <span class="badge bg-danger text-light">Startups</span>
                                <h5 class="card-title">Ada Lovelace</h5>
                                <p class="card-text overflow-auto altoDelParrafoCarsOradores">Augusta Ada King, conocida
                                    habitualmente como Ada Lovelace, es una
                                    matem&aacute;tica y escritora brit&aacute;nica, c&eacute;lebre sobre todo por su trabajo acerca de la
                                    computadora mec&aacute;nica de uso general de Charles Babbage, la denominada m&aacute;quina
                                    anal&iacute;tica.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="container-fluid mb-5">
            <div class="row d-flex align-items-center">
                <div class="col-sm-12 col-lg-6 g-1">
                    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="./public/img/ba2.jpg" class="d-block w-100 h-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="./public/img/ba1.jpg" class="d-block w-100 h-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="./public/img/ba3.jpg" class="d-block w-100 h-100" alt="...">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-lg-6 bg-dark g-1 p-4" id="FECHAYLUGAR">
                    <h2 class="text-white pl-2">Bs As - Octubre</h2>
                    <p class="text-white">Buenos Aires es una ciudad vibrante y emocionante, que sin duda es una
                        excelente opci&oacute;n para celebrar un evento como "Conf Bs As" de "Codo a Codo".
                        Buenos Aires es la capital de Argentina y la ciudad m&aacute;s grande del pa&iacute;s, con una poblaci&oacute;n de
                        alrededor de 3 millones de personas. Es una ciudad cosmopolita y multicultural que atrae a
                        turistas y viajeros de todo el mundo. Buenos Aires es famosa por su arquitectura elegante, sus
                        calles empedradas, sus plazas verdes y sus coloridos barrios, cada uno con su propia
                        personalidad y estilo.
                        Cuenta con una amplia variedad de espacios y opciones para todo tipo de reuniones, desde
                        conferencias y exposiciones hasta conciertos y festivales. Hay varios centros de convenciones y
                        recintos para eventos en la ciudad, como La Rural, ubicado en el barrio de Palermo, que es uno
                        de los m&aacute;s grandes de Am&eacute;rica Latina. Tambi&eacute;n hay muchos hoteles, teatros y salas de conciertos
                        que ofrecen espacios para eventos.
                        La ciudad cuenta con una amplia oferta gastron&oacute;mica, que incluye desde restaurantes
                        elegantes hasta parrillas tradicionales y puestos de comida callejera. Los barrios m&aacute;s populares
                        para salir a comer son Palermo, San Telmo y Puerto Madero.</p>
                    <button class="btn btn-outline-light">
                        <a class="text-decoration-none" target="_blank" href="https://turismo.buenosaires.gob.ar/es/article/atenci%C3%B3n-al-turista">
                            Conoc&eacute; m&aacute;s
                        </a>
                    </button>
                </div>
            </div>
        </section>
        <section class="container g-0" id="SEORADOR">
            <div class="row justify-content-center">
                <div class="col-12 text-center">
                    <span>CONVI&Eacute;RTETE EN UN</span>
                    <h2>ORADOR</h2>
                </div>
                <div class="col-sm-12 col-md-6 justify-content-center">
                    <span class="d-flex justify-content-center mb-5">An&oacute;tate como orador para dar una charla &iacute;gnite.
                        Cu&eacute;ntanos de qu&eacute; quieres hablar!</span>
                    <form class="d-flex flex-column" method="post" action="<%=request.getContextPath()%>/UpController">
                        <div class="d-flex flex-columnw-100">
                            <div class="col-sm-12 col-md-6">
                                <label for="inputEmail1" class="form-label">Nombre</label>
                                <input type="text" name="nombre" class="form-control" id="InputEmail1" aria-describedby="emailHelp">
                            </div>
                            <div class="col-sm-12 col-md-6">
                                <label for="inputPassword1" class="form-label">Apellido</label>
                                <input type="text" name="apellido" class="form-control" id="inputPassword1">
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-floating mt-1">
                                <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" name="descripcion"
                                    style="height: 100px"></textarea>
                                <label for="floatingTextarea2">Sobre que quieres hablar?</label>
                                <p class="fs-6">Recuenda incuir un t&iacute;tulo para tu charla</p>
                            </div>
                        </div>
                        <button class="btn btn-success mt-1 col-sm-12 fs-5">Enviar</button>
                    </form>
                </div>
            </div>
        </section>
    </main>
    <footer class="col mt-5 mb-2">
        <div class="row">
            <ul class="d-flex flex-row justify-content-evenly p-5 listas">
                <li>Preguntas Frecuentes</li>
                <li>Cont&aacute;ctanos</li>
                <li>Prensa</li>
                <li>Conferencias</li>
                <li>T&eacute;rminos y Condiciones</li>
                <li>Privacidad</li>
                <li>Estudiantes</li>
            </ul>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/d82d4468f0.js" crossorigin="anonymous"></script>
</body>

</html>