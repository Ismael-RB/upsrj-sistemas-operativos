#!/bin/bash

# ============================================================
# Práctica: Análisis del Scheduler de Linux
# Archivo: scheduler_discovery.sh
#
# Objetivo:
# Identificar el scheduler real de Linux y ubicar su código fuente.
#
# Nota:
# Linux usa CFS, no algoritmos clásicos académicos.
# ============================================================


# ------------------------------------------------------------
# Paso 1: Contexto general
# ------------------------------------------------------------
echo "============================================================"
echo "Exploración del Scheduler Real de Linux (CFS)"
echo "Sistema: Ubuntu 22.04"
echo "============================================================"
echo
echo "Se localizará el código fuente del scheduler del kernel."
echo "El scheduler por defecto en Linux es CFS."
echo


# ------------------------------------------------------------
# Paso 2: Buscar el código fuente del kernel
# ------------------------------------------------------------
# El código del kernel se encuentra normalmente en /usr/src

echo "Ubicación actual:"
pwd
echo

echo "Contenido del directorio /usr/src:"
ls /usr/src
echo


# ------------------------------------------------------------
# Paso 3: Acceso a los headers del kernel
# ------------------------------------------------------------
# Los headers contienen el código necesario para explorar el scheduler

echo "Accediendo a linux-headers..."
cd /usr/src
cd linux-headers-*
echo

echo "Ruta actual:"
pwd
echo


# ------------------------------------------------------------
# Paso 4: Directorio del scheduler
# ------------------------------------------------------------
# El código de planificación está dentro de kernel/sched

echo "Contenido del directorio actual:"
ls
echo

echo "Entrando a kernel/sched:"
cd kernel/sched
echo

echo "Ruta actual:"
pwd
echo


# ------------------------------------------------------------
# Paso 5: Archivo principal del CFS
# ------------------------------------------------------------
# fair.c contiene la implementación del Completely Fair Scheduler

echo "Archivos del scheduler:"
ls
echo

echo "fair.c corresponde al Completely Fair Scheduler (CFS)."
echo


# ------------------------------------------------------------
# Paso 6: Visualización del código fuente
# ------------------------------------------------------------
# Se muestra el código real del scheduler usado por Linux

echo "============================================================"
echo "Código fuente del Completely Fair Scheduler"
echo "============================================================"
echo

cat fair.c


# ------------------------------------------------------------
# Reflexión final
# ------------------------------------------------------------
# Linux no usa FCFS, SJF ni RR porque son algoritmos simples
# diseñados para estudio teórico.
#
# Un sistema operativo real debe manejar múltiples procesos,
# usuarios y prioridades simultáneamente.
#
# CFS busca repartir el CPU de forma equitativa,
# mejorando la respuesta del sistema y evitando inanición.
# ============================================================
