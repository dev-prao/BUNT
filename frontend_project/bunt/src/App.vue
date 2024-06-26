<script setup>
import { RouterView, useRoute } from 'vue-router';
import Footer from "@/components/common/Footer.vue";
import TheHeaderNav from "@/components/common/TheHeaderNav.vue";
import { ref, onMounted, onUnmounted } from 'vue';

// 현재 라우트를 가져오기 위한 useRoute 훅 사용
const route = useRoute();

// 헤더와 푸터의 가시성을 추적하기 위한 상태 변수
const isHeaderVisible = ref(true);
const isFooterVisible = ref(false);

// 스크롤 이벤트 핸들러
const handleScroll = () => {
  // 스크롤 위치가 최상단일 때만 헤더를 표시
  isHeaderVisible.value = window.scrollY === 0;
  // 스크롤 위치가 문서의 맨 아래에 도달했을 때 푸터를 표시
  isFooterVisible.value = window.innerHeight + window.scrollY >= document.body.offsetHeight;
};

onMounted(() => {
  // 컴포넌트가 마운트되었을 때 스크롤 이벤트 리스너 추가
  window.addEventListener('scroll', handleScroll);
  handleScroll(); // 초기 상태 설정
});

onUnmounted(() => {
  // 컴포넌트가 언마운트되었을 때 스크롤 이벤트 리스너 제거
  window.removeEventListener('scroll', handleScroll);
});
</script>

<template>
  <div id="app">
    <!-- route.meta.hideHeaderFooter 값에 따라 TheHeaderNav 컴포넌트의 표시 여부 결정 -->
    <TheHeaderNav v-if="!route.meta.hideHeaderFooter && isHeaderVisible" />
    <main>
      <RouterView />
    </main>
    <Footer v-if="!route.meta.hideHeaderFooter && isFooterVisible" />
  </div>
</template>

<style scoped>
/* 모든 요소의 기본 여백과 패딩을 제거 */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* body와 html 요소의 여백과 패딩 제거 */
html, body {
  margin: 0;
  padding: 0;
  height: 100%;
  overflow: auto; /* 전체 페이지에서 스크롤을 가능하게 설정 */
}

/* TheHeaderNav 스타일 조정 */
TheHeaderNav {
  height: 50px; /* TheHeaderNav 높이 조정 */
  background-color: white; /* 필요에 따라 배경색 추가 */
  z-index: 1000; /* 다른 요소보다 위에 오도록 z-index 추가 */
  width: 100%;
  position: fixed; /* 고정 위치 */
  top: 0;
}

/* main 영역의 스타일 조정 */
main {
  flex: 1;
  padding-top: 0; /* TheHeaderNav 높이만큼 패딩 추가 */
}

/* Footer 스타일 조정 */
Footer {
  position: fixed; /* 고정 위치 */
  bottom: 0;
  right: 0; /* 오른쪽 하단에 고정 */
  width: 100%;
  height: 10vh; /* Footer 높이 */
  background-color: white; /* 필요에 따라 배경색 추가 */
  z-index: 1000; /* 다른 요소보다 위에 오도록 z-index 추가 */
}

/* 추가 스타일 */
#app {
  display: flex;
  flex-direction: column;
  height: 100vh; /* 전체 높이를 100vh로 설정 */
}
</style>