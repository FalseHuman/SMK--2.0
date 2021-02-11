<template>
<div>
  <div>
      <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2">
            <form action="javascript:history.go(-1)" class="mt-2">
              <button class="btn btn-outline-success my-2 my-sm-0">Назад</button>
            </form>
      </div>
        <div class="col-9">      
            <p class="center">{{obstetrician.title}}</p>
            <hr>
                  <template v-for="article in obstetricians">
                  <div :key="article.id">
                    <nuxt-link  :to="`${article.id}`">{{article.title}}</nuxt-link>
                  </div> 
                </template>
        </div>
      
        <!-- Заставит следующие столбцы переходить на новую строку -->
        <div class="w-100"></div>
      </div>
</div>
</div>
</template>

<script>
export default {
  async asyncData({ $axios }) {
    try {
      let obstetrician = await $axios.$get(`/obstetrician/1/`);
      let obstetricians = await $axios.$get(`/obstetricians/`);
      return { obstetrician, obstetricians }
    } catch (e) {
      return { obstetrician: [], obstetricians: [] };
    }
  },
  data({ params }) {
    return {
      obstetrician: {
      },
      obstetricians:{
      },

    };
  },
    head() {
    return {
      title:  this.obstetrician.title,
    };
  },
};
</script>