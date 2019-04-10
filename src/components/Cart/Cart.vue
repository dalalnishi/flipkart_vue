<template>
    <div class="container">
    <div>        
        
        {{ cartDet }}
        <div v-for="c in products" :key="c.product_id">
            {{ c }}
        </div>
    </div>

    <!--<table class="table table-hover table-condensed" id="cart">
    <thead>
        <th>Product</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Subtotal</th>
    </thead>
    <tr>
		<td data-th="Product">
			<div class="row">
				<div class="col-sm-2 hidden-xs">-->
					<!-- <img :src="cartItem.thumbnail_url" alt="..." class="img-responsive"/> -->
                    <!--Image
				</div>
				<div class="col-sm-10">
					<h4 class="nomargin">{{ cartDet.product_name }}IPHone</h4>
					<p>{{ cartDet.product_desc }}2.9 Ghz Dual-Core Intel Core i5 Broadwell Tubro boost up to 3.3 GHz with L3 3MB cache</p>
				</div>
			</div>
		</td>
		<td data-th="Price">{{ cartDet.product_price }}700</td>
		<td data-th="Quantity">
			<input type="number" class="form-control text-center" 
				value="3" 
				min="0">
		</td>
		<td data-th="Subtotal" class="text-center">$subtotal</td>
		<td class="actions" data-th="">
			<button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>								
		</td>
	</tr>
    <tr data-v-32c58de7="">
        <td data-v-32c58de7="">
            <button data-v-32c58de7="" class="btn btn-warning">Save and Continue Shopping</button>
        </td>
        <td data-v-32c58de7="" colspan="2" class="hidden-xs"></td> 
        <td data-v-32c58de7="" class="hidden-xs text-center"><strong data-v-32c58de7="">Total $5353</strong></td> 
        <td data-v-32c58de7="">
            <button data-v-32c58de7="" class="btn btn-success btn-block">Checkout </button>
        </td>
    </tr>
    </table>-->

    </div>
</template>

<script>
export default {
    
    data () {
        return {
            local: [],
            cartItems: [],
            cartDet: []
        }
    },

    created () {
        console.log('created');
        this.$store.dispatch('getProductsDetail');
    },
    
    mounted () {
       console.log('mounted');
        this.local = JSON.parse(localStorage.getItem('product_id'));
        if(this.local!=null) {
            
            this.cartItems = this.local.map((id) => {
                return parseInt(id.product_id);
            });
        }
    },

    computed: {
        
        products () {
            
            this.$store.state.CartStore.productsDtl.map((pro) => {
                if(this.cartItems.includes(parseInt(pro.product_id))) {
                    // return pro;
                    this.cartDet.push(pro);
                    // return this.cartDet;
                }
                return this.cartDet
            })
            
        }
    }
}
</script>

<style scoped>
    table {
        width: 100%;
        max-width: 100%;
        margin-bottom: 20px;
        border-spacing: 0;
        border-collapse: collapse;
        background-color: transparent;
        display: table;
        box-sizing: border-box;
        margin-top: 50px;
    }
    thead {
        display: table-header-group;
        vertical-align: middle;
        border-color: inherit;
        border-bottom: 2px solid #ddd;
    }
    td {
        box-sizing: border-box;
        vertical-align: bottom;
        border-bottom: 2px solid #ddd;
        padding: 5px;
        line-height: 1.42857143;
    }
    th {
        font-weight: bold;
        display: table-cell;
    }
    tr :-moz-last-node :last-child {
        border-bottom: none;
    }
    .btn-warning {
        display: inline-block;
        padding: 6px 12px;
        margin-bottom: 0;
        font-size: 14px;
        font-weight: 400;
        line-height: 1.42857143;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        -ms-touch-action: manipulation;
        touch-action: manipulation;
        cursor: pointer;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        background-image: none;
        border: 1px solid transparent;
        border-radius: 4px;
        float: left;
    }
    .btn-success {
        display: inline-block;
        /* padding: 6px 12px; */
        margin-bottom: 0;
        font-size: 14px;
        font-weight: 400;
        line-height: 1.42857143;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        -ms-touch-action: manipulation;
        touch-action: manipulation;
        cursor: pointer;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        background-image: none;
        border: 1px solid transparent;
        border-radius: 4px;
        float: right;
    }
</style>

