<template>
<div>
  <div class="hamburger" @click="show = !show">
    <span></span>
    <span></span>
    <span></span>
  </div>

  <nav class="globalMenuSp" :class="{ active: show }">
    <ul>
        <li><a href="#">Menu1</a></li>
        <li><a href="#">Menu2</a></li>
        <li><a href="#">Menu3</a></li>
        <li><a href="#">Menu4</a></li>
        <li><a href="#">Menu5</a></li>
    </ul>
  </nav>

  <h1>{{ show }}</h1>
</div>
</template>

<script>
export default {
  data: function () {
    return {
      count: 0
    }
  }
}
</script>

<style scoped>
/*　ハンバーガーボタン　*/
.hamburger {
  display : block;
  position: fixed;
  z-index : 3;
  right : 13px;
  top   : 12px;
  width : 42px;
  height: 42px;
  cursor: pointer;
  text-align: center;
}
.hamburger span {
  display : block;
  position: absolute;
  width   : 30px;
  height  : 2px ;
  left    : 6px;
  background : #555;
  -webkit-transition: 0.5s ease-in-out;
  -moz-transition   : 0.5s ease-in-out;
  transition        : 0.5s ease-in-out;
}
.hamburger span:nth-child(1) {
  top: 10px;
}
.hamburger span:nth-child(2) {
  top: 20px;
}
.hamburger span:nth-child(3) {
  top: 30px;
}

/* ナビ開いてる時のボタン */
.hamburger.active span:nth-child(1) {
  top : 16px;
  left: 6px;
  background : #fff;
  -webkit-transform: rotate(315deg);
  -moz-transform   : rotate(315deg);
  transform        : rotate(315deg);
}

.hamburger.active span:nth-child(2),
.hamburger.active span:nth-child(3) {
  top: 16px;
  background : #fff;
  -webkit-transform: rotate(-315deg);
  -moz-transform   : rotate(-315deg);
  transform        : rotate(-315deg);
}

nav.globalMenuSp {
  position: fixed;
  z-index : 2;
  top  : 0;
  left : 0;
  color: #fff;
  background: rgba(0,0,0,0.7);
  text-align: center;
  width: 100%;
  opacity: 0;
  transition: opacity .6s ease, visibility .6s ease;
}

nav.globalMenuSp ul {
  margin: 0 auto;
  padding: 0;
  width: 100%;
}

nav.globalMenuSp ul li {
  list-style-type: none;
  padding: 0;
  width: 100%;
  transition: .4s all;
}
nav.globalMenuSp ul li:last-child {
  padding-bottom: 0;
}
nav.globalMenuSp ul li:hover{
  background :#ddd;
}

nav.globalMenuSp ul li a {
  display: block;
  color: #fff;
  padding: 1em 0;
  text-decoration :none;
}

/* このクラスを、jQueryで付与・削除する */
nav.globalMenuSp.active {
  opacity: 100;

}
</style>