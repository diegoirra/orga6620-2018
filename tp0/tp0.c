#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <complex.h>
#include <errno.h>
#include <math.h>

#define SUCCESS 0
#define ERROR_OUTPUT -1
#define N 255
#define RESOLUTION_DEFAULT "640x480"
#define CENTER_DEFAUlT 0+0*I
#define WIDTH_DEFAULT 2
#define HEIGHT_DEFAULT 2
#define SEED_DEFAULT -0.726895347709114071439 + 0.188887129043845954792*I
#define OUT_FILE "-" //lo manda por consola

double complex string_to_complex(char* z){
	double real, imag;
	char i;
	int scanresult = sscanf(z, "%lf%lf%c", &real, &imag, &i);
	if (scanresult < 3){
		puts("Error en argumeto complejo. Usando 0.1");
		return 0.1;
	}
	return real+imag*I;
}

void handle(int res_horizontal,int res_vertical, double complex center,
		double width, double height, double complex seed, FILE* outf){
	printf("Resolution: %dx%d\n", res_horizontal, res_vertical);
	printf("Centro de coordenadas del plano compejo: %Lf%+Lfi\n", creall(center), cimagl(center));
	printf("Ancho: %f. Altura: %f.\n", width, height);
    printf("Seed: %Lf%+Lfi\n", creall(seed), cimagl(seed));
}


int main(int argc, char** argv) {

	char* resolution = RESOLUTION_DEFAULT;
	double complex center = CENTER_DEFAUlT;
	double width = WIDTH_DEFAULT;
	double height = HEIGHT_DEFAULT;
	double complex seed = SEED_DEFAULT;
	char* output_filename = OUT_FILE;
    int salidaConsola = -1;
    char* pathToExe = argv[0];
    
	int i;
    for (i = 1; i < argc; i++){

    	if(strcmp(argv[i], "-r") == 0 || strcmp(argv[i], "--resolution") == 0){
    		resolution = argv[i+1];
		}
		if(strcmp(argv[i], "-c") == 0 || strcmp(argv[i], "--center") == 0){
			center = string_to_complex(argv[i+1]);
		}
		if(strcmp(argv[i], "-w") == 0 || strcmp(argv[i], "--width") == 0){
			width = atof(argv[i+1]);
		}
		if(strcmp(argv[i], "-H") == 0 || strcmp(argv[i], "--height") == 0){
			height = atof(argv[i+1]);
		}
		if(strcmp(argv[i], "-s") == 0 || strcmp(argv[i], "--seed") == 0){
			seed = string_to_complex(argv[i+1]);
		}
		if(strcmp(argv[i], "-o") == 0 || strcmp(argv[i], "--output") == 0){
			output_filename = argv[i+1];
		}
    }

    int scanresult, res_horizontal, res_vertical;
    scanresult = sscanf(resolution, "%dx%d", &res_horizontal, &res_vertical);
    if (scanresult < 2 ){
    	printf("Error obteniendo resolucion. Usando default\n");
    	sscanf(RESOLUTION_DEFAULT, "%dx%d", &res_horizontal, &res_vertical);
    }
    
    
    double pasoH = ((width) / (double)(res_horizontal))/2;
    double pasoV = ((height) / (double)(res_vertical))/2;
    int contadorBrillo;
    double temp, valorAbsoluto;
    double complex pixel;

    FILE* outf;
    if (strcmp(output_filename, "-") != 0){
    	outf = fopen(output_filename, "w");
    	if (outf == NULL){
    		fprintf(stderr, "No se pudo abrir archivo de salida %s\n", output_filename);
    		perror("Saliendo con error");
    		exit(ERROR_OUTPUT);
    	}
    } else outf = stdout;

    handle(res_horizontal, res_vertical, center, width, height, seed, outf);
    
    double real,imag;
    
    if (salidaConsola == 1) fprintf(stdout, "P2 \n%d %d \n255 \n", res_horizontal, res_vertical); else fprintf(outf, "P2 \n%d %d \n255 \n", res_horizontal, res_vertical);
   
    for (int y = 0; y <= res_vertical; y++){
        for (int x = 1; x <= res_horizontal; x++){
            real = pasoH * (2 * x -1) - width / 2 + creall(center);
            imag = -pasoV * (2 * y -1) + height / 2 + cimagl(center);
            pixel = real + imag*I;
            for (contadorBrillo = 0; contadorBrillo <= N; contadorBrillo++){
                valorAbsoluto = sqrtf( (creall(pixel) * creall(pixel)) + (cimagl(pixel) * cimagl(pixel)) );
                if (valorAbsoluto > 2) break;
                temp = ((creall(pixel))*(creall(pixel)))-((cimagl(pixel))*(cimagl(pixel))) + creall(seed);
                imag = ((cimagl(pixel))*(creall(pixel)))+((creall(pixel))*(cimagl(pixel))) + cimagl(seed);
                pixel = temp + imag*I;
            }
            if (salidaConsola == 1) fprintf(stdout, "%d ", contadorBrillo); else fprintf(outf, "%d ", contadorBrillo );
        }
        if (salidaConsola == 1) fprintf(stdout, "\n"); else fprintf(outf, "\n");
    }
    
    if (salidaConsola != 1){
        rewind(outf);
        fclose(outf);
        printf("Archivo guardado en %s/%s\n", pathToExe, output_filename);
    }
    
    
    //if (outf != NULL && outf != stdin)
   // 	fclose(outf);

	return SUCCESS;
}
