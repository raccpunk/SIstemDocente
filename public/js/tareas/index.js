/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!**************************************!*\
  !*** ./resources/js/tareas/index.js ***!
  \**************************************/
    //Variables
var grado = document.getElementById('grado');
var grupo = document.getElementById('grupo');
var asignatura = document.getElementById('asignatura');
var periodo  = document.getElementById('periodo')
var alert =  document.getElementById('alert');
//alert siempre oculto al recargar la pagina
alert.style.display = 'none';

document.querySelectorAll(".wrapper").forEach(function (item) {
    item.addEventListener("change", function () {
        if (grado.value !== '' || grupo.value !== '' || asignatura.value !== '' || periodo.value !== ''){
            alert.style.display = 'none';
        }
        else {
            alert.style.display = '';
        }
    })
})

/******/ })()
;
