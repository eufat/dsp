function [x,n] = impseq(n0,n1,n2)



n=n1:n2;
x = [(n-n0) == 0];

% x=zeros(length(n));
% 
% for i=1:length(n)
%     if i==0
%         x(i)=1;
%     end
% end
% 
