<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <h2>Link catre Paginile e facebook al studentilor</h2>
    <ul>
      <li>
        <a
          href="https://www.facebook.com/adrian.gherman1997"
          target="_blank"
        >
          Gherman Adrian
        </a>
      </li>
      <li>
        <a
          href="https://www.facebook.com/ion.guidea.98"
          target="_blank"
        >
          Guidea Ion
        </a>
      </li>
      
      <br>
    </ul>
    <h2> Bibliographie pour cette presentation</h2>
    <ul>
      <li>
        <a
          href="http://francophonie.utm.md/stud_info/tw/lista_subiecte_2019.pdf"
          target="_blank"
        >
          Sarcina
        </a>
      </li>
      <li>
        <a
          href="http://vuejs-templates.github.io/webpack/"
          target="_blank"
        >
          Comment j'ai installe
        </a>
      </li>
      <li>
        <a
          href="http://vue-loader.vuejs.org/"
          target="_blank"
        >
          vue-loader
        </a>
      </li>
      <li>
        <a
          href="https://github.com/vuejs/awesome-vue"
          target="_blank"
        >
          awesome-vue
        </a>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data () {
    return {
      msg: 'Bonjour a tous'
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
