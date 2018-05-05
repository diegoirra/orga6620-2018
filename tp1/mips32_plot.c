#include <debug.h>
#include <stdio.h>
#include <defs.h>
#include <param.h>

int print_header(int fd, int x, int y, int shades);

int get_shades(param_t *parms);

void
mips32_plot(param_t *parms)
{
	float cr, ci;
	float zr, zi;
	float tr, ti;
	float absz;
	int x, y;
	int c;

	/* Header PGM. */
	print_header(fileno(parms->fp), (int)parms->x_res, (int)parms->y_res, (int)parms->shades);

	/* 
	 * Barremos la regi�n rectangular del plano complejo comprendida 
	 * entre (parms->UL_re, parms->UL_im) y (parms->LR_re, parms->LR_im).
	 * El par�metro de iteraci�n es el punto (cr, ci).
	 */
	#if 0
	for (y = 0, ci = parms->UL_im; 
	     y < parms->y_res; 
	     ++y, ci -= parms->d_im) {
		for (x = 0, cr = parms->UL_re; 
		     x < parms->x_res; 
		     ++x, cr += parms->d_re) {
			zr = cr;
			zi = ci;

			/*
			 * Determinamos el nivel de brillo asociado al punto
			 * (cr, ci), usando la f�rmula compleja recurrente 
			 * f = f^2 + s.
			 */
			for (c = 0; c < parms->shades; ++c) {
				if ((absz = zr*zr + zi*zi) >= 4.0f)
					break;

				tr = parms->s_re + zr * zr - zi * zi;
				ti = parms->s_im + zr * zi * 2.0f;

				zr = tr;
				zi = ti;
			}

			if (fprintf(parms->fp, "%u\n", (unsigned)c) < 0) {
				fprintf(stderr, "i/o error.\n");
				exit(1);
			}
		}
	}
	
	/* Flush any buffered information before quit. */
	if (fflush(parms->fp) != 0) {
		fprintf(stderr, "cannot flush output file.\n");
		exit(1);
	}
	#endif
	get_shades(parms);
	
}
