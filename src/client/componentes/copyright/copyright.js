const riot = require('riot')
import {dispatcher} from '../../app/dispatcher'
riot.tag2('copyright', '<p style="margin:0 0;color:white;"> <br> Terms & Privacy | © 2018 Pinzolo<br> <a href="/login">Pinzolo webapp </a> was Made in Bolivia<br> </p> <div> <div class="containers" id="cond"><span class="buttons" onclick="{haceresto}">&#10006;</span> <div class="contents"> <div class="heads"> <h5>IMPRESSUM</h5> </div> <div class="bodys"> <div class="action-bars"><a>SHARE</a><a>LEARN MORE</a></div> </div> </div> </div> </div> <p style="margin:0 0;color:white;"> <br> Develop & Design: Juan Luis Claure<br> Proudly Powered by | PWA-FRMWRK | <br> </p>', '', '', function(opts) {
        const copyright = this

        copyright.cond = false
        copyright.haceresto = ()=>{
                if(!copyright.cond){
                    document.getElementById('cond').classList.add('expands')
                    document.getElementById('cond').style.zIndex="3";
                    copyright.cond = true
                }else{
                    document.getElementById('cond').classList.remove('expands')
                    document.getElementById('cond').style.zIndex="1";
                    copyright.cond = false
                }
        }
        copyright.on('mount', ()=>{
            if(ieo === 'false'){

            }

            return
        })
});
