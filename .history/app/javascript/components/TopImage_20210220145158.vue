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
</style>