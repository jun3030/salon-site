<template>
  <div class="topImage">
    <div class="container">

    </div>
  </div>
</template>

<script>
export default {
  el: 'topImage',
  data: function () {
    return {

    }
  }
}
</script>

<style scoped>
.container {
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}

html,body{
  height: 100%;
  width: 100%;
  margin: 0;
  padding: 0;
}
.slider-outer{
  position: relative;
  width: 100%;
  height: 500px;
  overflow: hidden;
  margin: 0 auto 20px;
}
.slider-inner{
  position: absolute;
  width: 100%;
  height: 500px;
}
.slide-img {
  width: 100%;
  height: 500px;
  object-fit: cover;
}
</style>