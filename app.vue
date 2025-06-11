<template>
  <div class="yarrow-api">
    <Navbar/>
    <NuxtPage/>
    <Footer/>
  </div>
</template>


<style>
body{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  background: #000;
  color: #fff;
  overflow-x: hidden;


}
*{
  box-sizing: border-box;

}
.elipse{
  position: absolute;
  top: 0;
  left: 0;
  width: 550px;
  z-index: -1;
}
.elipse1{
  top: -280px;
  left: -280px;
}
.elipse2{
  top: 200px;
  left: 80%;
  z-index: -1;
  width: 550px;
}

.elipse3{
  top: -50px;
  left: 45%;
  z-index: -1;
}
.elipse4{
  top: -300px;
  left: 5%;
  z-index: -1;
}
.elipse5{
  top: 0;
  left: 95%;
  z-index: -1;
}

.container {
  width: 100%;
  padding-right: var(--bs-gutter-x, 0.75rem);
  padding-left: var(--bs-gutter-x, 0.75rem);
  margin-right: auto;
  margin-left: auto;
}

@media (min-width: 576px) {
  .container {
    max-width: 540px;
  }
}

@media (min-width: 768px) {
  .container {
    max-width: 720px;
  }
}

@media (min-width: 992px) {
  .container {
    max-width: 960px;
  }
}

@media (min-width: 1200px) {
  .container {
    max-width: 1140px;
  }
}

@media (min-width: 1400px) {
  .container {
    max-width: 1320px;
  }
}

</style>