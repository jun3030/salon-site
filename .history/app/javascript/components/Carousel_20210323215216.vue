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
  width:800px;
  height:350px;
  overflow:hidden;
}

button {
  position: absolute;
  width:50px;
  height:40px;
  top: calc(50% - 20px);
  background-color: rgba(0,0,0,0.8);
  border:none;
  color:#FFF;
}

button:active, button:hover {
  outline:none;
  cursor:pointer;
}

.next {
  right:0;
}

.prev {
  left:0;
}
</style>