function [c1,c2] = centri_massa(A)
    classe_1=A(A(:,4)>0,1:3);
    classe_2=A(A(:,4)==0,1:3);
    c1=((sum(classe_1(:,1),1)./length(classe_1)).^2.+(sum(classe_1(:,2),2)./length(classe_1)).^2.+(sum(classe_1(:,3),2)./length(classe_1)).^2).^0.5;
    c2=((sum(classe_2(:,1),2)./length(classe_2)).^2.+(sum(classe_2(:,2),2)./length(classe_2)).^2.+(sum(classe_2(:,3),2)./length(classe_2)).^2).^0.5;


end

