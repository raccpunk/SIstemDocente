let grado = document.getElementById('grado').value
let grupo = document.getElementById('grupo')

grupo.addEventListener('change',function (){
    console.log(grado +' '+grupo.value)
})
