function z = cm21depth(maxz);
%CM21DEPTH Returns the edges of depth layers used in the CM2.1 model
%
% z = cm21depth;
% z = cm21depth(maxz);
%
% This function returns the edges of the depth layers (zt_edges_ocean) used
% in the CM2.1 model.
%
% Input variables:
%
%   maxz:   maximum depth required.  Only values shallower than this depth
%           will be returned. (m) 
%
% Output variables:
%
%   z:      edges of depth levels, with 0 at the surface and positive
%           downwards (m).

% Copyright 2009 Kelly Kearney

if nargin < 1
    maxz = 5500;
end

zt_edges_ocean = [...
    0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, ...
   140, 150, 160, 170, 180, 190, 200, 210, 220, 230.5614, 243.3614, ...
   260.6104, 284.4629, 316.9903, 360.155, 415.7855, 485.5536, 570.9535, ...
   673.2824, 793.625, 932.8393, 1091.546, 1270.121, 1468.689, 1687.125, ...
   1925.054, 2181.854, 2456.668, 2748.411, 3055.785, 3377.298, 3711.276, ...
   4055.891, 4409.182, 4769.076, 5133.418, 5500];

z = zt_edges_ocean(zt_edges_ocean <= maxz);