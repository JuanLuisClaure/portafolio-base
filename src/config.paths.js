Object.defineProperty(exports, "__esModule", {
  value: true
});
const paths = exports.paths = {

  //nombre dl projecto
  name: 'PWA-framework',
  //  servidor
  srv: './src/server/**/*.js',

  //  cliente
  clnt: './src/client/**/*.js',

  //  redireccion a la entrada de webpack2
  entry: 'entry.js',

  //  lint para arhivos especificos
  gulpFile: 'gulpfile.babel.js',
  webpackC: 'webpack.config.babel.js',


  //  carpertas de distribucion
  srvrDir: './www/server/',
  clntDir: './www/client/',



  pgnsTag: './pwa/paginas/**/*.tag',
  cmpntsTag: './pwa/componentes/**/*.tag',

  pgnsDir: './src/client/paginas/',
  cmpntsDir: './src/client/componentes/',


  themeScss: './pwa/theme/theme.scss',
  themeCss:'./src/client/theme/',


  favicon:'./pwa/favicon.ico',
  manifest:'./pwa/manifest.json',
  homescreen: './pwa/homescreen.png',


  config:'./src/config.paths.js',


  asyncdatasrv:'./src/server/asyncdata/*.json',
  asyncdatawww:'./www/server/asyncdata/',

  assetsImg: './src/assets/img/**/**',
  assetsfont: './src/assets/fonts/**/**',
  template: './src/server/templates/*.html',
  cmpntsCopy: './src/server/components/**',
  cmpntsSrvr: './src/server/components/*.tag',



  imgDir: './www/client/assets/img/',
  fontDir: './www/client/assets/fonts/',
  tmpltDir: './www/server/templates/',
  cmpntsServerDir: './www/server/components/',


  srcutil: './src/server/util/*.js',
  wwwutil:  './www/server/util/',
  srcStart: './src/*.js',
  wwwStart: './www/',

  initFile:'./www/index.js',


  port:8888,

  pathFE:'./pwa/**/**',
  pathBE:'./src/**/**',


  firebaseApp:{
    "type": "service_account",
    "project_id": "cliente-temporal",
    "private_key_id": "73c23ad0e1e5a91ec280c0712634a63677971255",
    "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDLTrDfs9aBAOzJ\neO/3cgkmBHVt6TBKkYh2WdQo814HER+dbAn9hf9tOVOpzO0bJTgLCaWtipXwj0jZ\nat+IO3zyw8LpR4cuAObyrFc/Wnv30y9q79T1uxckKNJwMWP5iTWo0gTqhPCT3P5K\nCDvNMCtKWKVSvIlyvFtJfGX6RdUSEHm/JEQUY1Y8Tyn2HTmnAegOfg2jyLzfxKcF\noTDT9Exi5hw5FizxV48BM8qd6aYxcmAGkU5RnJt+5UQ/1+UNXAcGOhpp4lBZU0Bc\nb9JinxVtFk/MaAwFyENNWtJVOiq02anaw9yJrbZrpUwqQKzZO0nd/cy6KV41oTlZ\nxaNVQk7BAgMBAAECggEAArkfCr8GGPAgC86LMcp464XApChM/5mxjQrE2gfQ9wmk\nXZOdcmQvpLkRaR9D34LFDHZMjh2SprBHoLRjEjhAQyDqwNzGt2+3CDH1YPWLfqk5\nK86ysLgo3iDPGUY7FWQAaE6IVvMRBRz/GbMgqG3cTZSQgdJBScxysVI5jDOwX/ua\n/BXrCkPbLww9qMmEBYBjj1vusdvGBFcHR6N1Rg1ht4J8PoAUMaTD5OYUARiLuegd\n06JbPSKcNVpP+I21hRnIfbOMWasuOWhN6IdjAV7YgOC31z8NlD138VYt692QxQE9\nRwgRHMiHOaLE+keFEnLl4HWGX1W0Qm/bWRxOX0ykAQKBgQD/wYOPf/SW+xZsmJZA\nLI0sGuhxmIj7ChI2/ySgp8LMi6nFmytmknpLJuwxF8GZ7uA91BK2EiKRhAaN9FsF\n2Wv7qOIUP5KyFbeOJAOWZ2ymSuRmjCss0xoRq0euR5zI0c71mdl7nn3VHoqftqSA\neksS4ZDzZC4oCM9yog82dPk7wQKBgQDLgFzhzXWGNrCrIUpMK3ev8L5CMMUNURAu\nZTwVPvCyRTttBa5ZmV35WNa1/64pCUraJSv4w1beqjV4TptYLVeaNxLa9Voqn67s\nwojp8Fcy0+ZHGDSceV6dmDJOkGFI29bpUyt6+PZQ/FK5tOsoiLlBlMvTMqKCV2/e\nPXkT6knTAQKBgQDMS0nJ0M4R5FOPP3uVm4DRIFVYmB2jWfIe2EPryNYECfP9Euvi\nLVNewKKevHk7euLIwKSJp4bRcgLCVdR3oatuBQNCZV3Kvyo2cnIjLE5Przcu6vx5\n+86xGn5RqoaEq4OED/b3liyxlono9j4FGqrpVCEzKmzsMc1zphw8xcdogQKBgCpw\n5u4gz3XiSg4mrzwbhKao6sUbLr2MPneunU1BBynmznH6UVZWagbqxDzIyiW8zmOY\nhQcoliFyFhy1KCjHrBF5kvEfYmKpUu4F1FAV09nB37DMF4zasyTi7Pr9mYx8bOHU\neqj260gQl6ArXy/g8+H9ilTNpp7QZYBQCcRhhGwBAoGAbgFpLUSfN9HqGhRqaeTZ\nF1+JxuQt8RxS2rTMWPeLuHgzvEBEeSVdejORYa2hMlBqkkuF9CvFZA4D5nc+7lLr\niNgnKwy+dBtxSyyjZJmKq5wgnOI9zM2SxZhU5W0pS2X+bnDrPkpXM1QbXFJpKKIY\nHz8T7lVhCSfsJaJjxFjKvqg=\n-----END PRIVATE KEY-----\n",
    "client_email": "firebase-adminsdk-eetcf@cliente-temporal.iam.gserviceaccount.com",
    "client_id": "103137429789391687074",
    "auth_uri": "https://accounts.google.com/o/oauth2/auth",
    "token_uri": "https://oauth2.googleapis.com/token",
    "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
    "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-eetcf%40cliente-temporal.iam.gserviceaccount.com"
  }


};
