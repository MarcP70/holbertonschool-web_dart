int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  // Calcul des points pour l'équipe A
  int sumPointsTeamA =
    (teamA['Free throws'] ?? 0) * 1 +
    (teamA['2 pointers'] ?? 0) * 2 +
    (teamA['3 pointers'] ?? 0) * 3;

  // Calcul des points pour l'équipe B
  int sumPointsTeamB =
    (teamB['Free throws'] ?? 0) * 1 +
    (teamB['2 pointers'] ?? 0) * 2 +
    (teamB['3 pointers'] ?? 0) * 3;

  // Comparaison des scores
  if (sumPointsTeamA > sumPointsTeamB) {
    return 1; // Équipe A gagne
  } else if (sumPointsTeamA < sumPointsTeamB) {
    return 2; // Équipe B gagne
  } else {
    return 0; // Égalité
  }
}
