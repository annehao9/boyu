import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Vant from 'vant'
import 'vant/lib/index.css'
import axios from 'axios'
import moment from 'moment'
Vue.use(Vant);
axios.defaults.baseURL = 'http://127.0.0.1:8080'
Vue.prototype.axios = axios;
Vue.prototype.moment = moment;

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
