int whoWins(Map<String, int> team1, Map<String, int> team2) {
  var score1 = (team1['2 pointers']! * 2) + team1['Free throws']! + (team1['3 pointers']! * 3);
  var score2 = (team2['2 pointers']! * 2) + team2['Free throws']! + (team2['3 pointers']! * 3);
  if (score1 > score2) {
    return 1;
  } else if (score1 == score2) {
    return 0;
  } else {
    return 2;
  }
}
