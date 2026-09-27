// =========================================================
// RETO 4: CONTADOR DE PARES E IMPARES
// Estructura Principal: Para + Si-Entonces (Operador Módulo %)
// Explicación: 
// 1. Usamos "Para" porque sabemos exactamente cuántos datos leer (10 números).
// 2. Usamos "Si-Entonces" con el operador Módulo (% o MOD) para saber si 
//    el resto de dividir el número entre 2 es 0 (Par) o diferente de 0 (Impar).
// =========================================================
Proceso ContadorParesImpares
    // 1. DECLARACIÓN DE VARIABLES
    Definir numeroIngresado, i Como Entero
    Definir cantidadPares, cantidadImpares Como Entero
    
    // 2. INICIALIZACIÓN DE CONTADORES EN CERO
    cantidadPares <- 0
    cantidadImpares <- 0
    
    Escribir "============================================="
    Escribir "     CONTADOR DE NÚMEROS PARES E IMPARES     "
    Escribir "============================================="
    Escribir "Por favor, ingrese 10 números enteros:"
    Escribir ""
    
    // 3. ESTRUCTURA REPETITIVA: Para (Recorre 10 iteraciones)
    Para i <- 1 Hasta 10 Con Paso 1 Hacer
        Escribir "Ingrese el número [", i, " de 10]:"
        Leer numeroIngresado
        
        // 4. EVALUACIÓN PAR/IMPAR (Operador Módulo: numeroIngresado % 2)
        Si numeroIngresado % 2 = 0 Entonces
            Escribir "   -> El número ", numeroIngresado, " es PAR."
            cantidadPares <- cantidadPares + 1 // Incrementar contador de pares
        SiNo
            Escribir "   -> El número ", numeroIngresado, " es IMPAR."
            cantidadImpares <- cantidadImpares + 1 // Incrementar contador de impares
        FinSi
    FinPara
    
    // 5. MOSTRAR RESULTADOS Y RESUMEN FINAL
    Escribir ""
    Escribir "============================================="
    Escribir "                 RESUMEN FINAL               "
    Escribir "============================================="
    Escribir "Total de números PARES ingresados:   ", cantidadPares
    Escribir "Total de números IMPARES ingresados: ", cantidadImpares
    Escribir "============================================="
FinProceso
