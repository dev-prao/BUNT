import { ref } from 'vue';
import { defineStore } from 'pinia';
import axios from 'axios';

const REST_PLAYER_API = 'http://localhost:8080/api/player';

export const usePlayerStore = defineStore('player', () => {
  const players = ref([]);
  const selectedPlayer = ref(null);

  const findPlayer = async (player) => {
    try {
      const response = await axios.post(`${REST_PLAYER_API}/find`, player);
      if (response.status === 200) {
        selectedPlayer.value = response.data;
      } else {
        selectedPlayer.value = null;
      }
    } catch (error) {
      console.error('findPlayer 오류:', error);
      selectedPlayer.value = null;
    }
  };

  const findPlayersByTeamId = async (teamId) => {
    try {
      const response = await axios.get(`${REST_PLAYER_API}/find/${teamId}`);
      if (response.status === 200) {
        console.log('플레이어 데이터:', response.data); // 콘솔 로그 추가
        players.value.splice(0);
        // players.value = response.data;
        for (let i = 0; i < response.data.length; i++) {
          players.value.push(response.data[i]);
        }
        // 데이터를 sessionStorage에 저장
        sessionStorage.setItem('players', JSON.stringify(players.value));
      } else {
        players.value = [];
      }
    } catch (error) {
      console.error('findPlayersByTeamId 오류:', error);
      players.value = [];
    }
  };

  // 스토어가 초기화될 때 sessionStorage에서 데이터를 복원
  const loadPlayersFromStorage = () => {
    const storedPlayers = sessionStorage.getItem('players');
    if (storedPlayers) {
      players.value = JSON.parse(storedPlayers);
    }
  };

  loadPlayersFromStorage();

  return { players, selectedPlayer, findPlayer, findPlayersByTeamId };
});
