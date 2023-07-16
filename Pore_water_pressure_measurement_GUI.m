function varargout = Pore_water_pressure_measurement_GUI(varargin)
% PORE_WATER_PRESSURE_MEASUREMENT_GUI MATLAB code for Pore_water_pressure_measurement_GUI.fig
%      PORE_WATER_PRESSURE_MEASUREMENT_GUI, by itself, creates a new PORE_WATER_PRESSURE_MEASUREMENT_GUI or raises the existing
%      singleton*.
%
%      H = PORE_WATER_PRESSURE_MEASUREMENT_GUI returns the handle to a new PORE_WATER_PRESSURE_MEASUREMENT_GUI or the handle to
%      the existing singleton*.
%
%      PORE_WATER_PRESSURE_MEASUREMENT_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PORE_WATER_PRESSURE_MEASUREMENT_GUI.M with the given input arguments.
%
%      PORE_WATER_PRESSURE_MEASUREMENT_GUI('Property','Value',...) creates a new PORE_WATER_PRESSURE_MEASUREMENT_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Pore_water_pressure_measurement_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Pore_water_pressure_measurement_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Pore_water_pressure_measurement_GUI

% Last Modified by GUIDE v2.5 16-Jul-2023 10:08:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Pore_water_pressure_measurement_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Pore_water_pressure_measurement_GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Pore_water_pressure_measurement_GUI is made visible.
function Pore_water_pressure_measurement_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Pore_water_pressure_measurement_GUI (see VARARGIN)

% Choose default command line output for Pore_water_pressure_measurement_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Pore_water_pressure_measurement_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);

clc

set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.edit3,'String','');
set(handles.edit4,'String','');
set(handles.edit5,'String','');
set(handles.edit6,'String','');
set(handles.edit7,'String','');

axes(handles.axes1)
cla(handles.axes1,'reset')

grid on
xlabel('pore water pressure variation in kN/m^2');
ylabel('depth below ground level in m');
title('variation of pore water pressure with depth');


% --- Outputs from this function are returned to the command line.
function varargout = Pore_water_pressure_measurement_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clc
% clear all
% close all
%% INPUTS
% q=input('pressure applied (q) in kN/m^2 :');
q=eval(get(handles.edit1,'String'));
% t=input('Provide no of days (t) for observation of "u":');
t=eval(get(handles.edit2,'String'));
% cv=input('Provide value of coefficient of consolidation (Cv) in m^2/day :');
cv=eval(get(handles.edit3,'String'));
% z=input('Provide depth of soil layer (z) in m:');
z=eval(get(handles.edit4,'String'));
zr=z;%value provided equal to z for program logic purpose 
% ur=input('Provide reference pore pressure parameter(ur):');
ur=eval(get(handles.edit5,'String'));
tr=(zr^2)/cv; %reference time value
% del_t=input('Provide time interval to be considered in days (delta t):');
del_t=eval(get(handles.edit6,'String'));
del_t_bar=cv*del_t/zr^2; %non dimentional time interval
% del_z_bar=input('Provide non dimentional depth interval (delta z) for calculation:');
del_z_bar=eval(get(handles.edit7,'String'));
t_z=del_t_bar/del_z_bar^2; %stability parameter
u=zeros((((z/zr)/del_z_bar)+1),(t/del_t)+1); %defining a matrix of size of grid chosen
x=0:(((z/zr)/del_z_bar)); %defining range of x-axis
%defining boundary condition
% display('Is it case of single drainge or double drainage');
% display('Input "1" for if only top or only bottom surface is permeable');
% display('Input "2" for if both top and  bottom surfaces is permeable');
% D=input('Press conditional option: ');
D=get(handles.popupmenu1,'Value');
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

axes(handles.axes1)
cla(handles.axes1,'reset')

grid on
for p=1:((t/del_t)+1); 
    u11=u1(:,p); % pore pressure array at on perticular time
    plot(u1(:,p),-x); %plot with depth
    t1=t1+del_t; %time instant for real time graph
    title(sprintf('variation of pore water pressure with depth on %f day',t1));
    drawnow
end
xlabel('pore water pressure variation in kN/m^2');
ylabel('depth below ground level in m');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clc

set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.edit3,'String','');
set(handles.edit4,'String','');
set(handles.edit5,'String','');
set(handles.edit6,'String','');
set(handles.edit7,'String','');

axes(handles.axes1)
cla(handles.axes1,'reset')

grid on
xlabel('pore water pressure variation in kN/m^2');
ylabel('depth below ground level in m');
title('variation of pore water pressure with depth');



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close
