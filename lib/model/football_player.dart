
class FootballPlayer {
  String playerName;
  String playerPosition;
  String playerClub;
  String activePlayer;
  int goalPlayer;
  int assistPlayer;
  String descriptionPlayer;
  String playerImage;

  FootballPlayer({
    required this.playerName,
    required this.playerPosition,
    required this.playerClub,
    required this.activePlayer,
    required this.goalPlayer,
    required this.assistPlayer,
    required this.descriptionPlayer,
    required this.playerImage,
  });
}

var footballPlayerList = [
  FootballPlayer(playerName: "Kevin De Bruyne",
      playerPosition: "AMF/CMF",
      playerClub: "Manchester City",
      activePlayer: "Yes",
      goalPlayer: 137,
      assistPlayer: 223,
      descriptionPlayer: "Kevin De Bruyne is a Belgian professional footballer who plays as a midfielder for Premier League club Manchester City and the Belgium national team. He is widely regarded as one of the best players in the world. Pundits have often described him as a complete footballer De Bruyne began his career at Genk, where he was a regular player when they won the 2010–11 Belgian Pro League. In 2012 he joined English club Chelsea, where he was used sparingly and then loaned to Werder Bremen. He signed with Wolfsburg for £18 million in 2014, where he established himself as one of the best players in the Bundesliga and was integral in the club's 2014–15 DFB-Pokal win. In the summer of 2015 De Bruyne joined Manchester City for a club record £54 million. He has since won four Premier League titles, five League Cups and an FA Cup with the club. In 2017–18 he had a significant role in Manchester City's record in becoming the only Premier League team to attain 100 points in a single season. In 2019–20, De Bruyne equalled the record for most assists in a Premier League season and was awarded Player of the Season (which he won again in 2021–22).",
      playerImage: "images/kevin-debruyne.jpeg"
  ),
  FootballPlayer(playerName: "Cristiano Ronaldo",
      playerPosition: "CF/LWF",
      playerClub: "Al Nassr",
      activePlayer: "YES",
      goalPlayer: 709,
      assistPlayer: 225,
      descriptionPlayer: "Cristiano Ronaldo is a Portuguese professional footballer who is widely regarded as one of the greatest players of all time. He was born on February 5, 1985 on the island of Madeira and began his career at Sporting CP before moving to Manchester United in 2003. Ronaldo is known for his incredible goal-scoring ability, his skill on the ball, and his impressive physical attributes. He has won numerous individual awards throughout his career, including five Ballon d'Or awards, and has also won multiple domestic and international titles with his club teams and the Portuguese national team. Ronaldo is also known for his philanthropic work, particularly in the areas of childhood hunger and poverty.",
      playerImage: "images/ronaldo.jpeg"
  ),
  FootballPlayer(playerName: "Sergio Aguero",
      playerPosition: "CF",
      playerClub: "-",
      activePlayer: "Retired",
      goalPlayer: 385,
      assistPlayer: 119,
      descriptionPlayer: "Sergio Aguero is an former Argentine professional footballer. He is widely regarded as one of the best goalscorers in the world, known for his pace, agility, and clinical finishing. Aguero began his career at Independiente in Argentina, before moving to Europe to play for Atletico Madrid and then Manchester City, where he became the club's all-time leading scorer. Throughout his career, he has won numerous domestic and international titles, including several Premier League titles, FA Cups, and the UEFA Champions League. Aguero is also a prolific scorer for the Argentina national team, having helped lead them to the finals of the 2014 World Cup and the 2015 and 2016 Copa America tournaments. Despite facing injuries and setbacks throughout his career, Aguero remains a highly respected and influential figure in world football.",
      playerImage: "images/sergio_aguero.jpeg"
  ),
  FootballPlayer(playerName: "Ruben Dias",
      playerPosition: "CB",
      playerClub: "Manchester City",
      activePlayer: "YES",
      goalPlayer: 16,
      assistPlayer: 13,
      descriptionPlayer: "Ruben Dias is a Portuguese professional footballer who currently plays as a centre-back for Premier League club Manchester City and the Portugal national team. He is widely regarded as one of the best defenders in the world and has been praised for his solid defensive skills and leadership qualities. Dias began his career at Benfica, where he played for four years before joining Manchester City in 2020 for a transfer fee of £62 million. In his debut season, Dias played a key role in helping Manchester City win the Premier League and the Carabao Cup, and was named the Premier League Player of the Season.",
      playerImage: "images/ruben_dias.jpeg"
  ),
  FootballPlayer(playerName: "Lionel Messi",
      playerPosition: "AMF/RWF",
      playerClub: "Inter Miami",
      activePlayer: "Yes",
      goalPlayer: 705,
      assistPlayer: 333,
      descriptionPlayer: "Lionel Messi is an Argentine professional footballer who plays as a forward for Paris Saint-Germain and the Argentina national team. Widely regarded as one of the greatest football players of all time, Messi has won numerous awards and accolades throughout his career, including seven Ballon d'Or titles. He spent the majority of his career playing for Barcelona, where he became the club's all-time leading scorer and helped lead them to numerous domestic and international titles. Known for his incredible dribbling skills, speed, and scoring ability, Messi has been a dominant force in world football for over a decade.",
      playerImage: "images/messi.jpeg"
  ),
  FootballPlayer(playerName: "Erling Haaland",
      playerPosition: "CF",
      playerClub: "Manchester City",
      activePlayer: "YES",
      goalPlayer: 168,
      assistPlayer: 40,
      descriptionPlayer: "Erling Haaland is a Norwegian professional footballer who currently plays as a striker for German club Borussia Dortmund and the Norway national team. He is known for his incredible speed, strength, and finishing ability, and has quickly established himself as one of the best young players in the world.",
      playerImage: "images/haaland.jpeg"
  ),
  FootballPlayer(playerName: "Kai Havertz",
      playerPosition: "AMF",
      playerClub: "Arsenal",
      activePlayer: "YES",
      goalPlayer: 103,
      assistPlayer: 50,
      descriptionPlayer: "Kai Havertz is a German professional footballer who plays as an attacking midfielder for English club Chelsea and the Germany national team. He is known for his exceptional technical skills, vision, and composure on the ball, and has been hailed as one of the most promising young talents in European football.",
      playerImage: "images/kai_havertz.jpeg"
  ),
  FootballPlayer(playerName: "Mario Gomez",
      playerPosition: "CF",
      playerClub: "-",
      activePlayer: "Retired",
      goalPlayer: 319,
      assistPlayer: 72,
      descriptionPlayer: "Mario Gomez is a retired German professional footballer who played as a striker for several top clubs in Europe, including VfB Stuttgart, Bayern Munich, and Fiorentina. He was known for his clinical finishing, aerial ability, and physical strength, and was a key player for both his club and the Germany national team during his career.",
      playerImage: "images/mario_gomez.jpeg"
  ),
  FootballPlayer(playerName: "Yaya Toure",
      playerPosition: "CMF",
      playerClub: "-",
      activePlayer: "Retired",
      goalPlayer: 102,
      assistPlayer: 70,
      descriptionPlayer: "Yaya Toure is an Ivorian former professional footballer who played as a central midfielder for top clubs like Barcelona, Manchester City, and Olympiacos. He was known for his technical ability, physical strength, and tactical intelligence, and was widely regarded as one of the best midfielders of his generation.",
      playerImage: "images/yaya_toure.jpeg"
  ),
  FootballPlayer(playerName: "Alvaro Negredo",
      playerPosition: "CF",
      playerClub: "Cadiz CF",
      activePlayer: "YES",
      goalPlayer: 252,
      assistPlayer: 86,
      descriptionPlayer: "Alvaro Negredo is a retired Spanish professional footballer who played as a striker for several clubs in Spain and England, including Sevilla, Manchester City, and Middlesbrough. He was known for his powerful shots, aerial ability, and physical presence, and was a prolific scorer throughout his career.",
      playerImage: "images/alvaro_negredo.jpeg"
  ),
];
