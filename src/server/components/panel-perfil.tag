<panel-perfil>
  <style>
    panel-perfil{
      display:grid;
      grid-template-columns:100vw;
      grid-template-rows: auto;
    }
  </style>


  <div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer" style="height: 100vh!important;">
    <div id="drawerconteinerinterno" class="mdl-layout__drawer" style="width: 192px!important;">
      <span class="mdl-layout-title">componentes</span>
      <nav class="mdl-navigation">


        <a class="mdl-navigation__link" href="#presentacion">presentacion</a>
        <a class="mdl-navigation__link" href="#comentarios">comentarios</a>
        <a class="mdl-navigation__link" href="#timeline">timeline</a>
        <a class="mdl-navigation__link" href="#productos">productos</a>
        <a class="mdl-navigation__link" href="#giftcards">gift cards</a>
        <a class="mdl-navigation__link" href="#shareprom">cupones</a>
        <a class="mdl-navigation__link" href="#impresium">impressiumm</a>
      </nav>
    </div>
    <main id="mainconteinerinterno" class="mdl-layout__content" style="background-color: #eee!important;margin-left: 192px!important;width:78.2vw!important;">
      <div style="background:red;display:none;position:fixed;" id="mipaneldecontrol">
        <a href="/dashboard/perfil" if={ cambioalgo } onclick='{ guardarobjetomasterss }'>guardar</a>
        <a if={ !cambioalgo } onclick='{ volversinguardar }'>volver</a>
      </div>

      <div id="acarenderizoloscomponentes"></div>
    </main>
  </div>
  <script>

    this.cambioalgo = false

    this.volversinguardar = ()=>{
      this.ocultardrawer()
      let sdscsrdd = document.querySelector('#acarenderizoloscomponentes')
      sdscsrdd.children[0]._tag.unmount()
    }

    this.guardarobjetomasterss = ()=>{
    
      let re = window.location.hash
      let mi = re.split('#')
      
      let eda = mi[1]
      let bed = opts.data[eda].data
      sockete.emit('informacion:owner',eda, bed)
      this.ocultardrawer()
      this.unmount(true)
    }



    
    this.ocultardrawer = ()=>{
      let drwr = document.querySelector('#drawerconteiner')
      let mn   =document.querySelector('#mainconteiner')
      drwr.style.transform = "translateX(0)"
      mn.style.marginLeft = "92px"
      mn.style.width =  "92.92vw"
      let drwrinterno = document.querySelector('#drawerconteinerinterno')
      let mninterno   = document.querySelector('#mainconteinerinterno')
      drwrinterno.style.transform = "translateX(0)"
      mninterno.style.marginLeft = "192px"
      mninterno.style.width = "78.2vw"
      let mipa = document.querySelector('#mipaneldecontrol')
      mipa.style.display = "none"
    
   
      
      }
      



  

  </script>
</panel-perfil>
<impresium>
  <style>
    #impresiumdatos{
      display:grid;
      grid-template-rows:11vh 21vh 25vh;
      grid-template-columns: 49vw 49vw;
      grid-template-areas:
      "titu basic"
      "prin basic"
      "empe legal";
      padding:2em 1em;
    }
    #impresiumdatos label{
      font-size:11px;
    }
    #impresiumdatos select {
      width:33%;
      font-size: 2rem;
      padding: 2px 5px;
    }

    #detallessistema{
      display:grid;
      grid-template-rows:100vh;
      grid-template-columns:100vw;
      background:black;
      padding:1em 1em;
    }

  </style>
  <div id="impresiumdatos">
    <div style="grid-area:titu;">
      <hr>
      
      <u><b style="font-size:25px;">legal</b></u>
    </div>
    <div style="grid-area:prin;display:flex;flex-direction: column;">
      <label>
            <b>que tipo de compañia es</b>
            <br>
            <select name="choice" class="mdl-button mdl-js-button mdl-button--primary">
              <option value="first">First Value</option> 
              <option value="second" selected>Second Value</option>
              <option value="third">Third Value</option>
            </select>
            

          </label>

          <label>
              <b>nombre empresa</b>
              <br>
              <button class="mdl-button mdl-js-button mdl-button--primary">
                un resultado
              </button>
          </label>
          <label>
              <b>nit</b>
              <br>
              <button class="mdl-button mdl-js-button mdl-button--primary">
                un resultado
              </button>
          </label>


    </div>
  <div style="grid-area:empe;display:flex;flex-direction: column;">
    <hr>
    <label>
      <b>acercala empresa</b>
      <br>
      <button class="mdl-button mdl-js-button mdl-button--primary" style="height:111px;width:77%;">
        un resultado
      </button>
    </label>


    
  </div>
    <div style="grid-area:basic;display:flex;flex-direction: column;">
      <hr>
        <label>
            <b>calle y numero del local</b>
            <br>
            <button class="mdl-button mdl-js-button mdl-button--primary">
              un resultado
            </button>
        </label>
        <label>
            <b>pais/ciudad</b>
            <br>
            <button class="mdl-button mdl-js-button mdl-button--primary">
              un resultado
            </button>
        </label>
        <label>
            <b>mail</b>
            <br>
            <button class="mdl-button mdl-js-button mdl-button--primary">
              un resultado
            </button>
        </label>
        <label>
            <b>fax</b>
            <br>
            <button class="mdl-button mdl-js-button mdl-button--primary">
              un resultado
            </button>
        </label>
    </div>
    <div style="grid-area:legal;display:flex;flex-direction: column;">

        <hr>

        <label>
            <b>representate legal</b>
            <br>
            <button class="mdl-button mdl-js-button mdl-button--primary">
              el nombre y pueto en laempresa
            </button>
          </label>
      </div>
      
  </div>
  
  <div id="detallessistema"></div>
    <!-- <div style="grid-area:;display:flex;flex-direction: column;"></div> -->
  </div>
  <div>
      <dialog class="mdl-dialog" id="frsvdfdseee" style="display: none;width:66vw ;height:77vh ;z-index: -4;margin-top:7rem;">

          <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <button type="button" class="mdl-button close" onclick='{ cerrarmodaliratrassss }'>
              salir sin guardar
              <i class="material-icons">cancel</i>
            </button>
          </div>
          <div class="mdl-dialog__content" id="renderizarseguncs">
    
          </div>
        </dialog>
  </div>
  <script>
  
  </script>
