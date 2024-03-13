function fsr = FSR(data)
% Fuzzy Similarity Relation

[n,m]=size(data);

ID=all(data<=1);
num_fea=find(ID==1);
nom_fea=find(ID==0);

num_dis=zeros(n,n);
if ~isempty(num_fea)
    num_dis=pdist2(data(:,num_fea),data(:,num_fea));
end
nom_dis=zeros(n,n);
if ~isempty(nom_fea)
    nom_dis=pdist2(data(:,nom_fea),data(:,nom_fea),'hamming');
end

dis=num_dis+nom_dis*length(nom_fea);
fsr=1-dis/m;
end
