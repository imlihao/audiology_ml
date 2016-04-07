function [ J,G ] = costf( X,y,theta,lambda)
  [m,n]=size(X);
  t=sigmod(X*theta);
  theta(1)=0;
  J=sum(-y.*log(t)+(y-1).*log(1-t))/m+sum(theta(:).^2)/(2*m);
  G=((t-y)'*X)'/m+lambda*theta/(2*m);
  




end

