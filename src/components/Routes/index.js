import Login from '../Login/Login.vue';
import Registration from '../Registration/Registration.vue'
import Home from '../Home/Home.vue';

export const routes = [
    {
        path: '/',
        component: Home,
        name: 'Home' 
    },
    {
        path: '/signin',
        component: Login,
        name: 'Login'
    },
    {
        path: '/signup',
        component: Registration,
        name: 'signup'
    }
]