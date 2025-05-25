Proceso Estacionamiento
	Definir tarifa_moto, tarifa_auto, tarifa_utilitario, tarifa_camion Como Entero;
	Definir total_global, rec_motos_g, rec_autos_g, rec_utilit_g, rec_camiones_g Como Real;
	Definir cant_motos_g, cant_autos_g, cant_utilit_g, cant_camiones_g, zonas, zona_actual Como Entero;
	Definir cant_motos, cant_autos, cant_utilit, cant_camiones Como Entero;
	Definir rec_motos, rec_autos, rec_utilit, rec_camiones, rec_zona Como Real;
	Definir opcion, horas Como Entero;
	Definir continuar Como Logico;
	tarifa_moto <- 100;
	tarifa_auto <- 200;
	tarifa_utilitario <- 250;
	tarifa_camion <- 700;
	total_global <- 0;
	cant_motos_g <- 0;
	cant_autos_g <- 0;
	cant_utilit_g <- 0;
	cant_camiones_g <- 0;
	Escribir 'Ingrese cantidad de zonas:';
	Leer zonas;
	Para zona_actual<-1 Hasta zonas Hacer
		cant_motos <- 0;
		cant_autos <- 0;
		cant_utilit <- 0;
		cant_camiones <- 0;
		rec_motos <- 0;
		rec_autos <- 0;
		rec_utilit <- 0;
		rec_camiones <- 0;
		continuar <- Verdadero;
		Escribir 'ZONA ', zona_actual;
		Mientras continuar=Verdadero Hacer
			Escribir '1.Moto 2.Auto 3.Utilitario 4.Camion 0.Terminar';
			Leer opcion;
			Si opcion=0 Entonces
				continuar <- Falso;
			SiNo
				Si opcion>=1 Y opcion<=4 Entonces
					Escribir 'Horas:';
					Leer horas;
					Si horas>0 Entonces
						Segun opcion Hacer
							1:
								cant_motos <- cant_motos+1;
								rec_motos <- rec_motos+(horas*tarifa_moto);
							2:
								cant_autos <- cant_autos+1;
								rec_autos <- rec_autos+(horas*tarifa_auto);
							3:
								cant_utilit <- cant_utilit+1;
								rec_utilit <- rec_utilit+(horas*tarifa_utilitario);
							4:
								cant_camiones <- cant_camiones+1;
								rec_camiones <- rec_camiones+(horas*tarifa_camion);
						FinSegun
					FinSi
				FinSi
			FinSi
		FinMientras
		rec_zona <- rec_motos+rec_autos+rec_utilit+rec_camiones;
		Escribir 'Recaudacion Zona ', zona_actual, ': $', rec_zona;
		total_global <- total_global+rec_zona;
		cant_motos_g <- cant_motos_g+cant_motos;
		cant_autos_g <- cant_autos_g+cant_autos;
		cant_utilit_g <- cant_utilit_g+cant_utilit;
		cant_camiones_g <- cant_camiones_g+cant_camiones;
		rec_motos_g <- rec_motos_g+rec_motos;
		rec_autos_g <- rec_autos_g+rec_autos;
		rec_utilit_g <- rec_utilit_g+rec_utilit;
		rec_camiones_g <- rec_camiones_g+rec_camiones;
	FinPara
	Escribir 'TOTAL RECAUDADO: $', total_global;
	Definir total_veh Como Entero;
	total_veh <- cant_motos_g+cant_autos_g+cant_utilit_g+cant_camiones_g;
	Si total_veh>0 Entonces
		Escribir 'Motos: ', (cant_motos_g/total_veh)*100, '%';
		Escribir 'Autos: ', (cant_autos_g/total_veh)*100, '%';
		Escribir 'Utililitarios: ', (cant_utilit_g/total_veh)*100, '%';
		Escribir 'Camiones: ', (cant_camiones_g/total_veh)*100, '%';
	FinSi
FinProceso
