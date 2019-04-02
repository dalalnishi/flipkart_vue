<template>
    <form class="" action="" method="GET">
        
    <div class="col-12-12">
        <div>
        <input 
            type="text" 
            value="" 
            title="Search for products, brands and more" 
            name="q" 
            autocomplete="off" 
            placeholder="Search for products, brands and more"
        />
        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search" style="color:#2874f0;"></i></button>
        
        </div>
    </div>
    </form>
</template>

<script>
export default {
    name: 'Search'
}
</script>

<style scoped>
    input {
        float: left;
        height: 36px;
        width: 40%;
        margin-top: 10px;
        font-family: Roboto,Arial,sans-serif;
        letter-spacing: 0;
        padding: 0 16px;
    }

    button {
        float: left;
        height: 36px;
        margin-top: 11px;
    }
</style>

