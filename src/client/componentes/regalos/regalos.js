const riot = require('riot')
import dispatcher from '../../app/dispatcher'
riot.tag2('regalos', '<div class="route" id="buy"></div> <div class="gifttarjeta"> <div class="gifttarjeta-cover " style="height:48vh;display:flex;flex-direction:column;"> <h3 style="color:white;margin-top: 0;">Tarjeta de regalo</h3> <h6 style="color:white;">Vale por </h6> <div class="valuerega">50 Bs.</div> <input type="range" min="50" max="250" step="1" value="0" id="inputrange" oninput="{actualizarestado}"> </div> <div class="gifttarjeta-content" style="height:47vh;"> <address> <h3>David Khourshid</h3> </address> </div> <div class="gifttarjeta-footer" style="height:18vh;display:grid;grid-template-columns: auto;grid-auto-rows:auto;justify-items: center;align-items: center; "> <div class="ribbon"> <div class="giftwrap" style="display: flex;"> <a href="#buy" style="align-self:center;transform: translate3d(49px,-46px,0);">Quiero</a> </div> </div> <div class="gifttarjeta-info"> <a href="/" class="buttons button--quidel button--round-s"> <i class="material-icons">add</i> </a> </div> </div>', '', '', function(opts) {
const regalos = this
regalos.actualizarestado = (event)=>{

  let newValue = event.target.value + ' Bs.'
  var target = document.querySelector('.valuerega');
  target.innerHTML = newValue;

}
regalos.iniciar = ()=>{

}

regalos.on('mount', regalos.iniciar())

});