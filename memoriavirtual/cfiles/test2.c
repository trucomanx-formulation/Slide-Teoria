/*
 * Archivo_c.c
 * 
 * Copyright 2011 Fernando Pujaico Rivera <fernando.pujaico.rivera@gmail.com>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 */
//gcc test2.c -o test2
//./test2
//ps -ef |grep test2
//pmap numeroooo -XX > data.dat

#include <stdio.h>
extern etext;
extern edata;
extern end;


int A; 		    //uninitiaized data
char B='X'; 	//initiaized data
char* string1   = "read only";      // initiaized data read only 
char  string2[] = "write and read"; // initiaized data write-read

int
main(int ac, char **av, char **env)
{

		int C; 		//stack
		int D=25; 	//stack
		char *T=(char*)0x8048620;

        printf("                                  main: %10p\n", main);
        printf("End of text segment:             etext: %10p\n", &etext);
        printf("\n");
        printf("Begin address of an ro initiaized data: %10p\n", string1);
        printf("Begin address of an rw initiaized data: %10p\n", string2);
        printf("   Begin address of an initiaized data: %10p\n", &B);
        printf(" End of initiaized data:         edata: %10p\n", &edata);
        printf("\n");
        printf(" Begin address of an uninitiaized data: %10p\n", &A);
        printf(" End of uninitiaized data:         end: %10p\n", &end);
        printf("\n");
        printf(" Begin address of an uninitiaized data: %10p\n", &C);
        printf("   Begin address of an initiaized data: %10p\n", &D);
		while(1);
        return 0;
}
