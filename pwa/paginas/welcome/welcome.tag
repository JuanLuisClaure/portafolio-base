const riot = require('riot')
import dispatcher from '../../app/dispatcher'
import '../../componentes/presentacion/presentacion'
import '../../componentes/comentario/comentario'
import '../../componentes/compra/compra'
import '../../componentes/cupones/cupones'
import '../../componentes/correo/correo'
import '../../componentes/copyright/copyright'
import '../../componentes/regalos/regalos'




<welcome>


    <presentacion></presentacion>
    <compra></compra>
    <regalos></regalos>
    <comentario></comentario>
    <cupones></cupones>
    <correo></correo>
    <copyright></copyright>





<script>


this.on('mount',()=>{
    
import Typewriter from 't-writer.js'

const target = document.querySelector('#tw')


const writer = new Typewriter(target, {
  loop: true,
  typeColor: 'white'
})

// console.log(writer);

writer
  .type('A simple syntax makes it easy.')
  .rest(500)
  .start()

})


</script>

</welcome>