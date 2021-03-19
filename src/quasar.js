import Vue from 'vue'

import './styles/quasar.scss'
import '@quasar/extras/material-icons/material-icons.css'
import '@quasar/extras/mdi-v5/mdi-v5.css'
import { Quasar,Notify } from 'quasar'

Vue.use(Quasar, {
  plugins: {
    Notify
  },
  config: {}
 })