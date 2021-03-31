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
}
</style>