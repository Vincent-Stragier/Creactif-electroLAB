// definition des lignes et colonnes en tableaux
// les valeurs représentent les numeros des pins utilisees
int L[4] = {1,2,3,4};
int CO[4] = {5,6,7,8};
int CV[4] = {9,10,11,12};

void setup() {

  for(int i = 0; i<4;i++){

    // definition des pins comme sorties
    pinMode(CV[i],OUTPUT);
    pinMode(CO[i],OUTPUT);
    pinMode(L[i],OUTPUT);

    // on eteint toute la matrice pour bien commencer
    digitalWrite(L[i],0);
    digitalWrite(CV[i],1);
    digitalWrite(CO[i],1);
  }
}

void loop() {

  // une premiere boucle pour balayer les lignes
  for(int l = 0; l < 4; l++){

    // une seconde boucle pour balayer les colonnes
    for(int c = 0; c < 4 ;c++){

      // pour chaque colonne, on choisit de l'allumer ou de l'eteindre
      // ici, on affiche un X en couleurs !
      digitalWrite(CV[c], !(c==l));
      digitalWrite(CO[c], !(c==3-l));
    }

    // on allume la ligne selectionnee
    digitalWrite(L[l],1);
    // on la laisse allumee suffisamment longtemps pour la voir
    delay(2);
    // on l'eteint avant de passer a la suivante
    digitalWrite(L[l],0);
  }
}
