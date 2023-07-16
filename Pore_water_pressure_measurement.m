%% Pore water pressure measurement while consolidation by FDM
% This program is made for calculation of variation of pore water 'u'
% post construction in a homogeneous soil layer for single and double drainage condition
clc
clear all
close all
%% INPUTS
q=input('pressure applied (q) in kN/m^2 :');
t=input('Provide no of days (t) for observation of "u":');
cv=input('Provide value of coefficient of consolidation (Cv) in m^2/day :');
z=input('Provide depth of soil layer (z) in m:');
zr=z;%value provided equal to z for program logic purpose 
ur=input('Provide reference pore pressure parameter(ur):');
tr=(zr^2)/cv; %reference time value
del_t=input('Provide time interval to be considered in days (delta t):');
del_t_bar=cv*del_t/zr^2; %non dimentional time interval
del_z_bar=input('Provide non dimentional depth interval (delta z) for calculation:');
t_z=del_t_bar/del_z_bar^2; %stability parameter
u=zeros((((z/zr)/del_z_bar)+1),(t/del_t)+1); %defining a matrix of size of grid chosen
x=0:(((z/zr)/del_z_bar)); %defining range of x-axis
%defining boundary condition
display('Is it case of single drainge or double drainage');
display('Input "1" for if only top or only bottom surface is permeable');
display('Input "2" for if both top and  bottom surfaces is permeable');
D=input('Press conditional option: ');
%% case of single drainage
if D==1; 
    u((2:((z/zr)/del_z_bar)+1),1)=100; %Initial assumed values for right boundary
    u((((z/zr)/del_z_bar)+1),2:((t/del_t)+1))=100; %Initial assumed values impermeable boundary
    if t_z<=0.5 %If stable condition persist
        for i=1:(t/del_t) %column no.
            for j=2:(((z/zr)/del_z_bar))%row vector
                u(j,i+1)=t_z*(u(j-1,i)+u(j+1,i)-2*u(j,i))+u(j,i); %FDM formula
            end
        end
    else %if unstable condition persist
        display('repeat the grid patter i.e. delta t and delta z');
    end
%% case of double drainage  
else 
    u((2:(z/zr)/del_z_bar),1)=100; %Initial assumed values for right boundary
    if t_z<=0.5 %If stable condition persist
        for i=1:(t/del_t) %column no.
            for j=2:(((z/zr)/del_z_bar)) %row no.
                u(j,i+1)=t_z*(u(j-1,i)+u(j+1,i)-2*u(j,i))+u(j,i); %FDM formula
            end
        end
    else %if unstable condition persist
        display('repeat the grid patter i.e. delta t and delta z')
    end
end
u1=ur*u; %pore water pressure (in kN/m^2) matrix
t1=0; %initializing time period from 0 days
%% Plotting time depedent pore pressure distribution graph
for p=1:((t/del_t)+1); 
    u11=u1(:,p); % pore pressure array at on perticular time
    plot(u1(:,p),-x); %plot with depth
    t1=t1+del_t; %time instant for real time graph
    title(sprintf('variation of pore water pressure with depth on %f day',t1));
    drawnow
end
xlabel('pore water pressure variation in kN/m^2');
ylabel('depth below ground level in m');