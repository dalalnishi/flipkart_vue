<template>
<div>
<div class="div-main">
    <div class="container">
        <nav class="navbar navbar-expand-sm navbar-light" >                
            <router-link to="/" class="navbar-brand">
                <img alt="Flipcart Logo" src="../../assets/flipkart-plus.png" class="img-logo"/>
                <p><font style="color: white;">Explore</font>&nbsp;<font style="color:yellow;">Plus</font>&nbsp;
                    <img class="plus" alt="plus" src="../../assets/plus.png" /></p>
            </router-link>

            <div>
                <!-- Search Component -->
                <search />
            </div>  

            <ul class="navbar-nav">
                <li class="nav-item active" v-if="localtoken===null">
                <!-- <router-link to="/signin" tag="li" class="nav-link">Login &</router-link> -->
                    <button @click="showLoginModal">Login &</button>
                    <login v-if="showLogin" :toggle="showLoginModal"/>
                </li>
                <li class="nav-item" v-if="localtoken===null">
                <!-- <router-link to="/signup" tag="li" class="nav-link">&nbsp;Signup</router-link> -->
                    <button @click="showRegi=true">Signup</button>
                    <Register v-if="showRegi" :toggleReg="showRegiModal"/>
                </li>
                <li class="nav-item active" v-if="localtoken!==null">
                <!-- <router-link to="/signin" tag="li" class="nav-link">Login &</router-link> -->
                    <button>My Account</button>                    
                </li>
                <li class="nav-item active" v-if="localtoken!==null">
                <!-- <router-link to="/signin" tag="li" class="nav-link">Login &</router-link> -->
                    <button @click="removeAuth">Logout</button>                    
                </li>
                <li class="nav-item">
                <router-link to="/cart" tag="li" class="nav-link">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;Cart
                </router-link>
                </li>
            </ul>
        </nav>
    </div>
</div>
    <!-- Categories Listing Dropdown -->
    <div class="div-category">
    <a-dropdown class="a-category" v-for="category in categories" :key="category.id">
        <a class="ant-dropdown-link" href="#">
            {{ category.category_name }} <a-icon type="down" />
        </a>
        
        <a-menu 
            v-for="subcat in category.tbl_subcategories" 
            :key="subcat.subcat_id"
            slot="overlay"
        >        
        <a-sub-menu 
            v-for="subcat in category.tbl_subcategories" 
            :key="subcat.subcat_id"
            v-if="subcat.isDelete === 0"                          
            :title="subcat.subcat_name"
            @click.native="submenuClick(subcat.subcat_id)" 
        >
        </a-sub-menu>
        </a-menu>
    </a-dropdown>
    </div>    
</div>  
</template>

<script>

import Search from '../../components/Search/Search.vue';
import ListView from '../../components/ListView/ListView.vue';
import Login from '../../components/Login/Login.vue';
import Register from '../../components/Registration/Registration.vue';

export default {
    components: {
        Search,
        Login,
        Register
    },

    created () {
        this.$store.dispatch('getCategories');
    },

    computed: {
        categories() {
            return this.$store.state.HeaderStore.categories ;
        },
        localtoken () {
            return localStorage.getItem('token');
        }
    }, 

    data () {
        return {
            showLogin: false,
            showRegi: false
        }
    },

    methods: {
        submenuClick (sid) {
            let subcategoryid = sid;
            this.$store.dispatch('getBySubcategory', subcategoryid);
            this.$router.push({name: 'ListView', component: ListView, params: { id: subcategoryid }});            
        },
        showLoginModal () { 
            this.showRegi = false;           
            this.showLogin = !this.showLogin;
        },
        showRegiModal () {        
            this.showLogin = false;    
            this.showRegi = !this.showRegi;
        },
        removeAuth () {
            this.$store.state.AuthenticationStore.token = '';
            localStorage.removeItem('token');
            localStorage.removeItem('uid');
            location.reload();
        }
    }
}
</script>

<style scoped>

    .img-logo {
        height: 90%;
        width: 75px;
    }

    .plus {
        width: 10px;
    }

    ul {
        float: right;
        color: white;
        list-style: none;
        margin-top: 15px;
        margin-right: -30px;
    }

    li {
        font-size: 18px;
    }

    .container {
        height: 56%;
    }

    p {
        font-size: 11px;
        font-style: italic;
        margin-top: -1px;
    }

    .div-main {
        background-color:#2874f0;
        height: 56px;
    }

    input {
        float: left;
        height: 36px;
        width: 40%;
        margin-top: 10px;
    }

    .div-category {
        height: 43%;
        background-color: white;
        padding-top: 9px;
        padding-bottom: 9px;
        box-shadow: 4px 2px 4px 2px;
        color: grey;
    }

    .a-category {
        padding-right: 3%;
        color: black;
        font-weight: 600;
    }

    .nav-link {
        cursor: pointer;
    }

    button {
        background-color: Transparent;
        background-repeat: no-repeat;
        border: none;
        cursor: pointer;
        overflow: hidden;
        outline: none;
    }
</style>


