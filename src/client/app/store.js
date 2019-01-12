import dispatcher from './dispatcher'


class MyStore{
    constructor () {
        dispatcher.on('leer_store', this.leerstore.bind(this))
    }

    leerstore(data){
        database.then((db)=>{
            
            let objStore = db.transaction('owner', 'readwrite').objectStore('owner');
            objStore.complete
            return Promise.all([objStore.getAll()])
        }).then((a)=>{
            dispatcher.trigger('recivir_store',a[0][0].comentarios)
        })
      }

}

export default new MyStore()
