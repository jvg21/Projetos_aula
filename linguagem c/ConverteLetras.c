//Transforma todas as letras de um texto em letras maiusculas
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char * argv[]){
  if(argc!=3){//verifica a quantidade de argumentos
    printf("Número de argumentos inválido");
    exit(0);
  }
  FILE * entrada,* saida;
  entrada = fopen(argv[1], "r");
  saida = fopen(argv[2], "w");

  if(entrada==NULL || saida==NULL){
    printf("Erro na leitura dos arquivos");
    exit(0);
   }
  int caractere;
  while((caractere=fgetc(entrada))!=EOF){
    if (caractere>=97 && caractere<=122){
      //verifica se é uma letra minuscula
      caractere-=32;
    }
    fprintf(saida, "%c",caractere);
  }
  printf("Programa executado com sucesso");
  
  return 0;
}
