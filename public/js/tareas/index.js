/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!**************************************!*\
  !*** ./resources/js/tareas/index.js ***!
  \**************************************/
var grado = document.getElementById('grado');
var grupo = document.getElementById('grupo');
var asignatura = document.getElementById('asignatura');
var periodo  = document.getElementById('periodo')
var ciclo_escolar  = document.getElementById('ciclo_escolar');
var alert =  document.getElementById('alert');
    alert.style.visibility = 'hidden';
ciclo_escolar.addEventListener('change',function (){
    if (asignatura.value !== '' && grado.value !== '' && grupo.value !== '' && periodo.value !== '' && ciclo_escolar.value !== '')
    {

    }
    else
    {
    }
})
/******/ })()
;
