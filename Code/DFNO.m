%% Detecting fuzzy-neighoborhood outliers (DFNO) algorithm
%% Please refer to the following papers:
%% DFNO: Detecting Fuzzy Neighborhood Outliers
%% Uploaded by Yuan Zhong on March 12, 2024. E-mail:yuanzhong@scu.edu.cn or yuanzhong2799@foxmail.com.
function FNOS=DFNO(data,k)
%%%input:
% data is data matrix without decisions, where rows for samples and columns for attributes.
% Numerical attributes should be normalized into [0,1].
% Nominal attribute data is replaced by different positive integers.
% k is a given parameter for k-fuzzy nearest neighbor.
%%%output
% Fuzzy-neighoborhood outlier score (FNOS)

[n,~]=size(data);

sim=FSR(data);% Compute fuzzy similarity relation

[similarity,num]=sort(sim,2,'descend');
ksimilarity=similarity(:,k+1);
fkNN_temp=sim;
fkNN_temp(fkNN_temp<ksimilarity)=0;
fkNN=fkNN_temp;

fkNN_card=sum(fkNN,2);
count=sum(fkNN~=0,2);

reachsim = zeros(n,n);
for i = 1:n
    for j=1:n
        reachsim(i,j) = min(sim(i,j),ksimilarity(j));
    end
end
lrd = zeros(n,1);
for i = 1:n
    sum_reachdist=0;
    for j=1:count(i)
        sum_reachdist=sum_reachdist+reachsim(i,num(i,j+1));
    end
    lrd(i)=sum_reachdist/fkNN_card(i);
end
FLDD=zeros(n,1);
for i=1:n
    sumlrd=0;
    for j=1:count(i)
        sumlrd=sumlrd+lrd(num(i,j+1))/lrd(i);
    end
    FLDD(i)=sumlrd/fkNN_card(i);
end
FNOS=FLDD;
end