const riot = require('riot')
import dispatcher from '../../app/dispatcher'
riot.tag2('presentacion', '<article id="webslides" style="background-color:white;color:black;display:none;width:100vw;overflow-y: hidden;z-index:4;"> <section> <h1>Design for trust</h1> </section> <section class="bg-primary"> <div class="wrap"> <h3>jola</h3> </div> </section> </article> <button if="{!estapresentacion}" class="mdl-button mdl-js-button mdl-button--raised" style="background:white;color:black;position: absolute;bottom: 2em;right: 2em;height: 17vh;width: 11vw;" onclick="{abrirslides}"> Diapositivas de presentacion! </button> <button if="{estapresentacion}" class="mdl-button mdl-js-button mdl-button--fab" style="background:black;color:white;position: absolute;top: 1em;right: 1em;" onclick="{cerrar}"> <i class="material-icons">close</i> </button>', '', '', function(opts) {
        const presentacion = this

        presentacion.estapresentacion = false
        presentacion.abrirslides = () => {

            presentacion.estapresentacion = !presentacion.estapresentacion
            document.querySelector('#inicio').style.border = "2px solid grey"
            document.getElementById('webslides').style.display = "block"
            document.querySelector('header').style.display = "none"

            const ws = new WebSlides({
            autoslide: true,
            changeOnClick: true,
            loop: true,
            minWheelDelta: 40,
            navigateOnScroll: true,
            scrollWait: 450,
            slideOffset: 50,
            showIndex: true
            });
            }

        presentacion.cerrar = () => {
            presentacion.estapresentacion = !presentacion.estapresentacion

            document.getElementById('webslides').style.display = "none"
            document.querySelector('header').style.display = "block"

            window.location.href = 'http://localhost:8888/'

        }

        presentacion.on('mount', ()=>{
        let x = false
        let y = true
            if(x^y){

            }else{

            }
        })
});