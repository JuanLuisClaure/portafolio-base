const riot = require('riot')
import dispatcher from '../../app/dispatcher'
import '../timeline/timeline'

riot.tag2('correo', '<div style="grid-area:correo;align-self: center;"> <h1>Newsletter</h1> <p style="color:#414450;"> We cover Guides, WordPress, Themes, Promotions, and other fun stuff. Plus you get an instant 10% Off discount code when you subscribe. I agree to privacy policy and want to receive Themes Kingdom newsletter </p> <span class="input input--nao"> <input class="input__field input__field--nao" type="text" id="input-2"> <label class="input__label input__label--nao" for="input-2"> <span class="input__label-content input__label-content--nao">Email</span> </label> <svg class="graphic graphic--nao" width="300%" height="100%" viewbox="0 0 1200 60" preserveaspectratio="none"> <path d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0"></path> </svg> </span> <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox-1"> <input type="checkbox" id="checkbox-1" class="mdl-checkbox__input" checked> <span class="mdl-checkbox__label">Aceptas que te mandemos contenido <br>exlusivo solo apra mejorar tu vida</span> </label> </div> <div style="grid-area:submit;align-self: center;justify-self: center;"> <button class="button button--nina button--border-thin button--round-s" data-text="Send Mail"> <span>S</span><span>e</span><span>n</span><span>d</span> <span>M</span><span>a</span><span>i</span><span>l</span> </button> </div> <div class="mdl-card--border mdl-shadow--16dp" style="grid-area:timeline;background-color: #414450;height: 66%;align-self: center; width: 77%;justify-self: center;"> <timeline></timeline> </div>', '', '', function(opts) {
        const correo = this

        correo.on('mount', ()=>{

        })
});