</impresium>
<presentacion>
  


  <!-- Wide card with share menu button -->
  <style>
   
    #directo{
    display: grid;
    grid-template-columns: 66vw 1fr;
    grid-template-rows: 92vh;
    align-items: center;
    }
    #scrollhorizontals  {
      background: #eee;
      height: 66%;
    }
    #scrollhorizontals article{
      min-width: 100%;
      padding: 1em 1em;
    }
    sasd{
      min-width: 100%;
      min-height: 100%;
      display: flex;
      flex-direction: row;
      overflow: hidden;
 
    }
    #ajanta{
      display: grid;
      grid-template-columns: 100vw;
      grid-template-rows: 26vh 55vh;
      align-items: end;
      justify-items: center;
    }
    #scrollverticalation{
      width: 66%;
      height: 92%;
      align-self: baseline;
      overflow: auto;
    }
    #datosbasicosgrid{
      display: grid;
      padding: 1em 1em;
      grid-template-columns:29vw 37vw 30vw;
      grid-template-rows:46vh 13vh 36vh;
      grid-template-areas:
      "foto resumen redes"
      "basi botprop leng"
      "basi botprop leng";
    }
    #datosbasicosgrid label{
      font-size: 11px;
    }
    </style>

    <div id="datosbasicosgrid" if={!modalabierto }>
      <div style="grid-area:foto;">
        <button class="mdl-button mdl-js-button mdl-js-ripple-effect" style="background-image:url(../client/assets/img/backg.jpg);background-repeat: no-repeat;background-size: cover;height: 92%; width:92% ;">
          <i class="material-icons">mood</i>
        </button>
      </div>
      <div style="grid-area:basi;display:flex;flex-direction:column;">
        <hr>
        <label>
          nombre:
          <br>
        <button class="mdl-button mdl-js-button mdl-button--primary" data-index="nombre" onclick='{ editareltextoindicado }'>
          { opts.data[0].nombre }
        </button>
        </label>
        <label>
          rubro:
          <br>
        <button class="mdl-button mdl-js-button mdl-button--primary" data-index="rubro" onclick='{ editareltextoindicado }'>
            { opts.data[0].rubro }
        </button>
      </label>
        <label>
          añosexp:
          <br>
        <button class="mdl-button mdl-js-button mdl-button--primary" data-index="expe" onclick='{ editareltextoindicado }'>
            { opts.data[0].expe }
        </button>
      </label>
        <label>
          celular:
          <br>
        <button class="mdl-button mdl-js-button mdl-button--primary" data-index="cel" onclick='{ editareltextoindicado }'>
            { opts.data[0].cel }
        </button>
      </label>
        <label>
          correo:
          <br>
        <button class="mdl-button mdl-js-button mdl-button--primary" data-index="email" onclick='{ editareltextoindicado }'>
            { opts.data[0].email }
        </button>
      </label>
        <label>
          ciudad:
          <br>
        <button class="mdl-button mdl-js-button mdl-button--primary" data-index="ciudad" onclick='{ editareltextoindicado }'>
            { opts.data[0].ciudad }
        </button>
      </label>

      </div>
      <div style="grid-area:resumen">
          <hr>          
        <label>
              bio:
              <br>
            <button class="mdl-button mdl-js-button mdl-button--primary" style="height: 92px;" data-index="bio" onclick='{ editareltextoindicado }'>
                { opts.data[0].bio }
            </button>
          </label>  
        <hr>
        <label >
            mensaje de autosaludo
            <br>
            <button class="mdl-button mdl-js-button mdl-button--primary" style="height: 92px;" data-index="automen" onclick='{ editareltextoindicado }'>
                { opts.data[0].automen }
              </button>
        </label>
       
     
      </div>
      <div style="grid-area:redes;display:grid;grid-template-columns:1fr;grid-template-rows:11% 15vh 11% 1fr;">
          <hr> 
        <label >
              idiomas dspnbls: <a style="margin-left:55%;" data-index="lenguj" onclick='{ crearesteidioma }'>add new</a>
              <br>
              <br>
              <span class="mdl-chip mdl-chip--deletable" each={cn, a in opts.data[0].lenguaj }>
                <span class="mdl-chip__text" style="padding: 0em 1.5em 0em .5em;font-size: 11px;"  data-index='{ a }' onclick='{ borraresteidioma }'>  { cn.leng }</span>
              </span>
          </label>
        <hr>
        <label >
            palabras clave:<a style="margin-left:55%;" data-index="tags" onclick='{ crearestetag }'>add new</a>
            <br>
            <br>
            <span class="mdl-chip mdl-chip--deletable" each={vn, a in opts.data[0].tags } >
              <span class="mdl-chip__text" style="padding: 0em 1.5em 0em .5em;font-size: 11px;" data-index='{ a }' onclick='{ borrarestetag }'>  { vn.tema }</span>
            </span>
        </label>
  

      </div>
      <div style="grid-area:botprop;display:flex;flex-direction:column;overflow:auto;">
        <hr>
        <label>
          redes sociales:  <a style="margin-left:66%;" data-index="generico" onclick='{ nuevaredsocial }'>add new</a>
          <ul style="list-style: inside;margin: 11px 0px 0px -3vw;">
            <li each={vv, a in opts.data[0].redesso } >
              
                <label style="line-height:11px;">
                    <b  style="margin-right:33%;">{ vv.red }</b>
                      <button class="mdl-button mdl-js-button mdl-button--primary" data-index="url" style="width:77%;">
                        { vv.url }
                      </button>
                </label>
                <a data-index='{ a }' onclick='{ borrarlaredsocialindicada }'>remove</a>
            </li>
          </ul>
        </label>
       
      </div>
      <div style="grid-area:leng;display:flex;flex-direction:column;">
          <hr>
          <label>
              asistente bot
              <br>
                <button class="mdl-button mdl-js-button mdl-button--primary" data-index="botnam" onclick='{ editareltextoindicado }'>
                    { opts.data[0].botnam }
                </button>
           </label>
              <button class="mdl-button mdl-js-button mdl-button--primary" style="background:url('../client/assets/img/{opts.data[0].botimg}') center / 50% ;height:100%;width:100%;background-repeat: no-repeat;" data-index={opts.data[0].botimg} onclick='{ cambiarasistentebot }'>
                
              </button>
              
      </div>
    </div>


    <div id="ajanta" if={!modalabierto }>
      <div id="mensajesdebienvenida" style="width: 66%;">
            <div class="mdl-card--border mdl-shadow--16dp" style="display:flex;align-items: center;justify-content: space-evenly;">
              <p style="font-size:7rem;">{ salu.length } estados </p>
              <button class="mdl-button mdl-js-button mdl-button--primary" data-index="salu" onclick='{ crearnuevoestado }'>
                  <i class="material-icons">android</i>
                </button>
            </div>
   
      </div>
    <div id="scrollverticalation">

              <div>
                  <ul style="width:98%;">
                      <li each={ co, e in salu} style="display: flex;align-items: center;margin-top:6rem;">

                              <!-- Accent-colored flat button -->
                              <button class="mdl-button mdl-js-button mdl-button--accent" data-index='{ e }' onclick='{ borrarcurrentstate }'>
                                <i class="material-icons">cancel</i>
                              </button>
                              <div class="mdl-card--border mdl-shadow--16dp" style="height: 66px;min-width:79%;">
                                  <p>{ co.stado }</p>
                                </div>
                                <button class="mdl-button mdl-js-button mdl-button--primary" data-index='{ e }' onclick='{ editarcurrentstate }'>
                                  <i class="material-icons">android</i>
                                </button>
                      </li>
                  
              
                    </ul>
                </div>
          
    
    </div>
  </div>

  <div id="directo" if={!modalabierto }>
      <div id="scrollhorizontals">
        { montarsroollhorizontal() }
      </div>
      <!-- Primary-colored flat button -->
      <button class="mdl-button mdl-js-button mdl-button--primary"  onclick='{ hacermovientohori }'>
        Button
      </button>
    </div>
  <div>
    <dialog class="mdl-dialog" id="frsvdfds" style="display: none;width:66vw ;height:77vh ;z-index: -4;margin-top:7rem;">

      <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
        <button type="button" class="mdl-button close" onclick='{ cerrarmodaliratrassss }'>
          salir sin guardar
          <i class="material-icons">cancel</i>
        </button>
      </div>
      <div class="mdl-dialog__content" id="renderizarseguncs">

      </div>
    </dialog>
  </div>
  <script>
    
    this.on('mount',()=>{

      this.salu = opts.data[1].stados
      this.rect = opts.data[2].diapo.map((x)=>{
        return x
      })
      this.rpes = opts.data[2].diapo.map((x)=>{
        return x
      })
      
      this.update()
    }) 

    this.montarsroollhorizontal = ()=>{
        let sed = new Promise((resolve, reject) => {
          let x = resolve(document.querySelector('#scrollhorizontals'))
          return x
        }) 
        sed.then((elem)=>{
          elem.innerHTML = ''
          let rerere = this.rect
          
          let sr = riot.tag('sasd',my_tmpl.innerHTML , function(opts) {
            this.rds = rerere
            this.opensiur = this.root.parentElement.parentElement.parentElement._tag.abrirelmodalmodificadorpresentacion
           })
           elem.innerHTML = `<${sr}></${sr}>`
          riot.mount(sr)
        })
        
      } 
      
      this.modalabierto = false
    
    this.abrirocultarmodal = ()=>{
      let modal = document.querySelector('#frsvdfds')
      this.modalabierto = !this.modalabierto
      modal.style.display = (!this.modalabierto)? 'none':'block'
      this.update()
    }
    this.mountarunformulario = (a, b)=>{
                      let rendercmpntreal = a 
                      let introHere = document.querySelector('#renderizarseguncs')
                        
                        introHere.innerHTML=''
                        introHere.innerHTML = `<${rendercmpntreal}></${rendercmpntreal}>`
      
                      riot.mount(rendercmpntreal, function () {
                        return {
                          inde:b
                        }
                      })
    }
    this.crearnuevoestado = (e)=>{
      let fthg = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('crearestado', fthg)
    }
    this.borrarcurrentstate = (e)=>{
      let fthg = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('borraresteestado', fthg)
    }
    this.editarcurrentstate = (e)=>{
      let fthg = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('editaresteestado', fthg)
    }
    this.borrarestetag = (e)=>{
      let fthg = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('quitartags', fthg)
    }
    this.crearestetag = (e)=>{
      let juju = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('agregartags', juju)
    }
    this.borraresteidioma = (e)=>{
      let fytyt = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('quitaridiomas', fytyt)
    }
    this.crearesteidioma = (e)=>{
      let nhnh = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('agregaridiomas', nhnh)
    }
    this.cambiarasistentebot = (e)=>{
      let fhhhh = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('cambiarbots', fhhhh)
    }
    this.nuevaredsocial = (e)=>{
      let fdfdfd = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('crearredocialnueva', fdfdfd)
    }
    this.borrarlaredsocialindicada = (e)=>{
      let fdcx = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('borrarestaredsocial', fdcx)
    }
    this.editareltextoindicado = (e)=>{
      let fddss = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('genericoeditartexto', fddss)
    }
    this.abrirelmodalmodificadorpresentacion = (e)=>{
      let asr = this.presentacioncont 
      this.abrirocultarmodal()
      this.mountarunformulario('modificardiapo', asr)
    }
    this.cerrarmodaliratrassss = ()=>{
      this.modalabierto = false
      let modal = document.querySelector('#frsvdfds')
      modal.style.display = (!this.modalabierto)? 'none':'block'
      this.update()
    }
    this.presentacioncont = 0
    this.hacermovientohori = ()=>{
 
      // let nodo = document.querySelector('#scrollhorizontals').children[0].children[0]
      // let aseveas = document.querySelector('#scrollhorizontals').children[0].removeChild(nodo)
      this.rect.splice(0,1)
      // console.log(aseveas,nodo )
      this.presentacioncont = this.presentacioncont + 1 
      if(this.presentacioncont>5){

        // this.montarsroollhorizontal()
        this.presentacioncont = 0
        console.log(this.presentacioncont,'nuevo')
        this.rect = this.rpes.map((x)=>{
          return x
        })
        this.update()
        return
      }
      this.update()
      console.log(this.presentacioncont,'viejo')

    }
  </script>
  <template id="my_tmpl">
    <article each={comens , e in rds} >
     <div class="mdl-card--border mdl-shadow--16dp" style="min-height:100%;background:{ comens.back };">
      <div class="mdl-card__supporting-text">
            <h2 class="mdl-card__title-text">{ comens.titu}</h2>
          { comens.desc}.
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" data-index={ e } onclick='{ opensiur }'>
          <i class="material-icons">share</i>
        </button>
      </div>
      </div>
    </article>
  </template>
