function LVPlotUnitStepSeq(n,Nlow,Nhigh)
% n: ��Ծ���������￪ʼ? 0�����0��ʼ(����0)
% Nlow: ��ͻ�����
% Nhigh: ��߻�����
xIndices = [Nlow:1:Nhigh];
yVals(1:1:length(xIndices)) = 0;
posZInd = find((xIndices-n)==0)
yVals(posZInd:1:length(xIndices)) = 1;
stem(xIndices,yVals)