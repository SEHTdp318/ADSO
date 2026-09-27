// =========================================================
// RETO 3: CAJERO AUTOMÁTICO
// Estructura Principal: Repetir-Hasta Que + Según
// Explicación: 
// 1. "Repetir-Hasta Que" asegura que el menú se muestre AL MENOS UNA VEZ 
//    y se siga repitiendo hasta que el usuario decida Salir (opción 4).
// 2. "Según" (Switch/Select) evalúa cuál de las múltiples opciones del menú eligió.
// =========================================================
Proceso CajeroAutomatico
    // 1. DECLARACIÓN DE VARIABLES
    Definir saldo, monto Como Real
    Definir opcion Como Entero
    
    // 2. VALOR INICIAL DEL SALDO
    saldo <- 1000.00 
    
    // 3. ESTRUCTURA REPETITIVA: Repetir
    Repetir
        // Mostrar menú interactivo
        Escribir "============================================="
        Escribir "           CAJERO AUTOMÁTICO VIRTUAL         "
        Escribir "============================================="
        Escribir "1. Consultar saldo disponible"
        Escribir "2. Ingresar (Depositar) dinero"
        Escribir "3. Retirar dinero"
        Escribir "4. Salir del sistema"
        Escribir "---------------------------------------------"
        Escribir "Seleccione una opción (1-4):"
        Leer opcion
        Escribir ""
        
        // 4. ESTRUCTURA SELECTIVA MÚLTIPLE: Según
        Segun opcion Hacer
            1:
                Escribir ">> [CONSULTA] Su saldo actual es: $", saldo
            2:
                Escribir ">> [DEPÓSITO] Ingrese la cantidad a depositar:"
                Leer monto
                // Validación: No se permiten montos negativos o cero
                Si monto > 0 Entonces
                    saldo <- saldo + monto
                    Escribir ">> Depósito exitoso. Nuevo saldo: $", saldo
                SiNo
                    Escribir ">> [ERROR] El monto a depositar debe ser mayor que 0."
                FinSi
            3:
                Escribir ">> [RETIRO] Ingrese la cantidad a retirar:"
                Leer monto
                // Validación: Debe haber saldo suficiente y el monto debe ser positivo
                Si monto > 0 Y monto <= saldo Entonces
                    saldo <- saldo - monto
                    Escribir ">> Retiro exitoso. Nuevo saldo: $", saldo
                SiNo
                    Si monto > saldo Entonces
                        Escribir ">> [ERROR] Fondos insuficientes. Su saldo es: $", saldo
                    SiNo
                        Escribir ">> [ERROR] Monto ingresado no válido."
                    FinSi
                FinSi
            4:
                Escribir ">> Gracias por utilizar nuestro cajero automático. ¡Hasta luego!"
            De Otro Modo:
                Escribir ">> [ERROR] Opción no válida. Ingrese un número entre 1 y 4."
        FinSegun
        
        Escribir "" // Línea en blanco para separar iteraciones
    Hasta Que opcion = 4 // Se repite HASTA QUE el usuario elija 4 (Salir)
    
FinProceso
