<template>
  <div id="overlay">
    <div class="image-label"><img :src="val.picture.url" alt="稲森 春香" style="width:400px; height:400px;"></div>
    <div class="p-text">
      <h3><span>- {{ val.staff_part }} -</span><br>{{ val.name }}</h3>
      <p>{{ val.description }}<br><span>【資生堂SABFA卒業】</span></p>
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
  background: white;
  /* display: flex;
  align-items: center;
  justify-content: center; */
  text-align: center;
}

/* #content{
  z-index:2;
  width:50%;
  padding-top: 5em;
  padding-bottom: 5em;
  text-align: center;
  background:white;
}

#content > img {
  width: 95%;
} */

.image-label img {
    width: 100%;
}

.image-label {
    margin-top: 10px;
}

</style>