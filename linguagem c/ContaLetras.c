#include <stdio.h>
#include <stdlib.h>

int main(int argc,char *argv[]) {
  if(argc!=2){
    printf("Número de argumentos inválido");
    exit(0);
  }
  FILE * texto;
  int count[26];

   //popula todas as posições do vetor com o valor 0
  for (int c = 0;c<26;c++){
    count[c] = 0;
  }

  int caractere;
  int i = 0;
  while(i<26){
   //a cada execução a repetição procura por uma diferente letra do alfabeto
    texto = fopen(argv[1],"r");
  
    if(texto == NULL){
      printf("O arquivo não pode ser aberto, saindo...... ");
      exit(0);
      }
    
    do{
      caractere = fgetc(texto);
      //printf("%c\n",caractere);
      if ((caractere == (97+i))||((caractere == (65+i)))){//verifica se é uma letra
       // printf("%d aqui",i);
        count[i]+=1;
      }
    }while(caractere!=EOF);
    
  fclose(texto);
 i++;
}
  for(i = 0;i<26;i++){
    printf("%c = %d\n",65+i,count[i]);
  }
 return 0;
}
