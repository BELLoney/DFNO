clc;
clear all;
format short

load Example.mat

Dataori=Example;

trandata=Dataori;
trandata=normalize(trandata,'range');

k=3;
anomaly_score=DFNO(trandata,k)

