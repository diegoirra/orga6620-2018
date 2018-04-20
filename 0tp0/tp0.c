#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>
#include <math.h>

#define SUCCESS 0
#define ERROR_OUTPUT -1
#define N 255
#define RESOLUTION_DEFAULT "640x480"
#define CENTER_DEFAUlT {0,0}
#define WIDTH_DEFAULT 2
#define HEIGHT_DEFAULT 2
#define SEED_DEFAULT {-0.726895347709114071439, 0.188887129043845954792}
#define OUT_FILE "-" //lo manda por consola

typedef struct complex{
	long double real;
	long double imag;
}complex;

complex string_to_complex(char* zstring){
    complex z;
    char i;
    int scanresult = sscanf(zstring, "%Lf%Lf%c", &z.real, &z.imag, &i);
    if (scanresult < 3){
        fprintf(stderr, "Error en argumeto complejo. Usando 0.1");
        complex x = {0.1, 0} ;
        return x;
    }
    return z;
}

int main(int argc, char** argv) {

    char* resolution = RESOLUTION_DEFAULT;
    complex center = CENTER_DEFAUlT;
    double width = WIDTH_DEFAULT;
    double height = HEIGHT_DEFAULT;
    complex seed = SEED_DEFAULT;
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
        fprintf(stderr, "Error obteniendo resolucion. Usando default\n");
        sscanf(RESOLUTION_DEFAULT, "%dx%d", &res_horizontal, &res_vertical);
    }
    
    
    long double pasoH = ((width) / (double)(res_horizontal))/2;
    long double pasoV = ((height) / (double)(res_vertical))/2;
    int contadorBrillo;
    long double temp, valorAbsoluto;
    complex pixel;

    FILE* outf;
    if (strcmp(output_filename, "-") != 0){
        outf = fopen(output_filename, "w");
        if (outf == NULL){
    	   fprintf(stderr, "No se pudo abrir archivo de salida %s\n", output_filename);
            perror("Saliendo con error");
            exit(ERROR_OUTPUT);
        }
    } else outf = stdout;

    long double real,imag;
    
    int valido = fprintf(outf, "P2 \n%d %d \n255 \n", res_horizontal, res_vertical); 
    if (valido < 0) {fprintf(stderr, "Error en el output. No se pudieron imprimir las resoluciones.");}
    
    for (int y = 0; y <= res_vertical; y++){
        for (int x = 1; x <= res_horizontal; x++){
            real = pasoH * (2 * x -1) - width / 2 + center.real;
            imag = -pasoV * (2 * y -1) + height / 2 + center.imag;
            pixel.real = real;
            pixel.imag = imag;
            for (contadorBrillo = 0; contadorBrillo <= N; contadorBrillo++){
                valorAbsoluto = sqrtf( (pixel.real * pixel.real) + (pixel.imag * pixel.imag));
                if (valorAbsoluto > 2) break;
                temp = (pixel.real*pixel.real) -(pixel.imag*pixel.imag) + seed.real;
                imag = (pixel.imag*pixel.real) +(pixel.real*pixel.imag) + seed.imag;
                pixel.real = temp;
                pixel.imag = imag;
            }
            valido = fprintf(outf, "%d ", contadorBrillo);
            if (valido < 0) {fprintf(stderr, "Error en el output, no se pudo imprimir el brillo.");}
        }
        valido = fprintf(outf, "\n");
        if (valido < 0) {fprintf(stderr, "Error en el output, no se pudo imprimir el salto de linea.");}
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
