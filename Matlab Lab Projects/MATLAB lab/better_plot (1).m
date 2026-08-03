 function f=better_plot(x,y,Linespec,xlab,ylab)
    f=figure
    plot(x,y,Linespec,'LineWidth',3)
     xlabel(xlab)
     ylabel(ylab)
     set(gca,"FontSize",20)
     grid on
end
% this is the code written for plotting more efficiently on this assignment
% the code is written according to the instructions given