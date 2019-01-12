const riot = require('riot')
import dispatcher from '../../app/dispatcher'
import '../forms/form-t'
import '../forms/form-s'

<modal>
<style>
.sidebar-overlay {
position: fixed;
top: 0;
left: 0;
right: 0;
bottom: 0;
opacity: 0.66;
background: #000;
z-index: 11;
}
</style>

  <dialog class="mdl-dialog"  style="display: block;width:66vw ;height:77vh ;z-index: 44;margin-top:7rem;" >
 
    <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
      <button type="button" class="mdl-button close" onclick='{ desmontarModal }'>
          salir sin guardar
          <i class="material-icons">cancel</i>
      </button>
    </div>
    <div class="mdl-dialog__content" style="overflow-y: scroll !important;height: 88%;">
      <div data-is='{ componente }'></div>
    </div>
  </dialog>
  <div class="sidebar-overlay" onclick='{ desmontarModal }' if={ esta }></div>


<script>
  this.desmontarModal = (e) =>{
    // riot.unregister('modal')
    // let data = 'cerrando modal'
    // dispatcher.trigger('cerrar_modal', data)
    // console.log('kkegamos');
    this.esta = !this.esta
    this.unmount(true)
  }
  this.esta = true
  this.on('mount', ()=>{
    console.log('montando modal')

    this.update()
      // this.examnen = this.smethod()
  })
 
  this.on('update', ()=>{
    this.componente = this.opts.m
    riot.mount(this.opts.m)
    console.log('updadeando Modal');
  })

  this.on('unmount', ()=>{
      console.log('desmontando modal')
  })




// //
//   this.smethod = () => {
//
//       Promise.all([opts.m]).then((response)=>{
//         this.componente = response[0]
//         console.log(this.componente)
//         this.update()
//       }).catch((err)=>{console.log('fallo');})
//     // var ListApp = riot.mount('','')[0]
//     // this.mountado = riot.mount(this.componente)
//     // console.log('sadlñkasdñas')
//     // return ListApp
//   }
</script>
</modal>
