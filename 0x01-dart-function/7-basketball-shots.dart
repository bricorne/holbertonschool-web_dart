int calculatePoints(Map<String, int> team) {
  return (team['Free throws'] ?? 0) * 1 +
         (team['2 pointers'] ?? 0) * 2 +
         (team['3 pointers'] ?? 0) * 3;
}

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int pointsA = calculatePoints(teamA);
  int pointsB = calculatePoints(teamB);

  if (pointsA > pointsB) return 1;
  if (pointsB > pointsA) return 2;
  return 0;
}