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
            <p class="" v-html="obstetrician.text"></p>
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
      return { obstetrician }
    } catch (e) {
      return { obstetrician: [] };
    }
  },
  data({ params }) {
    return {
      obstetrician: {
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