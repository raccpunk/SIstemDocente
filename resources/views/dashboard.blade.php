<x-app-layout>
    <link rel="stylesheet" href="{{asset('css/dashboard.css')}}">
    <div class="container">
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
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
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
