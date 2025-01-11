# Unhandled Cases in Nested MATLAB Function

This repository demonstrates a common yet subtle error in MATLAB:  a lack of comprehensive error handling within a nested function. The main function includes input validation, but the nested function `someCalculation` is susceptible to issues with certain inputs (e.g., very large numbers causing overflow).

## Bug Description
The `myFunction` validates input to ensure it's non-negative. However, the nested function `someCalculation` doesn't have any error handling and might produce unexpected results or even crash for inputs that cause issues like overflow.  The goal is to improve the robustness of `someCalculation`. 

## Solution
The provided solution enhances the nested function to include more robust error handling, checking for potential problems such as overflow or invalid inputs before performing the calculation.  This ensures the function behaves predictably under a wider range of conditions.