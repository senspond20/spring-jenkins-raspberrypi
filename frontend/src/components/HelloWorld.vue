<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
      <a href="/test1">테스트1</a>
      <a href="/test2">테스트2</a>
      <a href="/test3">테스트3</a>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data () {
    return {
      msg: 'Spring boot + Vue App'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