</presentacion>
<comentarios>
  <style>
    comentarios{
      display:grid;
      grid-template-columns: auto;
      grid-template-rows: auto;
      justify-items: center;
      align-items: center;
    }
  </style>

  <div each='{ comentarios , e in opts.data }' class="mdl-card mdl-shadow--4dp" style="margin-top:5rem;width:55vw;" if={
    !modalabierto }>
    <div class="mdl-card__title">
      <h2 class="mdl-card__title-text" style="justify-self:center;">{comentarios.tipo} </h2>
    </div>
    <div class="mdl-card__supporting-text">
      <p> {comentarios.puntaje} estrellas</p>
    </div>
    <div class="mdl-card__supporting-text" style="display:flex;justify-content:center;text-align: justify;">
      {comentarios.texto}

    </div>
    <div class="mdl-card__supporting-text" style="display:flex;justify-content:end;align-content: flex-start;">

      {comentarios.autor},{comentarios.fechacreacion}
    </div>
    <div class="mdl-card__menu">
      <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" data-index='{ e }' onclick='{ abrirborrarconfirmacion }'>
        <i class="material-icons">cancel</i>
      </button>
    </div>
    <div class="mdl-card__actions mdl-card--border">
      <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" data-index='{ e }' onclick='{ abrircomentarios }'>
        comentar
      </a>

      <div class="mdl-layout-spacer"></div>
      <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" data-index='{ e }' onclick='{ abrirgustos }'>
        <i class="material-icons">mood</i>
      </button>
      <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" data-index='{ e }' onclick='{ abririndiferente }'>
        <i class="material-icons">sentiment_neutral</i>

      </button>
      <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" data-index='{ e }' onclick='{ abrirdisgusto }'>
        <i class="material-icons">mood_bad</i>

      </button>

    </div>
  </div>
  <div>
    <dialog class="mdl-dialog" id="frsvd" style="display: none;width:66vw ;height:77vh ;z-index: -4;margin-top:7rem;">

      <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
        <button type="button" class="mdl-button close" onclick='{ cerrarmodaliratras }'>
          salir sin guardar
          <i class="material-icons">cancel</i>
        </button>
      </div>
      <div class="mdl-dialog__content" id="renderizarsegun">

      </div>
    </dialog>
  </div>
  <script>
    this.modalabierto = false
    
    this.abrirocultarmodal = ()=>{
      let modal = document.querySelector('#frsvd')
      this.modalabierto = !this.modalabierto
      modal.style.display = (!this.modalabierto)? 'none':'block'
    }
    this.mountarunformulario = (a, b)=>{
                      let rendercmpntreal = a 
                      let introHere = document.querySelector('#renderizarsegun')
                        
                        introHere.innerHTML=''
                        introHere.innerHTML = `<${rendercmpntreal}></${rendercmpntreal}>`
              
                      riot.mount(rendercmpntreal, function () {
                        return {
                          data:opts.data[b],
                          inde:b
                        }
                      })
    }
    this.abrircomentarios = (e)=>{
      let asr = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('comentform', asr)
    }
    this.abrirgustos = (e)=>{
      let asrd = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('gustosform', asrd)
    }
    this.abrirdisgusto = (e)=>{
      let fdr = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('disgustform',fdr)
    }
    this.abririndiferente = (e)=>{
      let trv = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('indifereform', trv)
    }
    this.abrirborrarconfirmacion = (e)=>{
      let ereds = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('borrarconfirm', ereds)
    }
    this.cerrarmodaliratras = ()=>{
      this.modalabierto = false
      let modal = document.querySelector('#frsvd')
      modal.style.display = (!this.modalabierto)? 'none':'block'
    }


  </script>

