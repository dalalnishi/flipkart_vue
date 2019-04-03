<template>
<div>
<div class="div-main">
    <div class="container">
        <nav class="navbar navbar-expand-sm navbar-light" >                
            <router-link to="/" class="navbar-brand">
                <img alt="Flipcart Logo" src="../../assets/flipkart-plus.png" class="img"/>
                <p><font style="color: white;">Explore</font>&nbsp;<font style="color:yellow;">Plus</font>&nbsp;<img class="plus" alt="plus" src="../../assets/plus.png" /></p>
            </router-link>

            <div>
                <!-- Search Component -->
                <search />
            </div>  

            <ul class="navbar-nav">
                <li class="nav-item active">
                <router-link to="/signin" tag="li" class="nav-link">Login &</router-link>
                </li>
                <li class="nav-item">
                <router-link to="/signup" tag="li" class="nav-link">&nbsp;Signup</router-link>
                </li>
                <li class="nav-item">
                <router-link to="/" tag="li" class="nav-link">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;Cart</router-link>
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
        
        <a-menu slot="overlay">
        <a-menu-item v-for="subcat in category.tbl_subcategories" :key="subcat.id">
            {{ subcat.subcat_name }}
        </a-menu-item>
        </a-menu>
    </a-dropdown>
    </div>    
</div>  
</template>

<script>

import Search from '../../components/Search/Search.vue';

export default {
    components: {
        Search
    },

    computed: {
        categories() {
            return this.$store.state.HeaderStore.categories ;
        }
    }, 

    created() {
        this.$store.dispatch('getCategories');
    }
}
</script>

<style scoped>

    .img {
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
    }

    .a-category {
        padding-right: 3%;
        color: black;
        font-weight: 600;
    }

    .nav-link {
        cursor: pointer;
    }
</style>


