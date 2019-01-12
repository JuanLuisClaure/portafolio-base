const riot = require('riot')
import dispatcher from '../../app/dispatcher'
<formt>
    <h1>vamos a crear un testimonio con tu nombre</h1>
    <input type="c">
    <button onclick='{ mandartestimonio }'>mandar testimonio</button>

    <script>
        this.on('mount', () => {
        
            console.log('juanluis')
        })

        this.mandartestimonio = () => {
            // let re = window.location.hash
            // let mi = re.split('#')

            // let eda = mi[1]
            // // let bed = opts.data[eda].data
            //     console.log(eda)
            // socket.emit('informacion:owner',eda, bed)
        }
    </script>
</formt>