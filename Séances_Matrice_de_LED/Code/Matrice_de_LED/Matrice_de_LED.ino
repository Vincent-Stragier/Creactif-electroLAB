#define REFRESH_TIME 0 // 0 ms
#define ANIMATION_TIME 1000 // 1000 ms

// Matrice 4 par 8 (4 premières colonne pour une couleur, les 4 seconde pour l'autre couleur)
byte matrix[4] = {
  b00001111,
  b00001111,
  b00001111,
  b00001111
};

// Prototype de la fonction
void displayOnMatrix(byte *tab, uint64_t _delay = 4 * REFRESH_TIME * 25);


void setup() {
  Serial.begin(115200);
  Serial.println("Configuration des broches.");

  // Initialisatton de toutes les broches
  // Configuration des broches en sorties
  for (uint8_t i(2); i < 14; i++) {
    pinMode(i, OUTPUT);
  }

  // Pilotage des broches afin d'éteindre l'ensemble de la matrice
  for (uint8_t i(2); i < 10; i++) {
    digitalWrite(i, LOW);
  }

  for (uint8_t i(10); i < 14; i++)  {
    digitalWrite(i, HIGH);
  }

  Serial.println("Configuration des broches terminée.");
}

void loop() {
  // Tester un motif assymétrique pour déterminer l'orientation de la matrice
  matrix[0] = b01001111;
  matrix[1] = b00110000;
  matrix[2] = b00001010;
  matrix[3] = b11110000;

  displayOnMatrix(matrix, ANIMATION_TIME);

  // Allumer toutes les LED dans les deux couleurs
  matrix[0] = b11111111;
  matrix[1] = b11111111;
  matrix[2] = b11111111;
  matrix[3] = b11111111;

  displayOnMatrix(matrix, ANIMATION_TIME);

  // Allumer toutes les LED dans une couleur
  matrix[0] = b11110000;
  matrix[1] = b11110000;
  matrix[2] = b11110000;
  matrix[3] = b11110000;

  displayOnMatrix(matrix, ANIMATION_TIME);

  // Allumer toutes les LED dans l'autre couleur des LED
  matrix[0] = b00001111;
  matrix[1] = b00001111;
  matrix[2] = b00001111;
  matrix[3] = b00001111;

  displayOnMatrix(matrix, ANIMATION_TIME);

  /*
    // Pour tester la matrice de LED sans la fonction displayOnMatrix
    for (uint8_t i(2); i < 10; i++)
    digitalWrite(i, HIGH);

    for (uint8_t i(10); i < 14; i++)
    digitalWrite(i, LOW);

    delay(2000);

    for (uint8_t i(2); i < 10; i++)
    digitalWrite(i, LOW);

    for (uint8_t i(10); i < 14; i++)
    digitalWrite(i, HIGH);

    delay(2000);
  */
}

// Définition de la fonction
void displayOnMatrix(byte *tab, uint64_t _delay)  {
  uint64_t temp = millis();

  while (millis() - temp <= _delay)  {
    for (int i(10); i < 14; i++) {
      digitalWrite(i, HIGH);

      for (int j(2); j < 10; j++) {
        digitalWrite(j, !bitRead(tab[i - 10], j - 2));
        Serial.println((String) bitRead(tab[i - 10], j - 2));
      }

      delay(REFRESH_TIME);
      digitalWrite(i, LOW);

      for (int j(2); j < 10; j++) {
        digitalWrite(j, HIGH);
      }
    }
  }
}
