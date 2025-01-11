function result = myFunction(input)
% Some code here that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  result = someCalculation(input);
end

function output = someCalculation(x)
  % Improved error handling in nested function
  if x > 1e10 %Example check for potential overflow, adjust as needed
    error('Input value too large for this calculation');
  elseif ~isnumeric(x) || isnan(x) || isinf(x)
    error('Invalid input: Input must be a valid numeric value');
  end
  output = x ^ 2; 
end