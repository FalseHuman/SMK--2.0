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
            <p class="center">{{nurses.title}}</p>
            <hr>
                  <template v-for="article in nurs">
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
  async asyncData({ $axios,params }) {
    try {
      let nurses = await $axios.$get(`/nurses/1/`);
      let nurs = await $axios.$get(`/nurs/`);
      return { nurses,nurs }
    } catch (e) {
      return { nurses: [], nurs:[] };
    }
  },
  data({ params }) {
    return {
      nurses: {
      },
      nurs:{
      },

    };
  },
    head() {
    return {
      title:  this.nurses.title,
    };
  },
};
</script>