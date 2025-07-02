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
@import url('https://fonts.googleapis.com/css2?family=Manrope:wght@200..800&display=swap');
*{
  font-family: "Manrope", sans-serif;
}
*{
  box-sizing: border-box;

}
.yarrow-api{
  overflow-x: hidden;
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
.elipse6 {
  top: 50%;
  left: 10%;
  z-index: -1;
}
.elipse7 {
  top: 70%;
  left: 70%;
  z-index: -1;
}
.elipse8 {
  top: 0%;
  left: -10%;
  z-index: -1;
}
.elipse9 {
  top: 70%;
  left: 80%;
  z-index: -1;
}
.elipse10 {
  top: 3%;
  left: -15%;
  z-index: -1;
}
.elipse11 {
  top: 40%;
  left: 85%;
  z-index: -1;
}
.elipse12 {
  top: 3%;
  left: -15%;
  z-index: -1;
}
.elipse13 {
  top: 70%;
  left: 85%;
  z-index: -1;
}
.elipse14 {
  top: 40%;
  left: 30%;
  z-index: -1;
  scale: 1.5;

}
.elipse15 {
  top: 80%;
  left: 15%;
  z-index: -1;
  scale: 1.5;

}
.elipse16 {
  top: 75%;
  left: 30%;
  z-index: -1;
  scale: 1.5;
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