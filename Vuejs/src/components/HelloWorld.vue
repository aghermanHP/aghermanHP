<template>
  <div class="hello" >
    <h1>{{ msg }}</h1>
    <h2>Nous avons plaisi de fair cette presentation</h2>
    <ul>
      <li>
        <a
          href="https://www.facebook.com/ion.guidea.98"
          target="_blank"
        >
          Guidea Ion
        </a>
      </li>
      <li>
        <a
          href="https://www.facebook.com/adrian.gherman1997"
          target="_blank"
        >
          Gherman Adrian
        </a>
      </li>
      <br>
    </ul>
    <h2>Bibliographie</h2>
    <ul>
      <li>
        <a
          href="https://www.youtube.com/watch?v=cP9bhEknW_g"
          target="_blank"
        >
          Vue CLI 3 Youtube
        </a>
      </li>
      <li>
        <a
          href="https://l.facebook.com/l.php?u=https%3A%2F%2Fmedium.com%2Fcodingthesmartway-com-blog%2Fvue-js-2-quickstart-tutorial-2017-246195cfbdd2%3Ffbclid%3DIwAR1P0kEQHev435XUFCEbPqFGckZVEat6Rt0Y99azRyW945g-ejavB-Xstts&h=AT34umE0jobMgmD4IjeCliztqtXvsdFKvkUifiTph2xztuojgEh__QzeW3yWgCyMNYIs1widNrkPRJAYJco-LWORbsd61PFEXUCXEBQtztNpm_7lD2XIILhDL82LrA"
          target="_blank"
        >
          comment instale
        </a>
      </li>
      <li>
        <a
          href="https://l.facebook.com/l.php?u=https%3A%2F%2Fraygun.com%2Fblog%2Fpopular-javascript-frameworks%2F%3Ffbclid%3DIwAR2e66RxJ_0UwISsF-fEPEeg7I-BsgAP0dUPIRhdzM2gjs9g6ZboUfePYmQ&h=AT34umE0jobMgmD4IjeCliztqtXvsdFKvkUifiTph2xztuojgEh__QzeW3yWgCyMNYIs1widNrkPRJAYJco-LWORbsd61PFEXUCXEBQtztNpm_7lD2XIILhDL82LrA"
          target="_blank"
        >
          9 Frameworks
        </a>
      </li>
    </ul>
    <ul>
      <li v -for="product in products">
      {{product}}
      </li>
      </ul>
  </div>
</template>

<script>
export default {
  name: 'Hello',
  data () {
    return {
      msg: 'Bonjour a tous',
      products: ['paine', 'lapte', 'tigari']
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
