import axios from "axios";
import qs from "qs";
import router from "./router";
import store from './store'

const Axios=axios.create({
  baseURL:"http://localhost:5050/",
  withCredentials:true
})
Axios.interceptors.request.use(
  config=>{
    console.log("进入请求拦截器...");
    if(config.method==="post"){
      config.data=qs.stringify(config.data)
    }
    if(localStorage.getItem("token")){
      config.headers.token=localStorage.getItem("token");
    }
    if(sessionStorage.getItem("token")){
      config.headers.token=sessionStorage.getItem("token");
    }
    return config;
  },
  error=>{
    console.log("===发送请求拦截器报错===")
    console.log(error);
    console.log("===end===");
    Promise.reject(error);
  }
);
Axios.interceptors.response.use(
  res=>{
    console.log("触发响应拦截器...")
    if(res.data.code==-1){
      console.log(res.data.msg);
      alert(res.data.msg);
    }else if(res.data.token){
      store.commit("setUname",res.data.uname);
      store.commit("setIslogin",true);
      if(res.remember==="true"){
        localStorage.setItem("token",res.data.token);
      }else{
        sessionStorage.setItem("token",res.data.token);
      }
    }
    return res;
  },
  error=>{
    if(error.data){
      switch(error.data.code){
        case 403:
          localStorage.removeItem("token");
          sessionStorage.removeItem("token");
          alert("请先登录");
          break;
      }
    }
  }
)
export default {
  install: function(Vue, Option){
    Object.defineProperty(Vue.prototype,"axios",{value:Axios})
  }
}