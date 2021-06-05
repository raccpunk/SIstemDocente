<x-app-layout>
<style>
        body {
            background: #eeeeee;
            font-family: 'Open Sans', sans-serif;
        }

        .navbar {
            font-size: 14px;
            background: #fff;
            padding-left: 16px;
            padding-right: 16px;
            border-bottom: 1px solid #d6d6d6;
            box-shadow: 0 0 4px rgba(0, 0, 0, .1);
        }

        .navbar .navbar-brand {
            color: #555;
            padding-left: 0;
            font-size: 20px;
            padding-right: 50px;
            font-family: 'Raleway', sans-serif;
            text-transform: uppercase;
        }

        .navbar .navbar-brand b {
            color: #20b0b9;
        }

        .navbar .navbar-nav a {
            font-size: 96%;
            font-weight: bold;
            text-transform: uppercase;
        }

        .navbar .navbar-nav a.active {
            color: #f04f01 !important;
            background: transparent !important;
        }

        .search-box input.form-control, .search-box .btn {
            font-size: 14px;
            border-radius: 2px !important;
        }

        .search-box .input-group-append {
            padding-left: 4px;
        }

        .search-box input.form-control:focus {
            border-color: #f04f01;
            box-shadow: 0 0 8px rgba(240, 79, 1, 0.2);
        }

        .search-box .btn-danger, .search-box .btn-danger:active {
            font-weight: bold;
            background: #f04f01 !important;
            border-color: #f04f01;
            text-transform: uppercase;
            min-width: 90px;
        }

        .search-box .btn-danger:hover, .search-box .btn-danger:focus {
            background: #eb4e01 !important;
            box-shadow: 0 0 8px rgba(240, 79, 1, 0.2);
        }

        .search-box .btn span {
            transform: scale(0.9);
            display: inline-block;
        }

        .navbar .nav-item.open > a {
            background: none !important;
        }

        .navbar .dropdown-menu {
            border-radius: 1px;
            border-color: #e5e5e5;
            box-shadow: 0 2px 8px rgba(0, 0, 0, .05);
        }

        .navbar .dropdown-menu a, .navbar .dropdown-menu a:active {
            color: #777;
            padding: 8px 20px;
            font-size: 13px;
            background: #fff;
        }

        .navbar .dropdown-menu a:hover, .navbar .dropdown-menu a:focus {
            color: #333;
            background: #f8f9fa;
        }

        @media (min-width: 992px) {
            .form-inline .input-group .form-control {
                width: 225px;
            }
        }

        @media (max-width: 992px) {
            .form-inline {
                display: block;
            }
        }

        .navbar .nav-item i {
            font-size: 18px;
        }

        .navbar .dropdown-item i {
            font-size: 16px;
            min-width: 22px;
        }

        .navbar .nav-item.open > a {
            background: none !important;
        }

        .navbar .dropdown-menu {
            border-radius: 1px;
            border-color: #e5e5e5;
            box-shadow: 0 2px 8px rgba(0, 0, 0, .05);
        }

        .navbar .dropdown-menu a {
            color: #777;
            padding: 8px 20px;
            line-height: normal;
        }

        .navbar .dropdown-menu a:hover, .navbar .dropdown-menu a:active {
            color: #333;
        }

        .navbar .dropdown-item .material-icons {
            font-size: 21px;
            line-height: 16px;
            vertical-align: middle;
            margin-top: -2px;
        }

        .carousel {
            margin: 30px 0;
            background: #ccc;
        }

        .carousel .carousel-item {
            text-align: center;
            overflow: hidden;
            height: 475px;
        }

        .carousel .carousel-item img {
            max-width: 100%;
            margin: 0 auto; /* Align slide image horizontally center in Bootstrap v3 */
        }

        .carousel-caption h3, .carousel-caption p {
            color: #fff;
            display: inline-block;
            font-family: 'Oswald', sans-serif;
            text-shadow: none;
            margin-bottom: 20px;
        }

        .carousel-caption h3 {
            background: rgba(0, 0, 0, 0.9);
            padding: 12px 24px;
            font-size: 40px;
            text-transform: uppercase;
        }

        .carousel-caption p {
            background: #20b0b9;
            padding: 10px 20px;
            font-size: 20px;
            font-weight: 300;
        }

        .carousel .nav {
            background: #eee;
        }

        .carousel .nav a {
            color: #333;
            border-radius: 0;
            font-size: 85%;
            padding: 10px 16px;
            background: transparent;
        }

        .carousel .nav .active a {
            color: #fff;
            background: #20b0b9;
        }

        .carousel .nav strong {
            display: block;
            font-family: 'Roboto', sans-serif;
            font-size: 110%;
            text-transform: uppercase;
        }
    </style>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{-- __('Dashboard') --}}
        </h2>
    </x-slot>