</comentarios>
<timeline>
  <style>
    timeline{
      display:grid;
      grid-template-columns: auto;
      grid-template-rows: auto;
      justify-items: center;
      align-items: center;
  }
  </style>
  <!-- Colored FAB button -->
  <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored" onclick='{ agregarnuevoevento }' style="position:fixed;bottom:3%;left:88%;">
    <i class="material-icons">add</i>
  </button>

  <div each='{ timeline , e in arrtit }' class="mdl-card mdl-shadow--4dp" style="margin-top:5rem;width:33vw;" if={
    !modalabierto }>
    <div class="mdl-card__title">
      <h2 class="mdl-card__title-text" style="justify-self:center;">{timeline.a}</h2>
    </div>
    <div class="mdl-card__supporting-text">
      {timeline.b}
    </div>
    <div class="mdl-card__menu">
      <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" data-index='{ e }' onclick='{ abrirborrarconfirmacion }'>
        <i class="material-icons">cancel</i>
      </button>
    </div>
    <div class="mdl-card__actions mdl-card--border">
      <div class="mdl-layout-spacer"></div>
      <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" data-index='{ e }' onclick='{ editarinformacion }'>
        <i class="material-icons">mood_bad</i>
      </button>
    </div>
  </div>
  <div>
    <dialog class="mdl-dialog" id="frsv" style="display: none;width:66vw ;height:77vh ;z-index: -4;margin-top:7rem;">

      <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
        <button type="button" class="mdl-button close" onclick='{ cerrarmodaliratras }'>
          salir sin guardar
          <i class="material-icons">cancel</i>
        </button>
      </div>
      <div class="mdl-dialog__content" id="renderizarsegun">

      </div>
    </dialog>
  </div>
  <script>

    this.on('mount',()=>{
      let ort = opts.data
      let sort = ort.sort((a,b)=>{
        return new Date(b.a) - new Date(a.a);
      })
      this.arrtit = sort
      this.update()
    })
   this.modalabierto = false
    
    this.abrirocultarmodal = ()=>{
      let modal = document.querySelector('#frsv')
      this.modalabierto = !this.modalabierto
      modal.style.display = (!this.modalabierto)? 'none':'block'
      
    }
    this.mountarunformulario = (a, b)=>{
                      let rendercmpntreal = a 
                      let introHere = document.querySelector('#renderizarsegun')
                        
                        introHere.innerHTML=''
                        introHere.innerHTML = `<${rendercmpntreal}></${rendercmpntreal}>`
              
                      riot.mount(rendercmpntreal, function () {
                        return {
                          data:opts.data[b],
                          inde:b
                        }
                      })
    }
    this.agregarnuevoevento = ()=>{

      this.abrirocultarmodal()
      this.mountarunformulario('nuevoeventoform',0)
    }
    this.abrirborrarconfirmacion = (e)=>{
      let ereds = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('borraritemform', ereds)
    }
    this.editarinformacion = (e)=>{
      let ereds = e.target.attributes['data-index'].value
      this.abrirocultarmodal()
      this.mountarunformulario('editarinfoform', ereds)
    }
    this.cerrarmodaliratras = ()=>{
      this.modalabierto = false
      let modal = document.querySelector('#frsv')
      modal.style.display = (!this.modalabierto)? 'none':'block'
    }
    
  </script>

