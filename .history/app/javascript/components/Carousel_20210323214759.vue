<template>
  <div class="carousel">
    <slot></slot>

    <button class="next">Next</button>
    <button class="prev">Prev</button>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped>
.carousel {
  position: relative;
  width:600px;
  height:350px;
  overflow:hidden;
}

button {
  position: absolute;
  width:50px;
  height:40px;
  top: calc(50% - 20px);
  background-color: rgba(0,0,0,0.8);

}
</style>