<template>
  
  <div id="subcat-div">  
    
    <h4><a class="brand-div" v-for="sub in subcategories" :key="sub.subat_id" @click="getProducts(sub.brand_id)">
        {{ sub.brand_name }} 
    </a></h4>    
    
    <div v-if="show===false">
    <div 
      class="col-sm-4 col-lg-4 col-md-4 item" 
      v-for="sub in subcategories" 
      :key="sub.subat_id">

      <div class="thumbnail">
        <a :href="'/details/'+sub.product_id">
          <img :src="imgUrl+sub.product_img[0]" alt="" class="grow thumbnail-image">

          <div class="caption margin-left-sm">
            <h4 class="pull-right">₹{{ sub.product_price }}</h4>
          </div>

          {{ sub.product_name }}
        </a>

        <div class="ratings margin-left-sm">
          <p class="pull-right">
            <button class="btn btn-success" @click="viewDetails(sub.product_id)">
              View Details
            </button>
          </p>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
    </div>

    <div v-else>
    <div 
      class="col-sm-4 col-lg-4 col-md-4 item" 
      v-for="b in brands"
      :key="b.product_id">
      
      <div class="thumbnail">
        <a :href="'/details/'+b.product_id">

          <img :src="imgUrl+b.product_img[0]" alt="" class="grow thumbnail-image">
            
          <div class="caption margin-left-sm">
            <h4 class="pull-right">{{ formatPrice(b.product_price) }}</h4>
          </div>
          {{ b.product_name }}
        </a>

        <div class="ratings margin-left-sm">
          <p class="pull-right">
            <button class="btn btn-success" @click="viewDetails(b.product_id)">
              View Details
            </button>
          </p>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
  </div>
  </div>
  
</template>

<script>

export default {
  name: 'ListView',

  data () {
    return {
      bid: '',
      show: false
    }
  },

  mounted () {
    let id = this.$route.params.id;
    this.$store.dispatch('getBySubcategory', id);
  },

  computed: {
    subcategories () {
      this.show = false;
      return this.$store.state.ListViewStore.subcategories;
    },
    imgUrl () {
      return this.$store.state.AppStore.imageUrl;
    },
    brands () {
      return this.$store.state.ListViewStore.brands;
    }
  },

  methods: {
    getProducts (brand_id) {
      this.bid = brand_id;      
      this.$store.dispatch('getByBrand', this.bid);  
      this.show = true;    
    },
    viewDetails (pid) {
      this.$router.push({name: 'Product_Details', params: { id: pid }});            
    },
    formatPrice (value) {
      let pprice = value.toFixed(2).replace(/(\d)(?=(\d{3})+(?:\.\d+)?$)/g, "$1,")
      return "₹ " + pprice.split('.')[0];
    }
  }

}
</script>

<style scoped>

  .a-category {
    padding-right: 3%;
    color: black;
    font-weight: 600;
    margin-bottom: 25px;
  }
  #subcat-div {
    margin-top: 4%;
    background-color: whitesmoke;
    height: 50%;
  }
  .brand-div {
    /* padding: 75px; */
    margin-right: 100px;
    text-align: center;
  }
  .brands-div {
    margin-bottom: 25px;
    box-shadow: 2px 4px 2px 4px;
    color: cornflowerblue;
  }
  div.thumbnail {
    height: 100%;
    width: 75%;
  }
  .favourite-icon {
    font-size: 25px;
  }
  .ratings {
    padding-right: 10px;
    padding-left: 10px;
    color: #d17581;
  }
  .grow {
    transition: all .2s ease-in-out;
  }
  .thumbnail:hover .grow {
    transform: scale(1.1);
  }
  .item.list-group-item {
    border: none;
    float: none;
    width: 100%;
    background-color: #fff;
    margin-bottom: 10px;
    margin-left: 10px;
    margin-right: 10px;
  }
  .thumbnail-image {
    padding: 15px;
    height: 230px;
  }
  .list-group-item .thumbnail-image {
    margin-right: 10px;
    max-height: 150px;
  }
  .item.list-group-item .thumbnail {
    margin-bottom: 0px;
  }
  .item.list-group-item img {
    float: left;
  }
  .item.list-group-item:after {
    clear: both;
  }
</style>
