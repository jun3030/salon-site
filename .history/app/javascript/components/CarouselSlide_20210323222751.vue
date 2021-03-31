<template>
  <div v-show="visibleSlide === index" class="carousel-silde">

  </div>
</template>

<script>
export default {
  props: ["visibleSlide", "index"],
  data() {
    return {
    }
  }

}
</script>

<style scoped>

</style>