</timeline>
<productos>
  <h1>productos {opts.data[0] }</h1>
</productos>
<giftcards>
  <h1>
    giftcards {opts.data[0] }
  </h1>
</giftcards>
<shareprom>
  <h1>
    {opts.data[0].n } shareproms {opts.data[0].a }
  </h1>
</shareprom>

<!-- formularios comentarios -->

<comentform>
  <h1>coment, {opts.data}</h1>
</comentform>
<gustosform>
  <h1>gustos, {opts.data}</h1>
</gustosform>
<disgustform>
  <h1>disgustos, {opts.data}</h1>
</disgustform>
<indifereform>
  <h1>indiferente, {opts.data}</h1>
</indifereform>
<borrarconfirm>
  <h1>realemente desas borrar este comentario?</h1>
  <button onclick='{ borrarestecomentario }'>
    Si,porfavor
  </button>
  <script>
    this.on('mount',()=>{
        console.log(opts.data, opts.inde);
      })

      this.borrarestecomentario = () => {

        let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data
        console.log(objectomaster.comentarios.data)
        this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo = true
        this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratras() 
        console.log('cambio algo?',this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo)
        riot.update()
        
        // objectomaster.comentarios.data.splice(opts.inde, 1)
      }
    </script>
</borrarconfirm>
<!-- formularios timeline -->
<editarinfoform>
  <h1>editar eltimeline este item {opts.inde}</h1>


  <input type="text" ref="editarevento">
  <button onclick='{ conestoeditoelevento }'>editar</button>

  <script>
    this.on('mount',()=>{
    console.log(opts.data, opts.inde, 'editar');
  })
  this.conestoeditoelevento = ()=>{
        let fes = this.refs.editarevento.value
        let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data
        objectomaster.timeline.data[opts.inde].b = fes
        this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo = true
        console.log('cambio algo?',this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo)
        this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratras()
        riot.update()
  }

</script>

</editarinfoform>
<borraritemform>
  <h1>confirma vorrar este item de teime line {opts.inde}</h1>
  <button onclick='{ borrarestecomentario }'>borrar</button>
  <script>
    this.on('mount',()=>{
        console.log(opts.data, opts.inde);

      })

      this.borrarestecomentario = () => {
        
        let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data
        objectomaster.timeline.data.splice(opts.inde, 1)
        console.log(objectomaster.timeline.data)
        this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo = true
        this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratras() 
        console.log('cambio algo?',this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo)
        riot.update()
        
      }
  </script>
</borraritemform>
<nuevoeventoform>
  <h1>agregar este objeto</h1>
  <input type="date" ref="tiempos" name="" id="">
  <input type="text" ref="sucedio" name="" id="">

  <button onclick='{ esteeslaconfirmaciondeagregar }'>
    <i class="material-icons">add</i>
  </button>

  <script>
    this.on('mount', () => {
      console.log(opts.data)
    })
    this.esteeslaconfirmaciondeagregar = () => {

      let sucedi = this.refs.sucedio.value
      let nuevod = this.refs.tiempos.value
      console.log(nuevod, sucedi)



      let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement
        .parentElement.parentElement._tag.opts.data
      objectomaster.timeline.data.push({
        a: nuevod,
        b: sucedi,
      })
      console.log(objectomaster.timeline.data)
      this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement
        ._tag.cambioalgo = true
      console.log('cambio algo?', this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement
        .parentElement.parentElement._tag.cambioalgo)
      this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratras()
      riot.update()
    }
  </script>
