<template>
  <div v-show="visibleSlide === index" class="carousel-silde">
    <slot></slot>
  </div>
</template>

<script>
export default {
  props: ["visibleSlide", "index"]

}
</script>

<style scoped>

</style>