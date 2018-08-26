clc
clear
close all
%Define Arduino as variable
a = arduino('com4','uno');
%Start timer
tic
%Initial for loop to get initial data points
for i=1:100
    %Read the voltage at pin A0, multiply by 11 to get total voltage
    %This is the ratio from the voltage divider
    voltage(i,1)=11*(readVoltage(a,'A0'));
    %Take the time for the x-axis
    t(i,1)=2*toc;
end
%Graph voltage, power, and windspeed
u=plot(t,voltage,'linewidth',2);
hold on
grid on
title('Voltage over Time')
%Set up while loop that is always true
while true
    dt=0;
    % Take a small slice of data after the initial data
    tn=linspace(max(t)+dt,max(t)+2,80);
    %For loop to ensure arrays line up
    for i = 1:80
    voltage1(i,1)=11*(readVoltage(a,'A0'));
    end
    %Append new data to orignial data
    t=[t(100+1:end) tn];
    voltage=[t(100+1:end) voltage1];
    %Add data to graph
    set(u,'Xdata',t,'YData',voltage);
    pause(0.0001);
end