</nuevoeventoform>
<presentacioneditar>
  <h1>son la presentacion {opts.inde} {opts.data}</h1>
</presentacioneditar>

<!-- FORMULARIOS PRESENTACION SON 9 -->
<modificardiapo>
    <style>
        modificardiapo{
          display: grid;
          grid-template-columns:1fr;
          grid-template-rows:11vh 33vh 11vh;
          grid-template-areas:
          "yy"
          "jj"
          "uu";
          justify-items: center;
          align-items: center;
        }
      </style>
      <h5 style="grid-area:yy;">editar diapositiva</h5>
      <label style="grid-area:jj;">
        titulo diapositiva:
        <input type="text" ref="estemedaeltitulo">
        texto diapositiva:
        <input type="text" ref="estemedaeltexto">
      </label>
      <button style="grid-area:uu;" onclick='{ confirmarediciondiapositiva }'>confirmar</button>
      <script>
        this.on('mount',()=>{
          
          let sde = this.root.parentElement.parentElement.parentElement.parentElement._tag.rpes[opts.inde]
          console.log(sde)
          this.update()
        })
        this.confirmarediciondiapositiva = ()=>{
          let inutss = this.refs.estemedaeltitulo.value
          let dsaerf = this.refs.estemedaeltexto.value


          let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data.presentacion.data[2]
          objectomaster.diapo[opts.inde].titu = inutss
          objectomaster.diapo[opts.inde].desc = dsaerf
          this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo = true
          this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratrassss() 
          console.log('cambio algo?',this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo)
          riot.update()
        }

      </script>
</modificardiapo>
<crearestado>
    <style>
        crearestado{
          display: grid;
          grid-template-columns:1fr;
          grid-template-rows:11vh 33vh 11vh;
          grid-template-areas:
          "yy"
          "jj"
          "uu";
          justify-items: center;
          align-items: center;
        }
      </style>
      <h5 style="grid-area:yy;">crear nuevo estado</h5>
  <label style="grid-area:jj;">
    estado:
    <input type="text" ref="crearunestado">
  </label>
  <button style="grid-area:uu;" onclick='{ confirmarcreacion }'>crear!</button>
  <script>
    this.confirmarcreacion = ()=>{
    let inutss = this.refs.crearunestado.value

    let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data.presentacion.data[1]
    objectomaster.stados.push({
      stado: inutss,
      creac: Date(Date.now())
    }) 
    this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo = true
    this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratrassss() 
    console.log('cambio algo?',this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo)
    riot.update()
  }
  </script>
</crearestado>
<borraresteestado>
    <style>
        borraresteestado{
          display: grid;
          grid-template-columns:1fr;
          grid-template-rows:11vh 33vh 11vh;
          grid-template-areas:
          "yy"
          "jj"
          "uu";
          justify-items: center;
          align-items: center;
        }
      </style>
      <h5 style="grid-area:yy;"> seguro quieres borrar?</h5>
      <span class="mdl-chip" style="grid-area:jj;">
          <span class="mdl-chip__text">{ estadomuestra.stado }</span>
      </span>
      <button style="grid-area:uu;" onclick='{ borraresteestadoinutil }'>confirmar </button>
      <script>
      this.on('mount', ()=>{
         let sde = this.root.parentElement.parentElement.parentElement.parentElement._tag.opts.data[1].stados
         this.estadomuestra = sde[opts.inde]
        this.update()
      })
      this.borraresteestadoinutil = ()=>{
        let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data
        objectomaster.presentacion.data[1].stados.splice(opts.inde, 1)
        this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo = true
        this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratrassss() 
        console.log('cambio algo?',this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo)
        riot.update()
      }
      </script>
</borraresteestado>
<editaresteestado>
    <style>
        editaresteestado{
          display: grid;
          grid-template-columns:1fr;
          grid-template-rows:11vh 33vh 11vh;
          grid-template-areas:
          "yy"
          "jj"
          "uu";
          justify-items: center;
          align-items: center;
        }
      </style>
      <h5 style="grid-area:yy;"> editar el contenido</h5>
  <label style="grid-area:jj;">
    estado { opts.inde }:
    <input type="text" ref="editoelestado">
  </label>
  <button style="grid-area:uu;" onclick='{ terminardeeditarestado }'>completar edicion</button>

  <script>
  this.terminardeeditarestado = ()=>{
    let inutss = this.refs.editoelestado.value

    let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data.presentacion.data[1]
    objectomaster.stados[opts.inde].stado = inutss
    this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo = true
    this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratrassss() 
    console.log('cambio algo?',this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo)
    riot.update()
  }
  </script>
</editaresteestado>
<genericoeditartexto>
  <style>
    genericoeditartexto{
      display: grid;
      grid-template-columns:1fr;
      grid-template-rows:11vh 33vh 11vh;
      grid-template-areas:
      "yy"
      "jj"
      "uu";
      justify-items: center;
      align-items: center;
    }
  </style>
  <h5 style="grid-area:yy;">editar texto { opts.inde }</h5>
    <label style="grid-area:jj;">
        {editar}:
        <input type="text" ref="acacambioeltexto">
    </label>
    <button style="grid-area:uu;" onclick='{ editarnuevotexto }'>confirmar</button>
    <script>
    this.on('mount',()=>{
       let sdc = this.root.parentElement.parentElement.parentElement.parentElement._tag.opts.data[0]
       this.editar = sdc[opts.inde]
      console.log(this.editar)
      this.update()
    })
    this.editarnuevotexto =()=>{
      
        let inutss = this.refs.acacambioeltexto.value

        let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data.presentacion.data[0]
         objectomaster[opts.inde] = inutss
        this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo = true
        this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratrassss() 
        console.log('cambio algo?',this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo)
        riot.update()
    }
    </script>
