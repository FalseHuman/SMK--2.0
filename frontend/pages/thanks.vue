<template>
    <div>
        <p class="center mt-2">Спасибо, обращение отправлено! Вам ответят на почту в течение 3 дней:)</p>
        <form action="javascript:history.go(-1)" class="mt-2 center">
            <button class="btn btn-outline-success my-2 my-sm-0">Назад</button>
        </form>
    </div>
</template>
<script>
export default {
    head() {
    return {
      title: "Спасибо!",
    };
  },
}
</script>