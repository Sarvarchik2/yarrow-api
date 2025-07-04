<!--<template>-->
<!--  <div class="navbar">-->
<!--    <img class="elipse elipse1" src="@/assets/elipse.png" alt="elipse">-->

<!--    <NuxtLink to="/" class="logo">-->
<!--      <img src="@/assets/logo.svg" alt="yarrow" />-->
<!--    </NuxtLink>-->

<!--    <ul class="navbar-list">-->
<!--      <li><NuxtLink to="/works">Кейсы</NuxtLink></li>-->
<!--      <li><NuxtLink to="/products">Продукты</NuxtLink></li>-->
<!--      <li><NuxtLink to="/faq">Контакты</NuxtLink></li>-->
<!--    </ul>-->

<!--    <div class="navbar-right">-->
<!--      <div class="language-dropdown language-dropdown-main" @click="toggleDropdown">-->
<!--        <img src="@/assets/lang.svg" alt="lang" />-->
<!--        {{ currentLocale.toUpperCase() }}-->
<!--        <ul v-if="showDropdown" class="dropdown-list">-->
<!--          <li v-for="locale in locales" :key="locale.code" @click="changeLanguage(locale.code)">-->
<!--            {{ locale.name }}-->
<!--          </li>-->
<!--        </ul>-->
<!--      </div>-->
<!--      <NuxtLink to="/login">Войти</NuxtLink>-->
<!--      <img class="menu-burger" src="@/assets/menu.png" alt="menu">-->
<!--      <div class="nav-mobile-menu">-->
<!--        <div class="language-dropdown language-dropdown-mobile" @click="toggleDropdown">-->
<!--          <img src="@/assets/lang.svg" alt="lang" />-->
<!--          {{ currentLocale.toUpperCase() }}-->
<!--          <ul v-if="showDropdown" class="dropdown-list">-->
<!--            <li v-for="locale in locales" :key="locale.code" @click="changeLanguage(locale.code)">-->
<!--              {{ locale.name }}-->
<!--            </li>-->
<!--          </ul>-->
<!--        </div>-->
<!--      </div>-->
<!--    </div>-->
<!--  </div>-->
<!--</template>-->
<!--<script setup lang="ts">-->
<!--import { ref } from 'vue'-->

<!--const locales = [-->
<!--  { code: 'ru', name: 'Русский' },-->
<!--  { code: 'en', name: 'English' },-->
<!--  { code: 'uz', name: 'O‘zbek' }-->
<!--]-->

<!--const currentLocale = ref('ru')-->
<!--const showDropdown = ref(false)-->

<!--const toggleDropdown = () => {-->
<!--  showDropdown.value = !showDropdown.value-->
<!--}-->

<!--const changeLanguage = (lang: string) => {-->
<!--  currentLocale.value = lang-->
<!--  showDropdown.value = false-->
<!--}-->
<!--</script>-->

<!--<style>-->
<!--@import './navbar.css';-->
<!--</style>-->


<template>
  <div class="navbar">
    <NuxtLink to="/" class="logo">
      <img src="@/assets/logo.svg" alt="yarrow" />
    </NuxtLink>

    <ul class="navbar-list">
      <li ><NuxtLink to="/works">Кейсы</NuxtLink></li>
      <li><NuxtLink to="/products">Продукты</NuxtLink></li>
      <li><NuxtLink to="/faq">Контакты</NuxtLink></li>
    </ul>

    <div class="navbar-right">
      <div class="language-dropdown language-dropdown-main" @click="toggleDropdown">
        <img src="@/assets/lang.svg" alt="lang" />
        {{ currentLocale.toUpperCase() }}
        <ul v-if="showDropdown" class="dropdown-list">
          <li v-for="locale in locales" :key="locale.code" @click="changeLanguage(locale.code)">
            {{ locale.name }}
          </li>
        </ul>
      </div>
      <NuxtLink to="/login" class="login-btn language-dropdown-main">Войти</NuxtLink>

      <!-- Бургер -->
      <img class="menu-burger" src="@/assets/menu.png" alt="menu" @click="toggleMobileMenu">
    </div>

    <!-- Мобильное меню -->
    <div v-if="showMobileMenu" class="mobile-menu">
      <div class="mobile-menu-header">
        <div class="language-dropdown" @click="toggleDropdown">
          <img src="@/assets/lang.svg" alt="lang" />
          {{ currentLocale.toUpperCase() }}
          <ul v-if="showDropdown" class="dropdown-list">
            <li v-for="locale in locales" :key="locale.code" @click="changeLanguage(locale.code)">
              {{ locale.name }}
            </li>
          </ul>
        </div>
        <button class="close-btn" @click="toggleMobileMenu">✕</button>
      </div>
      <ul class="mobile-menu-list">
        <li @click="toggleMobileMenu"><NuxtLink to="/works">Кейсы</NuxtLink></li>
        <li @click="toggleMobileMenu"><NuxtLink to="/products">Продукты</NuxtLink></li>
        <li @click="toggleMobileMenu"><NuxtLink to="/faq">Контакты</NuxtLink></li>
      </ul>
      <NuxtLink to="/login" class="login-btn">Войти</NuxtLink>
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
const showMobileMenu = ref(false)

const toggleDropdown = () => {
  showDropdown.value = !showDropdown.value
}

const changeLanguage = (lang: string) => {
  currentLocale.value = lang
  showDropdown.value = false
}

const toggleMobileMenu = () => {
  showMobileMenu.value = !showMobileMenu.value
}
</script>

<style scoped>
@import "./navbar.css";
.navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 15px;
  position: relative;
}

.menu-burger {
  display: none;
  width: 40px;
  cursor: pointer;
}

.mobile-menu {
  position: fixed;
  top: 0; left: 0;
  width: 100%;
  height: 100%;
  background: #000;
  z-index: 999;
  display: flex;
  flex-direction: column;
  align-items: center;
  padding-top: 60px;
}

.mobile-menu-header {
  position: absolute;
  top: 20px;
  width: 90%;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.close-btn {
  background: none;
  border: 2px solid white;
  border-radius: 50%;
  color: white;
  font-size: 24px;
  width: 40px;
  height: 40px;
}

.mobile-menu-list {
  list-style: none;
  padding: 0;
  margin: 40px 0;
  width: 80%;
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.mobile-menu-list li {
  margin: 15px 0;
  border-bottom: 1px solid white;
  line-height: 40px;
  width: 57%;
}

.mobile-menu-list li a {
  color: white;
  text-decoration: none;
  font-size: 25px;
}

.login-btn {
  border: 2px solid white;
  border-radius: 50px;
  padding: 10px 20px;
  color: white;
  text-decoration: none;
  font-size: 18px;
}

@media (max-width: 768px) {
  .navbar-list {
    display: none;
  }
  .menu-burger {
    display: block;
  }
}
</style>