</genericoeditartexto>
<crearredocialnueva>
    <style>
  
  crearredocialnueva{
                      display: grid;
                      grid-template-columns:1fr;
                      grid-template-rows:11vh 33vh 11vh;
                      grid-template-areas:
                      "yy"
                      "jj"
                      "uu";
                      justify-items: center;
                      align-items: center;
                    }
                  </style>
                  <h5 style="grid-area:yy;">Crea una nueva palabra clave</h5>
    <label style="grid-area:jj;">
        creaer nuva red social:
        <input type="text" ref="acasacolared">
        <input type="text" ref="acasacoellink">
    </label>
    <button style="grid-area:uu;" onclick='{ agregarnuevaredsocial }'>crear</button>
    <script>
      this.agregarnuevaredsocial = ()=>{

        let inuts = this.refs.acasacolared.value
        let inutss = this.refs.acasacoellink.value

        let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data
        objectomaster.presentacion.data[0].redesso.push({
          red:inuts,
          url:inutss
        })
        this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo = true
        this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratrassss() 
        console.log('cambio algo?',this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo)
        riot.update()
        }
    </script>
</crearredocialnueva>
<borrarestaredsocial>
    <style>
  
        borrarestaredsocial{
                      display: grid;
                      grid-template-columns:1fr;
                      grid-template-rows:11vh 33vh 11vh;
                      grid-template-areas:
                      "yy"
                      "jj"
                      "uu";
                      justify-items: center;
                      align-items: center;
                    }
                  </style>
      <h5 style="grid-area:yy;">borrar esta red social</h5>
      <span class="mdl-chip" style="grid-area:jj;">
          <span class="mdl-chip__text">{ redsoci.red }</span>
      </span>
      <button style="grid-area:uu;" onclick='{ quitarestaredsocial }'>confirmacion</button>
      <script>
      this.on('mount',()=>{
        this.redsoci = this.root.parentElement.parentElement.parentElement.parentElement._tag.opts.data[0].redesso[opts.inde]
        this.update()
      })
      this.quitarestaredsocial = ()=>{
        let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data
        objectomaster.presentacion.data[0].redesso.splice(opts.inde, 1)
        this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo = true
        this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratrassss() 
        console.log('cambio algo?',this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo)
        riot.update()
    }
      </script>
</borrarestaredsocial>
<agregaridiomas>
    <style>
  
  agregaridiomas{
                display: grid;
                grid-template-columns:1fr;
                grid-template-rows:11vh 33vh 11vh;
                grid-template-areas:
                "yy"
                "jj"
                "uu";
                justify-items: center;
                align-items: center;
              }
            </style>
            <h5 style="grid-area:yy;">Crea una nueva palabra clave</h5>
          <label style="grid-area:jj;">
            idioma:
            <input type="text" ref="conestecambioidiomas">
        </label>
        <button style="grid-area:uu;"onclick='{ guardarnuevoidioma }'>confirmar</button>
        <script>
           this.guardarnuevoidioma = ()=>{

              let inuts = this.refs.conestecambioidiomas.value
              let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data
              objectomaster.presentacion.data[0].lenguaj.push({
                lengh:inuts
              })
              this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo = true
              this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratrassss() 
              console.log('cambio algo?',this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo)
              riot.update()
              }
        </script>
</agregaridiomas>
<quitaridiomas>
    <style>
  
        quitaridiomas{
                display: grid;
                grid-template-columns:1fr;
                grid-template-rows:11vh 33vh 11vh;
                grid-template-areas:
                "rr"
                "bb"
                "nn";
                justify-items: center;
                align-items: center;
              }
            </style>
    <h5 style="grid-area:rr;">borrar este idioma</h5>
    <span class="mdl-chip" style="grid-area:bb;">
        <span class="mdl-chip__text">{ idioma.leng }</span>
    </span>
    <button style="grid-area:nn;" onclick='{ quitaresteidiomaespecifico }'>confirmacion</button>
    <script>
      this.on('mount',()=>{
        this.idioma = this.root.parentElement.parentElement.parentElement.parentElement._tag.opts.data[0].lenguaj[opts.inde]
        this.update()
      })
      this.quitaresteidiomaespecifico = ()=>{
        let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data
        objectomaster.presentacion.data[0].lenguaj.splice(opts.inde, 1)
        this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo = true
        this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratrassss() 
        console.log('cambio algo?',this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo)
        riot.update()
    }
    </script>  
</quitaridiomas>
<agregartags>
    <style>
  
  agregartags{
          display: grid;
          grid-template-columns:1fr;
          grid-template-rows:11vh 33vh 11vh;
          grid-template-areas:
          "hg"
          "hr"
          "cv";
          justify-items: center;
          align-items: center;
        }
      </style>
  <h5 style="grid-area:hg;">Crea una nueva palabra clave</h5>
  <label style="grid-area:hr;">
    crear una nueva palabra clave:
  <input type="text" ref='estenuevo'>
  </label>
  <button style="grid-area:cv;" onclick='{guardarnuevotag}'>guardar editado</button>
  <script>

    this.guardarnuevotag = ()=>{

        let inuts = this.refs.estenuevo.value
        let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data
        objectomaster.presentacion.data[0].tags.push({
          tema:inuts
        })
        this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo = true
        this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratrassss() 
        console.log('cambio algo?',this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo)
        riot.update()
    }
  </script>
