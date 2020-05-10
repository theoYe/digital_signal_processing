function LVPlotUnitStepSeq(n,Nlow,Nhigh)
% n: 阶跃函数从哪里开始? 0代表从0开始(包括0)
% Nlow: 最低画到哪
% Nhigh: 最高画到哪
xIndices = [Nlow:1:Nhigh];
yVals(1:1:length(xIndices)) = 0;
posZInd = find((xIndices-n)==0)
yVals(posZInd:1:length(xIndices)) = 1;
stem(xIndices,yVals)