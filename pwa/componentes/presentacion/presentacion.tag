const riot = require('riot')
import dispatcher from '../../app/dispatcher'
<presentacion>
    
    <article id="webslides" style="background-color:white;color:black;display:none;width:100vw;overflow-y: hidden;z-index:4;">
        <!-- Slide 1 -->
        <section>
          <h1 >Design for trust</h1>
    
    
        </section>
        <!-- Slide 2 -->
        <section class="bg-primary">
          <div class="wrap">
            <h3>jola</h3>
          </div>
        </section>
      </article>
    <button if={ !estapresentacion } class="mdl-button mdl-js-button mdl-button--raised" style="background:white;color:black;position: absolute;bottom: 2em;right: 2em;height: 17vh;width: 11vw;"
    onclick={ abrirslides }>
    Diapositivas de presentacion!
    </button>
    <button  if={ estapresentacion }  class="mdl-button mdl-js-button mdl-button--fab" style="background:black;color:white;position: absolute;top: 1em;right: 1em;"
    onclick={ cerrar }>
    <i class="material-icons">close</i>
    </button>
    <script>
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
            // document.querySelector('body').style.overflowY = "auto"

            window.location.href = 'http://localhost:8888/'

        }

        presentacion.on('mount', ()=>{
        let x = false
        let y = true
            if(x^y){
                // console.log('cierto');
            }else{
                // console.log('no cierto');
            }
        })
    </script>
</presentacion>