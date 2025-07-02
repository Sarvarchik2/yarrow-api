<template>
  <div class="navbar">
    <img class="elipse elipse1" src="@/assets/elipse.png" alt="elipse">

    <NuxtLink to="/" class="logo">
      <img src="@/assets/logo.svg" alt="yarrow" />
    </NuxtLink>

    <ul class="navbar-list">
      <li><NuxtLink to="/works">Кейсы</NuxtLink></li>
      <li><NuxtLink to="/products">Продукты</NuxtLink></li>
      <li><NuxtLink to="/faq">Контакты</NuxtLink></li>
    </ul>

    <div class="navbar-right">
      <div class="language-dropdown" @click="toggleDropdown">
        <img src="@/assets/lang.svg" alt="lang" />
        {{ currentLocale.toUpperCase() }}
        <ul v-if="showDropdown" class="dropdown-list">
          <li v-for="locale in locales" :key="locale.code" @click="changeLanguage(locale.code)">
            {{ locale.name }}
          </li>
        </ul>
      </div>
      <NuxtLink to="/login">Войти</NuxtLink>
      <img class="menu-burger" src="@/assets/menu.png" alt="menu">
    </div>
  </div>
</template>
<script setup lang="ts">
import { ref } from 'vue'

const locales = [
  { code: 'ru', name: 'Русский' },
  { code: 'en', name: 'English' },
  { code: 'uz', name: 'O‘zbek' }
]

const currentLocale = ref('ru')
const showDropdown = ref(false)

const toggleDropdown = () => {
  showDropdown.value = !showDropdown.value
}

const changeLanguage = (lang: string) => {
  currentLocale.value = lang
  showDropdown.value = false
}
</script>

<style>
@import './navbar.css';
</style>