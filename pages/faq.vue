<template>
  <section class="faq">
    <div class="container">
      <h2 class="faq-title">FAQ</h2>
      <p class="faq-subtitle">Отвечаем на частые вопросы</p>

      <div
          v-for="(item, index) in faqs"
          :key="index"
          class="faq-item"
      >
        <div
            class="faq-question"
            @click="toggle(index)"
        >
          <span>{{ item.question }}</span>
          <span class="arrow" :class="{ open: openIndex === index }"><img src="@/assets/faq.svg" alt="faq"></span>
        </div>
        <div
            class="faq-answer"
            v-if="openIndex === index"
        >
          <p>{{ item.answer }}</p>
        </div>
      </div>
      <section class="yarrow-contact">
        <img class="elipse elipse10" src="@/assets/elipse.png" alt="elipse">
        <img class="elipse elipse11" src="@/assets/elipse.png" alt="elipse">
        <h2>Есть вопросы?</h2>
        <p>Оставьте ваши контакты нам, и мы свяжемся с вами</p>
        <form class="yarrow-contact-form container">
          <div class="yarrow-contact-form-top">
            <div class="yarrow-contact-form-top-left">
              <label >
                Имя*
                <input type="text" placeholder="Имя">
              </label>
              <label >
                Фамилия*
                <input type="text" placeholder="Фамилия">
              </label>
              <label >
                Почта
                <input type="email" placeholder="example@gmail.com">
              </label>
              <label >
                Телефон номер*
                <input type="number" placeholder="+998(xx)xx-xx-xx">
              </label>
              <label >
                Выберите продукт
                <input type="text" >
              </label>
              <label >
                Ващ вопрос
                <textarea  placeholder="Напишите что хотите узнать"></textarea>
              </label>
              <button>Отправить</button>
            </div>
            <div class="yarrow-contact-form-top-right">
              <img src="@/assets/mapc.svg" alt="map">
            </div>
          </div>
          <div class="yarrow-contact-form-bottom">
            <NuxtLink>Телефон: +998 99 123 34 56</NuxtLink>
            <NuxtLink>Почта: yarrow@gmail.com</NuxtLink>
          </div>
        </form>
      </section>

    </div>
  </section>
</template>

<script setup>
import { ref } from 'vue'


const faqs = [
  { question: 'Можно ли получить карту бесплатно?', answer: 'Да, карту можно получить бесплатно, просто заполните заявку.' },
  { question: 'Можно ли получить карту бесплатно?', answer: 'Да, карту можно получить бесплатно, просто заполните заявку.' },
  { question: 'Можно ли получить карту бесплатно?', answer: 'Да, карту можно получить бесплатно, просто заполните заявку.' },
  { question: 'Можно ли получить карту бесплатно?', answer: 'Да, карту можно получить бесплатно, просто заполните заявку.' },
  { question: 'Можно ли получить карту бесплатно?', answer: 'Да, карту можно получить бесплатно, просто заполните заявку.' },
  { question: 'Можно ли получить карту бесплатно?', answer: 'Да, карту можно получить бесплатно, просто заполните заявку.' },
]

const openIndex = ref(null)

function toggle(index) {
  openIndex.value = openIndex.value === index ? null : index
}
</script>

<style scoped>
@import "@/pages/index.css";
.faq {
  color: #fff;
  padding: 60px 20px;
  text-align: center;
}
.faq-question span{
  font-size: 32px;
  font-weight: 600;
  color: #fff;
}

.faq-title {
  font-size: 32px;
  font-weight: bold;
  margin-bottom: 10px;
}

.faq-subtitle {
  font-size: 18px;
  margin-bottom: 40px;
}

.faq-item {
  border: 1px solid #fff;
  border-radius: 20px;
  margin-bottom: 20px;
  overflow: hidden;
  transition: all 0.3s ease;
}

.faq-question {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 25px;
  cursor: pointer;
  font-weight: bold;
}

.arrow {
  transition: transform 0.3s ease;
}

.arrow.open {
  transform: rotate(180deg);
}

.faq-answer {
  background: #111;
  padding: 20px;
  text-align: left;
}

/* Адаптив */
@media (max-width: 768px) {
  .faq-title {
    font-size: 28px;
  }

  .faq-subtitle {
    font-size: 16px;
  }

  .faq-question {
    font-size: 16px;
    padding: 15px;
  }

  .faq-answer {
    font-size: 14px;
    padding: 15px;
  }
}
</style>
