%% Spectrum Analysis with RTL-SDR Radio
%
% This example shows how to use the RTL-SDR radio as a data source for
% downstream spectrum analysis.  You can change the radio's center
% frequency to tune the radio to a band where a signal is present.  You can
% then use the spectrum analyzer to view and make measurements on the
% received spectrum.

% Copyright 2013-2018 The MathWorks, Inc.

%% Setup
% Define the center frequency of the surveyed band, along with several
% other parameters.  Change this center frequency to survey a different
% band.
%
% Set initial parameters
fc                 = 102.5e6; % Center frequency (Hz)
FrontEndSampleRate = 1e6;     % Samples per second
FrameLength        = 256*20;  % Frame length

% Create receiver and spectrum analyzer System objects  
hSDRrRx = comm.SDRRTLReceiver(...
    'CenterFrequency', fc, ...
    'EnableTunerAGC',  true, ...
    'SampleRate',      FrontEndSampleRate, ...
    'SamplesPerFrame', FrameLength, ...
    'OutputDataType',  'double');

hSpectrum = dsp.SpectrumAnalyzer(...
    'Name',             'Passband Spectrum',...
    'Title',            'Passband Spectrum', ...
    'Method',           'Welch', ...
    'SpectrumType',     'Power density', ...
    'FrequencySpan',    'Full', ...
    'SampleRate',       FrontEndSampleRate, ...
    'SpectralAverages', 50, ...
    'FrequencyOffset',  fc, ...
    'YLimits',          [-80,10], ...
    'YLabel',           'Magnitude-squared, dB', ...
    'Position',         figposition([50 30 30 40]));

%% Stream processing
% View spectrum.  While the spectrum analyzer is running, you can measure
% peaks, occupied bandwidth, and other properties of the signal.
if ~isempty(sdrinfo(hSDRrRx.RadioAddress))
    for count = 1 : 5000
        [data, ~] = step(hSDRrRx);  % no 'len' output needed for blocking operation
        data = data - mean(data);  % remove DC component
        step(hSpectrum, data);
    end
else
    warning(message('sdrbase:sysobjdemos:MainLoop'))
end

% Release all System objects
release(hSDRrRx);
release(hSpectrum);

%% Conclusion
% In this example, you used Communications Toolbox(TM) System
% objects to analyze the spectrum of a received signal.
