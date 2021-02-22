import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Boon from '@/components/Boon'

Vue.use(Router)

export default new Router({
  mode : "history",
  routes: [
    {
      path: '/',
      name: 'HelloWorld',
      component: HelloWorld
    },
    {
      path: '/v/test1',
      name: 'Boon',
      props : 1,
      component: Boon
    },
    {
      path: '/v/test2',
      name: 'Boon',
      props : 2,
      component: Boon
    },
    {
      path: '/v/test3',
      name: 'Boon',
      props : 3,
      component: Boon
    }
  ]
})
