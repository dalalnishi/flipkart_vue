<template>
    <!-- Carousel -->
    <div>
        <carousel :per-page="1" :mouse-drag="false" :autoplay="true" :loop="true" :autoplayHoverPause="true" :autoplayTimeout="4500">
            <slide>
                <img src="../../assets/b449a2cbe3218e7d.jpg" alt="img1" class="ca-img"/>
            </slide>
            <slide>
                <img src="../../assets/ce425625e412dfd6.jpg" alt="img2" class="ca-img"/>
            </slide>
            <slide>
                <img src="../../assets/f0c72858992901b7.jpg" alt="img3" class="ca-img"/>
            </slide>
            <slide>
                <img src="../../assets/37e9e012b6e0f2a3edf47438f066958d.jpg" alt="img4" class="ca-img"/>
            </slide>
            <slide>
                <img src="../../assets/flipkart-festive-dhamaka.png" alt="img5" class="ca-img"/>
            </slide>
        </carousel>
        
        <div style="padding: 20px;">
            <a-row :gutter="25">
            <a-col :span="6" v-for="pro in products" :key="pro.product_id">
                <a-card :title="pro.brand_name" :bordered="true" @click="productDetail(pro.product_id)" class="ant-css">
                <p><img :src="imgUrl+pro.product_img[0]" /></p>
                </a-card>
            </a-col>
            </a-row>
        </div>  
      </div>   
</template>

<script>
import { Carousel, Slide } from "vue-carousel";

export default {
  name: "Home",
  components: {
    Carousel,
    Slide
  },
  
  created() {
    this.$store.dispatch("getProducts");
  },

  computed: {
    products() {
      return this.$store.state.HomeStore.products;
    },
    imgUrl() {
      return this.$store.state.AppStore.imageUrl;
    }
  },
  methods: {
      productDetail (pid) {
          this.$router.push({name: 'Product_Details', params: { id: pid }});            
      }
  }
};
</script>

<style scoped>
.ca-img {
  height: 350px;
  width: 100%;
}

img {
  height: 150px;
  width: 80px;
}
.ant-css {
    cursor: pointer;    
    margin-top: 12px;
}

</style>

