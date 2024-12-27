function varargout = ruddypp2(varargin)
% RUDDYPP2 MATLAB code for ruddypp2.fig
%      RUDDYPP2, by itself, creates a new RUDDYPP2 or raises the existing
%      singleton*.
%
%      H = RUDDYPP2 returns the handle to a new RUDDYPP2 or the handle to
%      the existing singleton*.
%
%      RUDDYPP2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RUDDYPP2.M with the given input arguments.
%
%      RUDDYPP2('Property','Value',...) creates a new RUDDYPP2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ruddypp2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ruddypp2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ruddypp2

% Last Modified by GUIDE v2.5 26-Dec-2024 14:24:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ruddypp2_OpeningFcn, ...
                   'gui_OutputFcn',  @ruddypp2_OutputFcn, ...
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


% --- Executes just before ruddypp2 is made visible.
function ruddypp2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ruddypp2 (see VARARGIN)

% Choose default command line output for ruddypp2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ruddypp2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ruddypp2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in run.
function run_Callback(hObject, eventdata, handles)
% hObject    handle to run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=readfis('ruddypp1');
out=evalfis([str2double(get(handles.umur2,'String')) str2double(get(handles.penumpukan2,'String'))],a);
set(handles.risiko2,'string',out);

% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close;

function risiko2_Callback(hObject, eventdata, handles)
% hObject    handle to risiko2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of risiko2 as text
%        str2double(get(hObject,'String')) returns contents of risiko2 as a double


% --- Executes during object creation, after setting all properties.
function risiko2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to risiko2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function umur2_Callback(hObject, eventdata, handles)
% hObject    handle to umur2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of umur2 as text
%        str2double(get(hObject,'String')) returns contents of umur2 as a double
umur2=str2double(get(hObject,'string'));
handles.umur = umur2;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function umur2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to umur2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function penumpukan2_Callback(hObject, eventdata, handles)
% hObject    handle to penumpukan2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of penumpukan2 as text
%        str2double(get(hObject,'String')) returns contents of penumpukan2 as a double
penumpukan2=str2double(get(hObject,'string'));
handles.penumpukan_tumor = penumpukan2;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function penumpukan2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to penumpukan2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end