<div class="container-lg">
    <div class="row">
        <div class="col-md-12">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Wrapper for carousel items -->
                <div class="carousel-inner">
                    <div class="carousel-item active">

                        <div class="carousel-caption">
                            <h3>Valores y Educación</h3>
                            <p>Los valores y la educación están íntimamente ligados, y es prioritario para el
                                cumplimiento de la misión y visión de la Secretaría de Educación, establecer de manera
                                interna y externa el compromiso de todos los actores del sector educativo de conocerlos,
                                difundirlos, apropiarse de ellos, asumirlos y llevarlos a la praxis en el quehacer
                                diario dentro y fuera de las instituciones educativas, priorizando en el desempeño
                                laboral </p>
                        </div>
                    </div>
                    <div class="carousel-item">

                        <div class="carousel-caption">
                            <h3>Respeto</h3>
                            <p>Valor que implica el establecimiento de las relaciones armónicas entre el profesorado,
                                los trabajadores y los estudiantes, con base en el reconocimiento de lo que somos como
                                comunidad normalista.</p>
                        </div>
                    </div>
                    <div class="carousel-item">

                        <div class="carousel-caption">
                            <h3>Responsabilidad</h3>
                            <p>Valor que implica el cumplimiento en tiempo y forma de las obligaciones propias del
                                trabajo y de las tareas asignadas.</p>
                        </div>
                    </div>
                    <div class="carousel-item">

                        <div class="carousel-caption">
                            <h3>Honestidad</h3>
                            <p>Determina y afirma la calidad humana para el comportamiento y la expresión de los
                                miembros de la comunidad normalista con coherencia y sinceridad y de acuerdo con los
                                valores de justicia y verdad.</p>
                        </div>
                    </div>
                </div>
                <!-- Carousel controls -->
                <ol class="nav nav-pills nav-justified">
                    <li data-target="#myCarousel" data-slide-to="0" class="nav-item active"><a href="#"
                                                                                               class="nav-link"><strong>Valores</strong>Los
                            valores y la educación</a></li>
                    <li data-target="#myCarousel" data-slide-to="1" class="nav-item"><a href="#"
                                                                                        class="nav-link"><strong>Respeto</strong>
                            Respeto Mutuo</a></li>
                    <li data-target="#myCarousel" data-slide-to="2" class="nav-item"><a href="#"
                                                                                        class="nav-link"><strong>Responsabilidad</strong>
                            formar alumnos responsables</a></li>
                    <li data-target="#myCarousel" data-slide-to="3" class="nav-item"><a href="#"
                                                                                        class="nav-link"><strong>Honestidad</strong>
                            Valores para el futuro del pais</a></li>
                </ol>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        // Highlight bottom nav links
        var clickEvent = false;
        $("#myCarousel").on("click", ".nav a", function () {
            clickEvent = true;
            $(this).parent().siblings().removeClass("active");
            $(this).parent().addClass("active");
        }).on("slid.bs.carousel", function (e) {
            if (!clickEvent) {
                itemIndex = $(e.relatedTarget).index();
                targetNavItem = $(".nav li[data-slide-to='" + itemIndex + "']");
                $(".nav li").not(targetNavItem).removeClass("active");
                targetNavItem.addClass("active");
            }
            clickEvent = false;
        });
    });
</script>
</x-app-layout>
