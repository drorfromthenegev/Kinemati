global plotx=false;
global plotv=false;
global plota=false;
global extx=false;
global extv=false;
global exta=false;


function varargout = KinematiUI(varargin)
% KINEMATIUI MATLAB code for KinematiUI.fig
%      KINEMATIUI, by itself, creates a new KINEMATIUI or raises the existing
%      singleton*.
%
%      H = KINEMATIUI returns the handle to a new KINEMATIUI or the handle to
%      the existing singleton*.
%
%      KINEMATIUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KINEMATIUI.M with the given input arguments.
%
%      KINEMATIUI('Property','Value',...) creates a new KINEMATIUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before KinematiUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to KinematiUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help KinematiUI

% Last Modified by GUIDE v2.5 23-Sep-2016 11:04:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @KinematiUI_OpeningFcn, ...
                   'gui_OutputFcn',  @KinematiUI_OutputFcn, ...
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


% --- Executes just before KinematiUI is made visible.
function KinematiUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to KinematiUI (see VARARGIN)

% Choose default command line output for KinematiUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes KinematiUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = KinematiUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in plotx.
function plotx_Callback(hObject, eventdata, handles)
% hObject    handle to plotx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plotx
plotx=get(hObject,'Value')

% --- Executes on button press in plotv.
function plotv_Callback(hObject, eventdata, handles)
% hObject    handle to plotv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plotv
plotv=get(hObject,'Value')

% --- Executes on button press in plota.
function plota_Callback(hObject, eventdata, handles)
% hObject    handle to plota (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plota
plota=get(hObject,'Value')

% --- Executes on button press in extx.
function extx_Callback(hObject, eventdata, handles)
% hObject    handle to extx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of extx
extx=get(hObject,'Value')

% --- Executes on button press in extv.
function extv_Callback(hObject, eventdata, handles)
% hObject    handle to extv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of extv
extv=get(hObject,'Value')

% --- Executes on button press in exta.
function exta_Callback(hObject, eventdata, handles)
% hObject    handle to exta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of exta
exta=get(hObject,'Value')


% --- Executes on button press in StartButton.
function StartButton_Callback(hObject, eventdata, handles)
% hObject    handle to StartButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName,~] = uigetfile();
timetablex=csvread(PathName);
xvals=timetablex(2,:)
tvals=timetablex(1,:)
if(ValidateData(xvals,tvals))
   vvals=FirstDerivative(xvals,tvals)
   avals=SecondDerivative(xvals,tvals)
    %TODO: ADD CODE FOR PLOTTING AND OUTPUTING EXTREMUMS
   
end

function resultstxt_Callback(hObject, eventdata, handles)
% hObject    handle to resultstxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resultstxt as text
%        str2double(get(hObject,'String')) returns contents of resultstxt as a double


% --- Executes during object creation, after setting all properties.
function resultstxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultstxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
