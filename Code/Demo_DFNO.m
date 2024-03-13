clc;
clear all;
format short

load Example.mat

Dataori=Example;

trandata=Dataori;
trandata(:,1:2)=normalize(trandata(:,1:2),'range');

k=3;
anomaly_scores=DFNO(trandata,k)
