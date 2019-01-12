const riot = require('riot')
import dispatcher from '../../app/dispatcher'
import '../../componentes/presentacion/presentacion'
import '../../componentes/comentario/comentario'
import '../../componentes/compra/compra'
import '../../componentes/cupones/cupones'
import '../../componentes/correo/correo'
import '../../componentes/copyright/copyright'
import '../../componentes/regalos/regalos'




import Typewriter from 't-writer.js'
riot.tag2('welcome', '<presentacion></presentacion> <compra></compra> <regalos></regalos> <comentario></comentario> <cupones></cupones> <correo></correo> <copyright></copyright>', '', '', function(opts) {


this.on('mount',()=>{

const target = document.querySelector('#tw')

const writer = new Typewriter(target, {
  loop: true,
  typeColor: 'white'
})

writer
  .type('A simple syntax makes it easy.')
  .rest(500)
  .start()

})

});