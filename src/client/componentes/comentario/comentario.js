const riot = require('riot')
import dispatcher from '../../app/dispatcher'
riot.tag2('comentario', '<div style="display: grid;justify-content: center;align-content: center;"> <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored" onclick="{medisgusta}"> <i class="material-icons">add</i> </button> </div> <div style="display: grid;justify-content: left;align-content: baseline;"> <div id="loaderco" style="display:none;background: black;height:11vh;width:17vw"> </div> <ul style="margin:66% 0 0 -66%;list-style:none;"> <li each="{info, i in cajon}"> <div id="{i+\'ec\'}" class="demo-card-event mdl-card mdl-shadow--2dp"> <div class="mdl-card__title mdl-card--expand"> <div style="align-self: end; max-width: 17em; word-break: break-all;"> <h5 style="background: rgb(27, 33, 71);padding:.92em .92em;width:auto;">{info.tipome}</h5> <h5 style="background: rgb(27, 33, 71);padding:.492em .5em;width:auto;">{info.name}</h5> <ul style="display: flex;flex-direction: row;list-style: none;"> <li each="{i in info.puntaje}" class="estrellapuntaje"> <button class="mdl-button mdl-js-button mdl-button--icon"> <i class="material-icons">star</i> </button> </li> </ul> </div> </div> <div class="mdl-card__actions mdl-card--border" style="padding: 2.3em 3.2em;"> <p>{info.opinion}</p> <div> <ul style="display: flex;flex-direction: row;list-style: none;position: absolute;bottom: 0;left: 0;"> <li class="estrellapuntajes"> <span class="mdl-badge" data-badge="24"> <i class="material-icons" style="color:black;">mood</i> </span> </li> <li class="estrellapuntajes"> <span class="mdl-badge" data-badge="4"> <i class="material-icons" style="color:black;">sentiment_neutral</i> </span> </li> <li class="estrellapuntajes"> <span class="mdl-badge" data-badge="34"> <i class="material-icons" style="color:black;">mood_bad</i> </span> </li> </ul> </div> </div> </div> </li> </ul> </div> <div style="display: grid;justify-content: center;align-content: center;"> <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored" onclick="{megusta}"> <i class="material-icons">add</i> </button> </div> <div style="display: grid;justify-content: center;align-content: center;"> <a href="" onclick="{agregarmiopinion}"> opinar </a> </div> <div style="display: grid;justify-content: center;align-content: center;"> <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored" onclick="{mevale}"> <i class="material-icons">add</i> </button> </div> <div style="display: grid;justify-content: center;align-content: center;"> <a href="" onclick="{agregarmitestimonio}"> comentar </a> </div>', 'comentario .demo-card-event.mdl-card,[data-is="comentario"] .demo-card-event.mdl-card{ width: 44vw; height: 55vh; background: #3E4EB8; position:absolute; } comentario .demo-card-event>.mdl-card__actions,[data-is="comentario"] .demo-card-event>.mdl-card__actions{ border-color: rgba(255, 255, 255, 0.2); } comentario .demo-card-event>.mdl-card__title,[data-is="comentario"] .demo-card-event>.mdl-card__title{ align-items: flex-start; } comentario .demo-card-event>.mdl-card__title>h4,[data-is="comentario"] .demo-card-event>.mdl-card__title>h4{ margin-top: 0; } comentario .demo-card-event>.mdl-card__actions,[data-is="comentario"] .demo-card-event>.mdl-card__actions{ display: flex; box-sizing: border-box; align-items: center; flex-direction: column; } comentario .demo-card-event>.mdl-card__actions>.material-icons,[data-is="comentario"] .demo-card-event>.mdl-card__actions>.material-icons{ padding-right: 10px; } comentario .demo-card-event>.mdl-card__title,[data-is="comentario"] .demo-card-event>.mdl-card__title,comentario .demo-card-event>.mdl-card__actions,[data-is="comentario"] .demo-card-event>.mdl-card__actions,comentario .demo-card-event>.mdl-card__actions>.mdl-button,[data-is="comentario"] .demo-card-event>.mdl-card__actions>.mdl-button{ color: #fff; } comentario .estrellapuntaje,[data-is="comentario"] .estrellapuntaje{ margin:0 0; } comentario .estrellapuntajes,[data-is="comentario"] .estrellapuntajes{ margin:0 3em; } comentario .event-on,[data-is="comentario"] .event-on{ border:21px solid black; }', '', function(opts) {
        const comentario = this
        comentario.conectado = false
        comentario.cajon = []
        comentario.on('mount',()=>{

            dispatcher.trigger('leer_store', 'ownercoments')
            dispatcher.on('recivir_store', (b)=>{
                console.log(b.data, 'esas aca')
                comentario.cajon = b.data
                comentario.update()
           })

        })

        comentario.agregarmitestimonio = ()=>{
            console.log('testimonio')
            dispatcher.trigger('crear_modal','formt' )
        }
        comentario.agregarmiopinion = ()=>{
            console.log('opinion')
            dispatcher.trigger('crear_modal','forms' )
        }
        comentario.megustaboton = ()=>{

        }
        comentario.nomegustaboton = ()=>{}
        comentario.medaigualboton = ()=>{}

        comentario.contador = 0
        comentario.mevale = () => {
            let turno = comentario.contador
            let x = document.getElementById(`${turno}ec`).classList.add('slide-out-bottom')

            comentario.contador++
            console.log(comentario.contador, 'apretado me vale');
        }
        comentario.megusta = () => {
            let turno = comentario.contador
            let x = document.getElementById(`${turno}ec`).classList.add('slide-out-br')

            comentario.contador++

            console.log(comentario.contador, 'apretado me gusta');
        }
        comentario.medisgusta = () => {
            let turno = comentario.contador
            let x = document.getElementById(`${turno}ec`).classList.add('slide-out-bl')

            comentario.contador++
            console.log(comentario.contador, 'apretado me disgusta');
        }
        comentario.on('update', () => {
            if(comentario.contador > 2){
                comentario.contador = 0
                comentario.cajon = []
                document.getElementById('loaderco').style.display='block'
                setTimeout(()=>{
                    document.getElementById('loaderco').style.display='none'
                    console.log('sd', comentario.cajon);
                    let sda = {
                                name:'juanluis',
                                style:'background: beige;z-index: 6;transform: translateY(26px);',
                                imagen:'background:url("./client/assets/img/4.png") center / cover',
                                stars:3,
                                opinion:'Lorem ipsum dolor, sit a',
                                tipome:'QUEJA',
                                like:0,
                                dislike:0,
                                whatever:0,
                                }

                    comentario.cajon.push(sda)
                    let sdsa = {
                                name:'Evelincitamamacita',
                                style:'z-index: 5;transform: translate3d(17px, 11px, 0px);',
                                imagen:'background:url("./client/assets/img/4.png") center / cover',
                                stars:4,
                                opinion:'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fugit officia atque nam dignissimos impedit autem, quis molestiae id, necessitatibus expedita inventore deleniti cum provident rerum corporis minima! Modi, beatae ex.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fugit officia atque nam dignissimos impedit autem, quis molestiae id, necessitatibus expedita inventore deleniti cum provident rerum corporis minima! Modi, beatae ex.',
                                tipome:'reseña',
                                like:0,
                                dislike:0,
                                whatever:0,
                                }

                    comentario.cajon.push(sdsa)
                    let sdads = {
                                name:'Jaqueline',
                                style:'background: #eb5800;z-index: 4;transform: translate3d(29px,2px,0px);',
                                imagen:'background:url("./client/assets/img/4.png") center / cover',
                                stars:5,
                                opinion:'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fugit officia atque nam dignissimos impedit autem, quis molestiae id, necessitatibus expedita inventore deleniti cum provident rerum corporis minima! Modi, beatae ex.',
                                tipome:'comentario',
                                like:0,
                                dislike:0,
                                whatever:0,
                                }

                    comentario.cajon.push(sdads)
                    comentario.update()
                },2500)
            }
         })
});
