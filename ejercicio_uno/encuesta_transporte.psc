Proceso EncuestaTransporte
    Definir encuestadores, i, j, opcion, encuestados, total_encuestados Como Entero;
    Definir persbici, persmoto, persauto, perspub Como Entero;
    Definir totalbici, distbici, totalmoto, distmoto, totalauto, distauto, totalpub, distpub Como Real;
    Definir bandera Como Logico;
    Definir totalg_bici, totalg_moto, totalg_auto, totalg_pub Como Entero;
    Definir distg_bici, distg_moto, distg_auto, distg_pub Como Real;
    
    totalg_bici = 0; totalg_moto = 0; totalg_auto = 0; totalg_pub = 0;
    distg_bici = 0; distg_moto = 0; distg_auto = 0; distg_pub = 0;
    total_encuestados = 0;
    
    Escribir "Cantidad de encuestadores (1-4):";
    leer encuestadores;
    si encuestadores >= 1 y encuestadores <= 4 Entonces
        para i = 1 Hasta encuestadores Hacer
            persbici = 0; persmoto = 0; persauto = 0; perspub = 0;
            totalbici = 0; totalmoto = 0; totalauto = 0; totalpub = 0;
            encuestados = 0;
            bandera = Verdadero;
            
            Escribir "==== Encuestador ", i, " ====";
            Mientras bandera Hacer
                Escribir "Seleccione medio de transporte:";
                Escribir "1-Bicicleta | 2-Motocicleta | 3-Automovil | 4-Transporte publico";
                Escribir "-1 PARA TERMINAR ENCUESTA";
                leer opcion;
                Si opcion = -1 Entonces
                    bandera = Falso;
                Sino
                    Si opcion >= 1 y opcion <= 4 Entonces
                        Escribir "Distancia aproximada recorrida (km):";
                        Segun opcion Hacer
                            1:
                                persbici = persbici + 1;
                                leer distbici;
                                totalbici = totalbici + distbici;
                            2:
                                persmoto = persmoto + 1;
                                leer distmoto;
                                totalmoto = totalmoto + distmoto;
                            3:
                                persauto = persauto + 1;
                                leer distauto;
                                totalauto = totalauto + distauto;
                            4:
                                perspub = perspub + 1;
                                leer distpub;
                                totalpub = totalpub + distpub;
                        FinSegun
                        encuestados = encuestados + 1;
                    Sino
                        Escribir "Opcion invalida. Use 1-4 o -1 para terminar";
                    FinSi
                FinSi
            FinMientras
            Escribir "=== INFORME ENCUESTADOR ", i, " ===";
            Escribir "Total encuestados: ", encuestados;
            
            Si persbici > 0 Entonces
                Escribir "Bicicleta: ", persbici, " personas - Distancia promedio: ", (totalbici/persbici), " km";
            Sino
                Escribir "Bicicleta: 0 personas";
            FinSi
            Si persmoto > 0 Entonces
                Escribir "Motocicleta: ", persmoto, " personas - Distancia promedio: ", (totalmoto/persmoto), " km";
            Sino
                Escribir "Motocicleta: 0 personas";
            FinSi
            Si persauto > 0 Entonces
                Escribir "Automovil: ", persauto, " personas - Distancia promedio: ", (totalauto/persauto), " km";
            Sino
                Escribir "Automovil: 0 personas";
            FinSi
            Si perspub > 0 Entonces
                Escribir "Transporte publico: ", perspub, " personas - Distancia promedio: ", (totalpub/perspub), " km";
            Sino
                Escribir "Transporte publico: 0 personas";
            FinSi
            
            totalg_bici = totalg_bici + persbici;
            totalg_moto = totalg_moto + persmoto;
            totalg_auto = totalg_auto + persauto;
            totalg_pub = totalg_pub + perspub;
            distg_bici = distg_bici + totalbici;
            distg_moto = distg_moto + totalmoto;
            distg_auto = distg_auto + totalauto;
            distg_pub = distg_pub + totalpub;
            total_encuestados = total_encuestados + encuestados;
        FinPara

        Escribir "=== INFORME FINAL DE TODOS LOS ENCUESTADORES ===";
        Escribir "Total general de encuestados: ", total_encuestados;
        
        Si total_encuestados > 0 Entonces
            Escribir "Porcentajes por tipo de transporte:";
            Escribir "Bicicleta: ", (totalg_bici/total_encuestados)*100, "%";
            Escribir "Motocicleta: ", (totalg_moto/total_encuestados)*100, "%";
            Escribir "Automovil: ", (totalg_auto/total_encuestados)*100, "%";
            Escribir "Transporte publico: ", (totalg_pub/total_encuestados)*100, "%";
            Escribir "Distancias promedio globales:";
            
            Si totalg_bici > 0 Entonces
                Escribir "Bicicleta: ", (distg_bici/totalg_bici), " km promedio";
            FinSi
            Si totalg_moto > 0 Entonces
                Escribir "Motocicleta: ", (distg_moto/totalg_moto), " km promedio";
            FinSi
            Si totalg_auto > 0 Entonces
                Escribir "Automovil: ", (distg_auto/totalg_auto), " km promedio";
            FinSi
            
            Si totalg_pub > 0 Entonces
                Escribir "Transporte publico: ", (distg_pub/totalg_pub), " km promedio";
            FinSi
        Sino
            Escribir "No se registraron encuestados";
        FinSi
    Sino
        Escribir "Cantidad de encuestadores no valida. Debe ser entre 1 y 4";
    FinSi
FinProceso