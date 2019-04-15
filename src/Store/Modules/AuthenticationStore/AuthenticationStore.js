import axios from 'axios';

const state = {
    token: ''
}

const actions = {
    
    logUser ({commit}, user) {
        return new Promise((resolve, reject) => {
         axios.post('user/login', user)
            .then((response) => {
                localStorage.setItem('token', response.data.token);
                localStorage.setItem('uid', response.data.id);
                commit('setToken', response.data.token);
                resolve(response.data);
            })
            .catch(err => {
                reject(err.response.data.message)
            })
        })
    },

    // User Registration
    registerUser ({dispatch}, user) {
        return new Promise((resolve, reject) => {
            axios.post('user/signUp', user)
            .then((response) => {
                console.log(response.data);
                let userl = {
                    email: user.email,
                    password: user.password
                }
                dispatch('logUser', userl);
                resolve(response.data);
            })
            .catch(err => {
                reject(err.response.data.message);
            })
        })
    }
}

const mutations = {
    setToken(state, data) {
        state.token = data;
    }
}

const getters = {

}

export default {
    state, actions, mutations, getters
}
