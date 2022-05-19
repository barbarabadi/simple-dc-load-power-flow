clear all
basemva = 100; 
% The impedances are expressed on a 1000 MVA base.
% In problems 9.7-9.9 the base is mistakenly stated as 100 MVA.

% Bus Data for non slack buses
%       Bus  -Load- -Gen-
%       No.    MW     MW  
busdata=[2   340.0  200.0  
         3   190.0    0.0
         4    30.0    0.0];

%        The bus '1' is slack
%        Bus   Bus     R        X       1/2B
%        No.   No.    p.u.     p.u.     p.u.
linedata=[1     2     0.00     0.1     0.0000    
          1     3     0.00     0.2     0.0000    
          2     3     0.00     0.3     0.0000
          3     4     0.00     0.1     0.0000];
lfybus;    % Forms the bus admittance matrix
Ybus
lfdc       % does DC load flow