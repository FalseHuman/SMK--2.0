<template>
<div>
  <div>
      <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2">
         <!-- <div class="list-group text-wrap block ">

          </div>-->
            <form action="javascript:history.go(-1)" class="mt-2">
              <button class="btn btn-outline-success my-2 my-sm-0">Назад</button>
            </form>
      </div>
        <div class="col-9">      
            <p class="center">{{feldhers.title}}</p>
            <hr>
            <p class="" v-html="feldhers.text"></p>
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
      let feldhers = await $axios.$get(`/feldhers/1/`);
      return { feldhers }
    } catch (e) {
      return { feldhers: [] };
    }
  },
  data({ params }) {
    return {
      feldhers: {
      },

    };
  },
    head() {
    return {
      title:  this.feldhers.title,
    };
  },
};
</script>