<panel-coleccion>
            <style>
                        panel-coleccion{
                          display:grid;
                          grid-template-columns:100vw;
                          grid-template-rows: auto;
                        }
                      </style>
                        
                    
                        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer" style="height: 100vh!important;">
                          <div class="mdl-layout__drawer"style="width: 192px!important;">
                            <span class="mdl-layout-title">componentes</span>
                            <nav class="mdl-navigation" >
                    
                    
                              <a class="mdl-navigation__link" href="#presentacion">presentacion</a>
                              <a class="mdl-navigation__link" href="#comentarios">comentarios</a>
                              <a class="mdl-navigation__link" href="#timeline">timeline</a>
                              <a class="mdl-navigation__link" href="#productos">productos</a>
                              <a class="mdl-navigation__link" href="#giftcards">gift cards</a>
                              <a class="mdl-navigation__link" href="#shareprom">cupones</a>
                              <a class="mdl-navigation__link" href="#impresium">impressiumm</a>
                            </nav>
                          </div>
                          <main  class="mdl-layout__content" style="background-color: #eee!important;margin-left: 192px!important;" >
                            <div style="background:red;">
                               <button onclick='{ ocultardrawer }'>jacer</button><button onclick='{ guardarobjetomaster }'>guardar</button>
                            </div>
                          
                             <div id="acarenderizoloscomponentes"></div>
                          </main>
                          </div>
                      <script>
                    
                    
                        this.guardarobjetomaster = ()=>{
                       
                          let re = window.location.hash
                          let mi = re.split('#')
                          
                          let eda = mi[1]
                          let bed = [{
                            "a":"hola",
                            "n":"kias"
                          },
                          {
                            "a":"hola",
                            "n":"kias"
                          }]
                          sockete.emit('informacion:owner',eda, bed)
                        }
                    
                    
                    
                        this.estaconeldrawer = true
                        this.ocultardrawer = ()=>{
                          let drwr = window.document.querySelector('#drawerconteiner')
                          let mn   = document.querySelector('#mainconteiner')
                          drwr.style.transform = (!this.estaconeldrawer)? "translateX(0)":"translateX(-240px)"
                          mn.style.marginLeft = (!this.estaconeldrawer)? "240px":"0"
                          this.estaconeldrawer = !this.estaconeldrawer
                          }
                    
                    
                        this.on('mount', ()=>{
                            console.log(this.opts.data)
                     
                    
                        })
                    
                        this.on('unmount', ()=>{
                            console.log('guardar en firebase')
                        })
                      </script>
</panel-coleccion>
