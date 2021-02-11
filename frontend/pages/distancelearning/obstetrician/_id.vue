<template>
    <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2">
            <form action="javascript:history.go(-1)" class="mt-2">
              <button class="btn btn-outline-success my-2 my-sm-0">Назад</button>
            </form>
      </div>
        <div class="col-9">      
            <p class="center">{{obstetrician.title}}</p>
            <hr>
            <template v-for="article in predmets">
                <div :key="article.id">
                    <template v-if="obstetrician.title === article.group">
                        <nuxt-link  :to="`predmets/${article.id}`">{{article.title}}</nuxt-link>
                    </template>
                </div> 
            </template>
        </div>
      
        <!-- Заставит следующие столбцы переходить на новую строку -->
        <div class="w-100"></div>
      </div>
</template>
<script>
export default {
  async asyncData({ $axios, params }) {
    try {
      let obstetrician = await $axios.$get(`/obstetricians/${params.id}`);
      let predmets = await $axios.$get(`/predmets/`);
      return { obstetrician, predmets}
      //console.log(obstetrician)
    } catch (e) {
      return { obstetrician: [], predmets: [] };
    }
  },
  data({ params }) {
    return {
      obstetrician: {
      },
      predmets:{

      }

    };
  },
    head() {
    return {
      title: this.obstetrician.title,
    };
  },
};
</script>