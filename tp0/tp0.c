#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <complex.h>
#include <errno.h>

#define SUCCESS 0
#define ERROR_OUTPUT -1

#define RESOLUTION_DEFAULT "640x480"
#define CENTER_DEFAUlT I
#define WIDTH_DEFAULT 2
#define HEIGHT_DEFAULT 2
#define SEED_DEFAULT -0.726895347709114071439 + 0.188887129043845954792*I
#define OUT_FILE "-" //lo manda por consola

double complex string_to_complex(char* z){
	float real, imag;
	char i;
	int scanresult = sscanf(z, "%f%f%c", &real, &imag, &i);
	if (scanresult < 3){
		puts("Error en argumeto complejo. Usando 0.1");
		return 0.1;
	}
	return real+imag*I;
}

void handle(int res_horizontal,int res_vertical, double complex center,
		double width, double height, double complex seed, FILE* outf){
	printf("Resolution: %dx%d\n", res_horizontal, res_vertical);
	printf("Centro de coordenadas del plano compejo: %f%+fi\n", creal(center), cimag(center));
	printf("Ancho: %f. Altura: %f.\n", width, height);
	printf("Seed: %f%+fi\n", creal(seed), cimag(seed));
}


int main(int argc, char** argv) {

	char* resolution = RESOLUTION_DEFAULT;
	double complex center = CENTER_DEFAUlT;
	double width = WIDTH_DEFAULT;
	double height = HEIGHT_DEFAULT;
	double complex seed = SEED_DEFAULT;
	char* output_filename = OUT_FILE;

	int i;
    for (i = 1; i < argc; i++){

    	if(strcmp(argv[i], "-r") == 0 && strcmp(argv[i], "--resolution") == 0){
    		resolution = argv[i+1];
		}
		if(strcmp(argv[i], "-c") == 0 && strcmp(argv[i], "--center") == 0){
			center = string_to_complex(argv[i+1]);
		}
		if(strcmp(argv[i], "-w") == 0 && strcmp(argv[i], "--width") == 0){
			width = atoi(argv[i+1]);
		}
		if(strcmp(argv[i], "-H") == 0 && strcmp(argv[i], "--height") == 0){
			height = atoi(argv[i+1]);
		}
		if(strcmp(argv[i], "-s") == 0 && strcmp(argv[i], "--seed") == 0){
			seed = string_to_complex(argv[i+1]);
		}
		if(strcmp(argv[i], "-o") == 0 && strcmp(argv[i], "--output") == 0){
			output_filename = argv[i+1];
		}
    }

    int scanresult, res_horizontal, res_vertical;
    scanresult = sscanf(resolution, "%dx%d", &res_horizontal, &res_vertical);
    if (scanresult < 2 ){
    	printf("Error obteniendo resolucion. Usando default\n");
    	sscanf(RESOLUTION_DEFAULT, "%dx%d", &res_horizontal, &res_vertical);
    }

    FILE* outf;
    if (strcmp(output_filename, "-") == 0){
    	outf = fopen(output_filename, "w");
    	if (outf == NULL){
    		fprintf(stderr, "No se pudo abrir archivo de salida %s\n", output_filename);
    		perror("Saliendo con error");
    		exit(ERROR_OUTPUT);
    	}
    } else outf = stdout;

    handle(res_horizontal, res_vertical, center, width, height, seed, outf);

    if (outf != NULL && outf != stdin)
    	fclose(outf);

	return SUCCESS;
}
