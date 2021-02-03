<template>
<div>
      <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2 size-navbar-text">
        <MenuContats />
      </div>
        <div class="col-9">
              <template v-for="article in callback">
              <div :key="article.id">        
                <p class="center">{{article.callback_title}}</p>
                <hr>
                <p class="size-navbar-text" v-html="article.text"></p>
                </div>
             </template>
        <div class="center"><strong>Форма отправки письма директору ГАПОУ РБ "Салаватский медицинский колледж"</strong></div>
          <form @submit.prevent="submitDirector">
          <input type="text" v-model="comm.theme" class="form-control" placeholder="Тема обращения" name ="name" required> <br>
          <input type="text" v-model="comm.name" class="form-control" placeholder="ФИО" name ="name" required> <br>
          <input type="email" v-model="comm.email" class="form-control" placeholder="Адрес эл.почты" id="exampleInputEmail1" aria-describedby="emailHelp" required> <br>
          <textarea   v-model="comm.text" class="form-control"  name="text" cols="145"  required=""  placeholder="Текст обращения" rows="5" style="overflow: hidden; word-wrap: break-word; resize: none; height: 160px; "></textarea><br>
          <button  class="btn btn-outline-primary" type="submit">Отправить</button>
        </form>
        </div>
        <!-- Заставит следующие столбцы переходить на новую строку -->
        <div class="w-100"></div>
      </div>
</div>
</template>

<script>
export default {
  head() {
    return {
      title: "Обратная связь",
    };
  },
     async asyncData({ $axios, params }) {
    try {
      let callback = await $axios.$get(`/callback/`);
      return { callback  };

    } catch (e) {
      return { callback: [] };
    }
  },
  data() {
    return {
      callback : [],
      comm:{
          theme: "",
          name: "",
          email: "",
          text: ""
      }
    };
  },
    methods: {
        async submitDirector() {
      const config = {
        headers: { "content-type": "multipart/form-data" }
      };
      let formData = new FormData();
      for (let data in this.comm) {
        formData.append(data, this.comm[data]);
      }
      try {
        let response = await this.$axios.$post("/director/", formData, config);
        this.$router.push("/thanks");
      } catch (e) {
        console.log(e);
      }
    },
},
};
</script>
