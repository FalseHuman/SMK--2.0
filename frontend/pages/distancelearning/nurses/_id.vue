<template>
    <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2">
            <form action="javascript:history.go(-1)" class="mt-2">
              <button class="btn btn-outline-success my-2 my-sm-0">Назад</button>
            </form>
      </div>
        <div class="col-9">      
            <p class="center">{{nurs.title}}</p>
            <hr>
            <template v-for="article in predmets">
                <div :key="article.id">
                    <template v-if="nurs.title === article.group">
                        <nuxt-link  :to="`/predmets/${article.id}`">{{article.title}}</nuxt-link>
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
      let nurs = await $axios.$get(`/nurs/${params.id}`);
      let predmets = await $axios.$get(`/predmets/`);
      return { nurs, predmets}
    } catch (e) {
      return { nurs: [], predmets: [] };
    }
  },
  data({ params }) {
    return {
      nurs: {
      },
      predmets:{

      }

    };
  },
    head() {
    return {
      title: this.nurs.title,
    };
  },
};
</script>