clc; clear; clf;

input = [23 24 25; 33 34 35; 63 64 65; 73 74 75];

mask = [0 .2 0; .3 .4 0; 0 0 .1];

margines = zeros(size(input,1)+2, size(input,2)+2);
margines(2:end-1, 2:end-1) = input;

margines(1, 2:end-1) = input(1,1:end);
margines(end, 2:end-1) = input(end,1:end);

margines(:,1) = margines(:,2);
margines(:,end) = margines(:,end-1);

for i = 1:size(input,1)
  for j = 1:size(input,2)
    output(i,j) = sum((margines(i:i+2,j:j+2) .*mask)(:));
  endfor
endfor
output

