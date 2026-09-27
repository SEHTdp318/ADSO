// =========================================================
// RETO 2: TABLA DE MULTIPLICAR
// Estructura Principal: Para (Bucle determinado o contado)
// Explicación: Se usa la estructura "Para" porque conocemos exactamente 
// el número de repeticiones desde el inicio (del 1 al 12).
// =========================================================
Proceso TablaDeMultiplicar
    // 1. DECLARACIÓN DE VARIABLES
    Definir numeroTabla, contador Como Entero
    
    Escribir "============================================="
    Escribir "         GENERADOR DE TABLAS DE MULTIPLICAR  "
    Escribir "============================================="
    Escribir "Ingrese el número de la tabla que desea generar:"
    Leer numeroTabla
    
    Escribir ""
    Escribir "--- Tabla del ", numeroTabla, " (del 1 al 12) ---"
    
    // 2. ESTRUCTURA REPETITIVA: Para
    // Desde contador = 1 Hasta 12 Incrementando de 1 en 1
    Para contador <- 1 Hasta 12 Con Paso 1 Hacer
        Escribir numeroTabla, " x ", contador, " = ", (numeroTabla * contador)
    FinPara
    
    Escribir "============================================="
    Escribir "Fin de la tabla de multiplicar."
FinProceso
