function result = myFunction(input)
% Some code here that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  result = someCalculation(input);
end

function output = someCalculation(x)
  % This is a nested function
  output = x ^ 2;  % Potential issue: Unhandled cases, overflow
end