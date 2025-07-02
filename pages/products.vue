<template>
  <section class="api-solutions">
    <div class="container api-solutions-wrapper">
      <h2 class="api-title">
        Ваши задачи — наши решения с API <br />
        <span class="highlight">Yarrow maps</span>
      </h2>

      <div class="api-buttons">
        <button v-for="(btn, idx) in buttons" :key="idx" class="api-btn">
          {{ btn }}
        </button>
      </div>

      <h3 class="api-subtitle">Карты</h3>

      <div class="api-grid">
        <div class="api-card ">
          <img src="@/assets/pr1.svg" alt="JavaScript API" />
          <div class="text">
            <h4>JavaScript API</h4>
            <p>Интерактивная карта с JavaScript API — легко встраивается, мгновенно загружается, предлагает пользователю поиск, маршруты и панорамы.</p>
          </div>
        </div>

        <div class="api-card tall">
          <img src="@/assets/pr1.svg" alt="MapKit SDK" />
          <div class="text">
            <h4>MapKit SDK</h4>
            <p>MapKit SDK позволяет интегрировать интерактивные карты Yarrow в мобильные приложения на Android и iOS. Пользователи получают доступ ко всем ключевым функциям.</p>
          </div>
        </div>

        <div class="api-card">
          <img src="@/assets/pr3.svg" alt="Tiles API" />
          <div class="text">
            <h4>Tiles API</h4>
            <p>Позволяет встраивать фрагменты карт в приложения и системы с ограниченными графическими возможностями. Работает по HTTP и не требует WebGL.</p>
          </div>
        </div>

        <div class="api-card">
          <img src="@/assets/pr4.svg" alt="Static API" />
          <div class="text">
            <h4>Static API</h4>
            <p>Получайте изображение нужного фрагмента карты по HTTP-запросу. Отличное решение, когда интерактивность не требуется.</p>
          </div>
        </div>
      </div>

      <h3 class="api-subtitle">Навигация</h3>

      <div class="api-grid api-grid-navigation">
        <div class="api-card ">
          <img src="@/assets/pr1.svg" alt="JavaScript API" />
          <div class="text">
            <h4>Расстояния</h4>
            <p>Определяет длину и время пути для каждой пары точек отправления и прибытия.</p>
          </div>
        </div>

        <div class="api-card ">
          <img src="@/assets/pr1.svg" alt="MapKit SDK" />
          <div class="text">
            <h4>Детали маршурта</h4>
            <p>Строит маршрут между точками для разных видов транспорта, учитывая пробки, пересадки и прочие детали.</p>
          </div>
        </div>

        <div class="api-card">
          <img src="@/assets/pr3.svg" alt="Tiles API" />
          <div class="text">
            <h4>NaviKit SDK</h4>
            <p>Комплект разработческих инструментов, позволяющий быстро создать и гибко настроить собственное навигационное приложение под любые задачи.</p>
          </div>
        </div>

      </div>

      <h3 class="api-subtitle">Геолокация</h3>

      <div class="api-grid api-grid-navigation">
        <div class="api-card ">
          <img src="@/assets/pr1.svg" alt="JavaScript API" />
          <div class="text">
            <h4>Локатор</h4>
            <p>Локатор — API, который определяет местоположение устройств без GPS, опираясь на данные Wi-Fi сетей, IP-адресов и базовых станций сотовой связи.</p>
          </div>
        </div>
      </div>

      <h3 class="api-subtitle">Поиск мест</h3>

      <div class="api-grid api-grid-navigation">
        <div class="api-card ">
          <img src="@/assets/pr1.svg" alt="JavaScript API" />
          <div class="text">
            <h4>Геокодер</h4>
            <p>Преобразует координаты в адреса и наоборот — адреса в координаты.</p>
          </div>
        </div>

        <div class="api-card ">
          <img src="@/assets/pr1.svg" alt="MapKit SDK" />
          <div class="text">
            <h4>Геосаджест</h4>
            <p>Автодополнение адресов и организаций. Можно встраивать в сайты, CRM и мобильные приложения.</p>
          </div>
        </div>

        <div class="api-card">
          <img src="@/assets/pr3.svg" alt="Tiles API" />
          <div class="text">
            <h4>Геокодер</h4>
            <p>Преобразует координаты в адреса и наоборот — адреса в координаты.</p>
          </div>
        </div>

      </div>

    </div>
  </section>
</template>

<script setup>
const buttons = ['Карты', 'Навигация', 'Геолокация', 'Поиск мест']
</script>

<style scoped>
.api-solutions{
  width: 100%;
  display: flex;
}
.api-solutions-wrapper{
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
}
.api-title{
  font-size: 64px;
  color: #fff;
  line-height: 64px;
  font-weight: bold;
  text-align: center;
}
.api-title span{
  color: #FE6D00;

}
.api-buttons{
  width: max-content;
  padding: 15px;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 26px;
  border: 2px solid #fff;
  border-radius: 20px;
}
.api-buttons button{
  background: transparent;
  color: #fff;
  border: 2px solid #fff;
  border-radius: 10px;
  cursor: pointer;
  transition: all .2s;
  padding: 10px 35px;
  font-size: 26px;

}
.api-buttons button:hover{
  color: #000;
  background: #fff;
}
.api-grid{
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  gap: 20px;
}
.api-card{
  width: 48%;
  display: flex;
  flex-direction: column;
  padding: 20px;
  border-radius: 20px;
  border: 2px solid #fff;

}
.api-subtitle{
  font-size: 64px;
}
.api-card .text{
  display: flex;
  flex-direction: column;
  gap: 20px;
  margin-top: 20px;
}
.api-card .text h4{
  font-size: 36px;
  margin: 0;
  padding: 0;
}
.api-card .text p{
  font-size: 24px;
  margin: 0;
  padding: 0;
}
.api-grid-navigation{
  justify-content: center;
}
</style>