</agregartags>
<quitartags>
  <style>
  
    quitartags{
      display: grid;
      grid-template-columns:1fr;
      grid-template-rows:11vh 33vh 11vh;
      grid-template-areas:
      "kjies"
      "rerer"
      "cpmfoe";
      justify-items: center;
      align-items: center;
    }
  </style>
  <h5 style="grid-area:kjies;">quitar este tag</h5>
  <span class="mdl-chip" style="grid-area:rerer;">
      <span class="mdl-chip__text">{ especifico.tema }</span>
  </span>
  <button style="grid-area:cpmfoe;" onclick='{ quitarestetagespecifico }'>confirmacion</button>

  <script>
    this.on('mount',()=>{
      this.especifico = this.root.parentElement.parentElement.parentElement.parentElement._tag.opts.data[0].tags[opts.inde]
      this.update()
    })
    this.quitarestetagespecifico = ()=>{
        let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data
        objectomaster.presentacion.data[0].tags.splice(opts.inde, 1)
        this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo = true
        this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratrassss() 
        console.log('cambio algo?',this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement._tag.cambioalgo)
        riot.update()
    }
  </script>
</quitartags>
<cambiarbots>
  <style>
    cambiarbots{
      display: grid;
      grid-template-columns:19vw 19vw 19vw;
      grid-template-rows:11vh 33vh 11vh;
      grid-template-areas:
      "julio julio julio"
      "atras mayo adelan"
      "confi confi confi";
      justify-items: center;
      align-items: end;
    }
  </style>
    <h5 style="grid-area:julio;">Escoge la apariencia</h5>
    <div style="grid-row:2/3;grid-column:1/4;height:33vh;width: 100%;background:url('../client/assets/img/{ this.cartamuestra }') center / 25%;background-repeat: no-repeat;">

    </div>
    <!-- FAB button -->
    <button class="mdl-button mdl-js-button mdl-button--fab" style="grid-area:atras;" onclick='{ iratras }'>
        <i class="material-icons">android</i>
      </button>
    <!-- FAB button -->
    <button class="mdl-button mdl-js-button mdl-button--fab" style="grid-area:adelan;margin-left:33%;" onclick='{ iradelante }'>
        <i class="material-icons">add</i>
      </button>
    
    <button style="grid-area:confi;" onclick='{ confirmarcambiodeapariencia }'>confirmacion</button>
    <script>
        this.opcionesbot = [
          'bot1.png',
          'bot2.png',
          'bot3.png',
          'bot4.png',
          'bot5.png',
          'bot6.png',
          'bot7.png',
        ]
      this.on('mount', ()=>{
      
        let g = opts.inde[3]-1
        this.currentposit = g
        this.cartamuestra = opts.inde
        this.update()
      })

      this.confirmarcambiodeapariencia = ()=>{
          let objectomaster = this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement
          .parentElement.parentElement._tag.opts.data
          objectomaster.presentacion.data[0].botimg = this.cartamuestra
          console.log(objectomaster.presentacion.data[0].botimg)
          this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement
            ._tag.cambioalgo = true
          console.log('cambio algo?', this.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement
            .parentElement.parentElement._tag.cambioalgo)
          this.root.parentElement.parentElement.parentElement.parentElement._tag.cerrarmodaliratrassss()
          riot.update()
      }


      this.iratras = ()=>{
        let m = this.currentposit
        switch(m){
          case 0:
          this.cartamuestra = this.opcionesbot[6]
          this.currentposit = 6
          console.log(this.currentposit)
          this.update()
          break;
          case 6:
          let jkw = this.currentposit - 1
          this.cartamuestra = this.opcionesbot[jkw]
          console.log(this.cartamuestra)
          this.currentposit = jkw
          this.update()
          break;
          case 5:
          let jke = this.currentposit - 1
          this.cartamuestra = this.opcionesbot[jke]
          console.log(this.cartamuestra)
          this.currentposit = jke
          this.update()
          break;
          case 4:
          let jkr = this.currentposit - 1
          this.cartamuestra = this.opcionesbot[jkr]
          console.log(this.cartamuestra)
          this.currentposit = jkr
          this.update()
          break;
          case 3:
          let jkt = this.currentposit - 1
          this.cartamuestra = this.opcionesbot[jkt]
          console.log(this.cartamuestra)
          this.currentposit = jkt
          this.update()
          break;
          case 2:
          let jky = this.currentposit - 1
          this.cartamuestra = this.opcionesbot[jky]
          console.log(this.cartamuestra)
          this.currentposit = jky
          this.update()
          break;
          case 1:
          let jku = this.currentposit - 1
          this.cartamuestra = this.opcionesbot[jku]
          console.log(this.cartamuestra)
          this.currentposit = jku
          this.update()
          break;
          default:
        }

      }
      this.iradelante = ()=>{
        let m = this.currentposit
        switch(m){
          case 6:
          this.cartamuestra = this.opcionesbot[0]
          this.currentposit = 0
          console.log(this.currentposit)
          this.update()
          break;
          case 0:
          let jhj = this.currentposit + 1
          this.cartamuestra = this.opcionesbot[jhj]
          console.log(this.cartamuestra)
          this.currentposit = jhj
          this.update()
          break;
          case 1:
          let jhh = this.currentposit + 1
          this.cartamuestra = this.opcionesbot[jhh]
          console.log(this.cartamuestra)
          this.currentposit = jhh
          this.update()
          break;
          case 2:
          let jhg = this.currentposit + 1
          this.cartamuestra = this.opcionesbot[jhg]
          console.log(this.cartamuestra)
          this.currentposit = jhg
          this.update()
          break;
          case 3:
          let jhf = this.currentposit + 1
          this.cartamuestra = this.opcionesbot[jhf]
          console.log(this.cartamuestra)
          this.currentposit = jh
          this.update()
          break;
          case 4:
          let jhd = this.currentposit + 1
          this.cartamuestra = this.opcionesbot[jhd]
          console.log(this.cartamuestra)
          this.currentposit = jhd
          this.update()
          break;
          case 5:
          let jhv = this.currentposit + 1
          this.cartamuestra = this.opcionesbot[jhv]
          console.log(this.cartamuestra)
          this.currentposit = jhv
          this.update()
          break;
          default:
        }
 
      }
    </script>
</cambiarbots>