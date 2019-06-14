a = arduino('com3', 'uno');
tune = 'eefggfedccdee dd';
beats = [1 1 1 1 1 1 1 1 1 1 1 1 1 0.5 0.5 2];
notes = {'c','d','e','f','g' ' '};
freqs = [262 294 330 342 392 0];

for ii = 1:length(tune)
    playTone(a, 'D9', freqs(strcmp(tune(ii),notes)), 0.2*beats(ii))
    pause(0.2*beats(ii))
end

% configurePin(a, 'D9', 'PWM')
% writePWMVoltage(a,'D9',5);
% playTone(a,'D9' ,500,1);
% writeDigitalPin(a,'D9',0)
% configurePin(a, 'D9', 'Unset')
% v = readDigitalPin(a,'D9');
% if v == 1
%     configurePin(a, 'D11')
%     writeDigitalPin(a,'D11',1)
% else
%     writeDigitalPin(a,'D11',0)
% end
