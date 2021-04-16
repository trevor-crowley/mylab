function sdrrdemohelp
% SDRFDEMOHELP  Load HTML write-up for current loaded demo model

% Copyright 2013-2014 The MathWorks, Inc.

% Find the full path of the model name
mdl = get_param(gcb, 'Parent');
sdrrdoc(mdl)

% [EOF]
