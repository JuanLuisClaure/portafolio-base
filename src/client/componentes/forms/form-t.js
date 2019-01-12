const riot = require('riot')
import dispatcher from '../../app/dispatcher'
riot.tag2('formt', '<h1>vamos a crear un testimonio con tu nombre</h1> <input type="c"> <button onclick="{mandartestimonio}">mandar testimonio</button>', '', '', function(opts) {
        this.on('mount', () => {

            console.log('juanluis')
        })

        this.mandartestimonio = () => {

        }
});