const riot = require('riot')
import dispatcher from '../../app/dispatcher'
import '../forms/form-t'
import '../forms/form-s'

riot.tag2('modal', '<dialog class="mdl-dialog" style="display: block;width:66vw ;height:77vh ;z-index: 44;margin-top:7rem;"> <div class="mdl-dialog__actions mdl-dialog__actions--full-width"> <button type="button" class="mdl-button close" onclick="{desmontarModal}"> salir sin guardar <i class="material-icons">cancel</i> </button> </div> <div class="mdl-dialog__content" style="overflow-y: scroll !important;height: 88%;"> <div data-is="{componente}"></div> </div> </dialog> <div class="sidebar-overlay" onclick="{desmontarModal}" if="{esta}"></div>', 'modal .sidebar-overlay,[data-is="modal"] .sidebar-overlay{ position: fixed; top: 0; left: 0; right: 0; bottom: 0; opacity: 0.66; background: #000; z-index: 11; }', '', function(opts) {
  this.desmontarModal = (e) =>{

    this.esta = !this.esta
    this.unmount(true)
  }
  this.esta = true
  this.on('mount', ()=>{
    console.log('montando modal')

    this.update()

  })

  this.on('update', ()=>{
    this.componente = this.opts.m
    riot.mount(this.opts.m)
    console.log('updadeando Modal');
  })

  this.on('unmount', ()=>{
      console.log('desmontando modal')
  })

});
