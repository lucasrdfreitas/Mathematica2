#!/bin/bash
#
#$ -l hostname=micro4.local 
#$ -N DM1.h2.t4.L28
#$ -l h_rt=140:00:00                   #estimate max run time
#$ -q all.q
#$ -m ea
#$ -M lucasrdf@fisica.ufrn.br
#$ -cwd
#$ -o /home/rodrigues/Mathematica2/.o
#$ -e /home/rodrigues/Mathematica2/.e
#
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/sge/lib/lx-amd64
export CLASSPATH=/opt/sge/lib/drmaa.jar:/opt/sge/lib/juti.jar:/opt/sge/lib/jgdi.jar
#
math -script 806-CLUSTER.m
