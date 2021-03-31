<template>
  <div class="container">
    <h2>TODO List</h2>
    <form v-on:submit.prevent>
      <input type="text" v-model="body">
      <button @click.prevent="createTodo">保存</button>
    </form>
    <ul>
      <li v-for="(todo, index) in todos" :key="todo.id">
        <input
          type="checkbox"
          v-on:change="doneChange(index, todo.id, todo.done)"
          v-model="todo.done"
        >
        <span :class="{ done: todo.done }">{{ todo.body }}</span>
        <button v-on:click="deleteTodo(index, todo.id)">削除</button>
      </li>
    </ul>
  </div>
</template>

<script>
import axios from "axios"

export default {
  data: function () {
    return {
　　　 //todoリスト
      taskCourses: [],
      //テキストボックスの値
      body: "",
    }
  },
  //一覧読み込み
  mounted () {
    axios.get('api/v1/task_courses').then((response) => {
      this.taskCourses = response.data
      }).catch(() => {
        alert("エラー");
      });
    }
  }
</script>

<style scoped>

</style>