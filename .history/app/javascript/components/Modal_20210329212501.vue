<template>
  <div id="overlay">
    <div class="p-text">
      <img :src="val.picture.url">
      <p>{{ val.staff_part }}</p>
      <p>{{ val.name }}</p>
      <p>{{ val.description }}</p>
      <button @click="$emit('close')">閉じる</button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Modal',
  props: ['val']
}
</script>

<style scoped>
#overlay{
  z-index:1;
  position:fixed;
  top:0;
  left:0;
  width:100%;
  height:100%;
  background-color:rgba(0, 0, 0, 0.2);
  display: flex;
  align-items: center;
  justify-content: center;
}

#content{
  z-index:2;
  width:50%;
  padding-top: 5em;
  padding-bottom: 5em;
  text-align: center;
  background:white;
}

#content > img {
  width: 95%;
}

</style>