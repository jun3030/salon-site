<template>
  <div class="topImage">
    <div class="container">
      <div class="image" style="height: 650px;">
        <ul class="slideshow">
          <li><span class="view"></span></li>
          <li><span class="view"></span></li>
          <li><span class="view"></span></li>
          <li><span class="view"></span></li>
        </ul>
      </div>
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

.image {
  width: 100%;
  margin: 0 auto;
  position: relative;
  overflow: hidden;
}

.slideshow {
  width: 100%;
  height: 100%;
  display: block;
  top: 0px;
  left: 0px;
  z-index: 0;
}

ul {
  display: block;
  list-style-type: disc;
  margin-block-start: 1em;
  margin-block-end: 1em;
  margin-inline-start: 0px;
  margin-inline-end: 0px;
  padding-inline-start: 40px;
}

li {
  list-style: none;
  display: list-item;
  text-align: -webkit-match-parent;
}

.slideshow li:nth-child(1) span {
  background-image: require('../../assets/images/image_gallery1.jpg');
}

.slideshow li span.view {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0px;
  left: 0px;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  background-position: 50% 50%;
  background-repeat: none;
  opacity: 0;
  z-index: 0;
  -webkit-backface-visibility: hidden;
  -webkit-animation: imageAnimation 24s linear infinite 0s;
  -moz-animation: imageAnimation 24s linear infinite 0s;
  -o-animation: imageAnimation 24s linear infinite 0s;
  -ms-animation: imageAnimation 24s linear infinite 0s;
  animation: imageAnimation 24s linear infinite 0s;
}


</style>