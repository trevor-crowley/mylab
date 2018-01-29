%% Instrument Connection

% Find a tcpip object.
obj1 = instrfind('Type', 'tcpip', 'RemoteHost', getenv('IP_RIGOL_SCOPE'), 'RemotePort', 5555, 'Tag', '');

% Create the tcpip object if it does not exist
% otherwise use the object that was found.
if isempty(obj1)
    obj1 = tcpip(getenv('IP_RIGOL_SCOPE'), 5555);
else
    fclose(obj1);
    obj1 = obj1(1);
end

set(obj1, 'InputBufferSize', 14000011);
% set(obj1, 'InputBufferSize', 5600011);
set(obj1, 'Timeout', 10);

% Connect to instrument object, obj1.
fopen(obj1);


%% Instrument Configuration and Control


% Communicating with instrument object, obj1.
fprintf(obj1, '*idn?');
fscanf(obj1, '%s\n')



%% Get Mode
fprintf(obj1, ':WAV:SOUR?');
fscanf(obj1, '%s\n')

fprintf(obj1, ':WAV:MODE?');
fscanf(obj1, '%s\n')

fprintf(obj1, ':WAV:POINTS?');
fscanf(obj1, '%s\n')

fprintf(obj1, ':WAV:FORM?');
fscanf(obj1, '%s\n')

fprintf(obj1, ':ACQ:MDEP?');
fscanf(obj1, '%s\n')

%% Set Mode

num_points  = 1400000;

fprintf(obj1, ':STOP');
fprintf(obj1, ':WAV:SOUR CHAN1');
fprintf(obj1, ':WAV:MODE RAW');
fprintf(obj1, ':WAV:POIN %d', num_points);

fprintf(obj1, ':WAV:RES');
fprintf(obj1, ':WAV:BEG');
%% Status

fprintf(obj1, ':WAV:STAT?');
fscanf(obj1, '%s\n')


%% Get data1
tic;
fprintf(obj1, ':WAV:DATA?');
[data1, len] = fread(obj1,num_points+11,'uint8');
fprintf(obj1, ':WAV:END');
toc;


%% plot

wave = data1(12:end)';
subplot(211);
plot(wave);
fftSpec = fft(wave',num_points);
fftRms = abs( fftSpec');
fftLg = 20*log(fftRms);
subplot(212);
plot(fftLg);


%% Disconnect and Clean Up


% Disconnect from instrument object, obj1.
fclose(obj1);


