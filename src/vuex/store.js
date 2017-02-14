/**
 * Created by dung on 14/02/2017.
 */
import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)


export default new Vuex.Store({
  state: {
    message: 'Welcome to VUEX'
  },
  mutations: {
    SET_MESSAGE: function (state, message) {
      state.message = message;
    }
  },
  actions: {
    setMessage: function (store, message) {
      store.commit('SET_MESSAGE', message);
    }
  },
  getters: {
    message(state) {
      return state.message;
    }
  }
})
