Proceso AgenciaJuego
    Definir tb_precio,qs_precio,tb2_precio,opcion,cantidad Como Entero;
	Definir total_agencia,rec_tb_g,rec_qs_g,rec_tb2_g Como Real;
    Definir cant_tb_g,cant_qs_g,cant_tb2_g,vendedores,v_actual,mejor_vendedor Como Entero;
    Definir max_recaudacion,recaudacion_vendedor,cant_tb,cant_qs,cant_tb2 Como Real;
	Definir rec_tb,rec_qs,rec_tb2,rec_total Como Real;
	Definir continuar Como Logico;
    tb_precio=400;
	qs_precio=800;
	tb2_precio=750;
    total_agencia=0;
	cant_tb_g=0;
	cant_qs_g=0;
	cant_tb2_g=0;
    max_recaudacion=0;
	mejor_vendedor=0;
    
    Escribir "Ingrese cantidad de vendedores (2 o 4):";
    Leer vendedores;
    
    Para v_actual=1 Hasta vendedores Hacer
        cant_tb=0;cant_qs=0;cant_tb2=0;
        rec_tb=0;rec_qs=0;rec_tb2=0;
        continuar=Verdadero;
        Escribir "VENDEDOR ",v_actual;
        Mientras continuar Hacer
            Escribir "1.TeleBingo 2.Quini6 3.TotoBingo 0.Terminar";
            Leer opcion;
            
            Si opcion=0 Entonces
                continuar=Falso;
            Sino 
				Si opcion>=1 Y opcion<=3 Entonces
					Escribir "Cantidad:";
					Leer cantidad;
					
					Si cantidad>0 Entonces
						Segun opcion Hacer
							1:
								cant_tb=cant_tb+cantidad;
								rec_tb=rec_tb+(cantidad*tb_precio);
								Escribir cantidad," TeleBingo - Total:$",(cantidad*tb_precio);
							2:
								cant_qs=cant_qs+cantidad;
								rec_qs=rec_qs+(cantidad*qs_precio);
								Escribir cantidad," Quini6 - Total:$",(cantidad*qs_precio);
							3:
								cant_tb2=cant_tb2+cantidad;
								rec_tb2=rec_tb2+(cantidad*tb2_precio);
								Escribir cantidad," TotoBingo - Total:$",(cantidad*tb2_precio);
						FinSegun
					FinSi
				FinSi
			FinSi
		FinMientras
		rec_total=rec_tb+rec_qs+rec_tb2;
		Escribir "TOTAL VENDEDOR ",v_actual,": $",rec_total;
		Escribir "TeleBingo: ",cant_tb," - $",rec_tb;
		Escribir "Quini6: ",cant_qs," - $",rec_qs;
		Escribir "TotoBingo: ",cant_tb2," - $",rec_tb2;
		
		total_agencia=total_agencia+rec_total;
		cant_tb_g=cant_tb_g+cant_tb;
		cant_qs_g=cant_qs_g+cant_qs;
		cant_tb2_g=cant_tb2_g+cant_tb2;
		rec_tb_g=rec_tb_g+rec_tb;
		rec_qs_g=rec_qs_g+rec_qs;
		rec_tb2_g=rec_tb2_g+rec_tb2;
		
		Si rec_total>max_recaudacion Entonces
			max_recaudacion=rec_total;
			mejor_vendedor=v_actual;
		FinSi
	FinPara
	
	Escribir "RECAUDACION AGENCIA: $",total_agencia;
	Escribir "TeleBingo: $",rec_tb_g," (",(rec_tb_g/total_agencia)*100,"%)";
	Escribir "Quini6: $",rec_qs_g," (",(rec_qs_g/total_agencia)*100,"%)";
	Escribir "TotoBingo: $",rec_tb2_g," (",(rec_tb2_g/total_agencia)*100,"%)";
	Escribir "MEJOR VENDEDOR: ",mejor_vendedor," con $",max_recaudacion;
FinProceso