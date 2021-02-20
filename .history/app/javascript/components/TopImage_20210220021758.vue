<template>
  <div class="topImage">
    <ul class="slideshow">
      <li><span class="view"></span></li>
      <li><span class="view"></span></li>
      <li><span class="view"></span></li>
      <li><span class="view"></span></li>
    </ul>
    <img src="public/image_gallery1.jpg" alt="">
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

@media screen and (max-width: 600px), (max-device-width: 600px) {
  .slideshow {
    height: 500px !important;
    padding: 0;
  }
}

.slideshow {
  width: 100%;
  display: block;
  top: 0px;
  left: 0px;
  z-index: 0;
}

ul {
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
  background-image: url("/images/image_gallery1.jpg");
}

</style>