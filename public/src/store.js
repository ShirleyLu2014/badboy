import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    cid:0,
    searchKws:""
  },
  //读取状态
  /*getters:{
    cid:(state)=>{
      return state.cid;
    }
  },*/
  //修改状态值
  mutations: {
    cityAlert:(state,cid)=>{
      console.log("修改城市编号"+cid);
      state.cid=cid;
      localStorage.setItem('cid',cid);
    },
    search(state,searchKws){
      console.log("演出搜索"+searchKws);
      state.searchKws=searchKws;
    }
  },
  actions: {

  }
})
