function varargout = preypredator(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @preypredator_OpeningFcn, ...
                   'gui_OutputFcn',  @preypredator_OutputFcn, ...
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
% --------------------------------------------------------------------

function preypredator_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
% --------------------------------------------------------------------

function varargout = preypredator_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
% --------------------------------------------------------------------

function prey_Callback(hObject, eventdata, handles)
% --------------------------------------------------------------------
function prey_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --------------------------------------------------------------------
function predator_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --------------------------------------------------------------------
function predator_Callback(hObject, eventdata, handles)
% --------------------------------------------------------------------
function food_Callback(hObject, eventdata, handles)
% --------------------------------------------------------------------
function food_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --------------------------------------------------------------------
function popupmenu1_Callback(hObject, eventdata, handles)
popup_sel_index = get(handles.popupmenu1, 'Value');
switch popup_sel_index
    case 1
        set(handles.predator, 'enable', 'off');
        set(handles.prey, 'enable', 'off');
        set(handles.food, 'enable', 'off');      
        set(handles.alpha, 'enable', 'off');
        set(handles.beta, 'enable', 'off');
        set(handles.gamma, 'enable', 'off');
        set(handles.delta, 'enable', 'off');
        set(handles.x_goal, 'enable', 'off');
        set(handles.t1, 'enable', 'off');
        set(handles.t2, 'enable', 'off');
        set(handles.t0, 'enable', 'off');
        set(handles.pogr, 'enable', 'off');
        
    case 2
        set(handles.predator, 'enable', 'on');
        set(handles.prey, 'enable', 'on');
        set(handles.food, 'enable', 'off');
        set(handles.alpha, 'enable', 'on');
        set(handles.beta, 'enable', 'on');
        set(handles.gamma, 'enable', 'on');
        set(handles.delta, 'enable', 'on');
        set(handles.x_goal, 'enable', 'off');
        set(handles.t1, 'enable', 'off');
        set(handles.t2, 'enable', 'off');
        set(handles.t0, 'enable', 'off');
        set(handles.pogr, 'enable', 'off');
        
    case 3       
        set(handles.predator, 'enable', 'on');
        set(handles.prey, 'enable', 'on');
        set(handles.food, 'enable', 'on');
        set(handles.x_goal, 'enable', 'on');      
        set(handles.alpha, 'enable', 'off');
        set(handles.beta, 'enable', 'on');
        set(handles.gamma, 'enable', 'on');
        set(handles.delta, 'enable', 'on');
        set(handles.t1, 'enable', 'off');
        set(handles.t2, 'enable', 'off');
        set(handles.t0, 'enable', 'off');
        set(handles.pogr, 'enable', 'of');
    case 4       
        set(handles.predator, 'enable', 'on');
        set(handles.prey, 'enable', 'on');
        set(handles.food, 'enable', 'off');         
        set(handles.alpha, 'enable', 'off');
        set(handles.beta, 'enable', 'on');
        set(handles.gamma, 'enable', 'on');
        set(handles.delta, 'enable', 'on');
        set(handles.x_goal, 'enable', 'on');
        set(handles.t1, 'enable', 'off');
        set(handles.t2, 'enable', 'off');
        set(handles.t0, 'enable', 'off');
        set(handles.pogr, 'enable', 'of');
end
% --------------------------------------------------------------------
function popupmenu1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --------------------------------------------------------------------
function alpha_Callback(hObject, eventdata, handles)
% --------------------------------------------------------------------
function alpha_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --------------------------------------------------------------------
function beta_Callback(hObject, eventdata, handles)
% --------------------------------------------------------------------
function beta_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --------------------------------------------------------------------
function gamma_Callback(hObject, eventdata, handles)
% --------------------------------------------------------------------
function gamma_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --------------------------------------------------------------------
function delta_Callback(hObject, eventdata, handles)
% --------------------------------------------------------------------
function delta_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --------------------------------------------------------------------

% --------------------------------------------------------------------
function [x,y,z,x_goal,alpha,beta,gamma,delta]=getparam(handles)
x = str2double(get(handles.predator, 'string'));
y = str2double(get(handles.prey, 'string'));
z = str2double(get(handles.food, 'string'));
x_goal = str2double(get(handles.x_goal, 'string'));
alpha = str2double(get(handles.alpha, 'string'));
beta = str2double(get(handles.beta, 'string'));
gamma = str2double(get(handles.gamma, 'string'));
delta = str2double(get(handles.delta, 'string'));  
% --------------------------------------------------------------------
function flag = checkparam(x,y,z,x_goal,alpha,beta,gamma,delta,handles)
flag=0;
popup_sel_index = get(handles.popupmenu1, 'value');
switch popup_sel_index
    
    case 2 
         if(isnan(x)|| (isnan(y)) || (isnan(alpha)) || (isnan(beta)) || (isnan(gamma)))
            flag=1;
         elseif (x<0 || y<0 || alpha<0 || beta<0 || delta<0 || gamma<0)
            flag=2; 
         end
    case 3
        if(isnan(x)|| (isnan(y)) ||(isnan(z)) ||(isnan(x_goal)) || (isnan(alpha)) || (isnan(beta)) || (isnan(gamma)))
            flag=1;
         elseif (x<0 || y<0 || z<0 || x_goal<0 || alpha<0 || beta<0 || delta<0 || gamma<0)
            flag=2; 
        else
            flag=0;
        end 
    case 4
        if(isnan(x)|| (isnan(y)) ||(isnan(z)) || (isnan(x_goal)) || (isnan(alpha)) || (isnan(beta)) || (isnan(gamma)))
            flag=1;
         elseif (x<0 || y<0 || z<0 || x_goal<0 || alpha<0 || beta<0 || delta<0 || gamma<0)
            flag=2; 
        else
            flag=0;
        end 
end


function design_Callback(hObject, eventdata, handles)
set(handles.max_x, 'string', '');
set(handles.max_y, 'string', '');
popup_sel_index = get(handles.popupmenu1, 'Value');
index = get(handles.state_time, 'value');
[x,y,z,x_goal,alpha,beta,gamma,delta]=getparam(handles);

    switch popup_sel_index
    case 1
           uiwait(msgbox('Для продолжения работы необходимо выбрать тип модели!','Предупреждение','warn')); 
    case 2 
        
        f = checkparam(x,y,z,x_goal,alpha,beta,gamma,delta,pogr, handles);
        if (f ==1)
            uiwait( msgbox('Введенные значение должны иметь числовой формат!', 'Ошибка', 'error', 'modal'));
           return;
        elseif (f==2)
            uiwait( msgbox('Введенные значение должны быть больше нуля!', 'Ошибка', 'error', 'modal'));
            return;
        else 
        preypred(x,y,alpha,beta,gamma,delta,0);     
        end
    case 3
        f = checkparam(x,y,z,x_goal,alpha,beta,gamma,delta, handles);
        if (f==1)
             uiwait( msgbox('Введенные значение должны иметь числовой формат!', 'Ошибка', 'error', 'modal'));
             return;
        elseif(f==2)
            uiwait( msgbox('Введенные значение должны быть больше нуля!', 'Ошибка', 'error', 'modal'));
            return;
        end 
        switch index
            case 1
                uiwait(msgbox('Выберите способ задания коэффициентов времени!', 'Предупреждение', 'warn','modal'));
                return;
            case 2
                t1 = str2double(get(handles.t1, 'string'));
                t2 = str2double(get(handles.t2, 'string'));
                if (isnan(t1) || isnan(t2))
                    uiwait( msgbox('Введенные значение должны иметь числовой формат!', 'Ошибка', 'error', 'modal'));
                    return;
                elseif (t1<0 || t2<0 || t1==0 || t2==0)
                    uiwait( msgbox('Введенные значение должны быть больше нуля!', 'Ошибка', 'error', 'modal'));
                    return;
                end
                if (x_goal~=gamma/delta)
                    uiwait(msgbox({'При введенных коэффициентах нарушается устойчивость системы!'; 'Цель может не достигаться!'}, 'Предупреждение','warn'));
                end
                graphik(t1,t2,beta,gamma,delta,x,y,z,x_goal,0);    
            case 3
                time = str2double(get(handles.t0, 'string'));
                pogr = str2double(get(handles.pogr,'string'));
                
               [T1,T2]= check_time1(x,y,z,x_goal,beta,gamma,delta,time,pogr,0);
               graphik(T1,T2,beta,gamma,delta,x,y,z,x_goal,0);    
               % fid = fopen('time.txt','r');
                %A = fscanf(fid,'%f %f',[2 Inf]); 
                %fclose(fid);
                %A = A';    
                %graphik(A(1,1),A(1,2),beta,gamma,delta,x,y,z,x_goal,0);              
        end
    case 4 
        switch index
            case 2
                t1 = str2double(get(handles.t1, 'string'));
                if (x_goal~=gamma/delta)
                    uiwait(msgbox({'При введенных коэффициентах нарушается устойчивость системы!'; 'Цель может не достигаться!'}, 'Предупреждение','warn'));
                end
                graphik7(t1,beta,gamma,delta,x,y,x_goal,0); 
            case 3
                time = str2double(get(handles.t0, 'string'));
                check_time1(x,y,z,x_goal,beta,gamma,delta,time,pogr,1);
                fid = fopen('time.txt','r');
                A = fscanf(fid,'%f'); 
                fclose(fid);
                graphik7(A(1),beta,gamma,delta,x,y,x_goal,0);        
        end
    end

% --------------------------------------------------------------------
function grid_Callback(hObject, eventdata, handles)
        set(handles.axes1, 'XGrid', 'on');
        set(handles.axes1, 'YGrid', 'on');
% --------------------------------------------------------------------
function legend_Callback(hObject, eventdata, handles)
popup_sel_index = get(handles.popupmenu1, 'Value');
switch popup_sel_index
    case 2
        legend('Жертвы','Хищники')
    case 3
        legend('Жертвы','Хищники', 'Питание')
    case 4
        legend('Жертвы','Хищники', 'Питание')
end
% --------------------------------------------------------------------
function graph_Callback(hObject, eventdata, handles)

% --------------------------------------------------------------------
function time_Callback(hObject, eventdata, handles)
[x,y,z,x_goal,alpha,beta,gamma,delta]=getparam(handles);
popup_sel_index = get(handles.popupmenu1, 'Value');
switch popup_sel_index
    case 2
        preypred(x,y,alpha,beta,gamma,delta,0);
    case 3
        t1 = str2double(get(handles.t1, 'string'));
        t2 = str2double(get(handles.t2, 'string'));
        if (x_goal~=gamma/delta)
            uiwait(msgbox({'При введенных коэффициентах нарушается устойчивость системы!'; 'Цель может не достигаться!'}, 'Предупреждение','warn'));
        end
        graphik(t1,t2,beta,gamma,delta,x,y,z,x_goal,0);
    case 4 
        t1 = str2double(get(handles.t1, 'string'));
        if (x_goal~=gamma/delta)
            uiwait(msgbox({'При введенных коэффициентах нарушается устойчивость системы!'; 'Цель может не достигаться!'}, 'Предупреждение','warn'));
        end
        graphik7(t1,beta,gamma,delta,x,y,x_goal,0);    
end

% --------------------------------------------------------------------
function faza_Callback(hObject, eventdata, handles)
[x,y,z,x_goal,alpha,beta,gamma,delta]=getparam(handles);
popup_sel_index = get(handles.popupmenu1, 'Value');
switch popup_sel_index
    case 2 
        preypred(x,y,alpha,beta,gamma,delta,1);
    case 3 
        t1 = str2double(get(handles.t1, 'string'));
        t2 = str2double(get(handles.t2, 'string'));
        if (x_goal~=gamma/delta)
            uiwait(msgbox({'При введенных коэффициентах нарушается устойчивость системы!'; 'Цель может не достигаться!'}, 'Предупреждение','warn'));
        end
        graphik(t1,t2,beta,gamma,delta,x,y,z,x_goal,1);
    case 4
        t1 = str2double(get(handles.t1, 'string'));
        if (x_goal~=gamma/delta)
            uiwait(msgbox({'При введенных коэффициентах нарушается устойчивость системы!'; 'Цель может не достигаться!'}, 'Предупреждение','warn'));
        end
        graphik7(t1,beta,gamma,delta,x,y,x_goal,1);  
end
 
function t1_Callback(hObject, eventdata, handles)
% --------------------------------------------------------------------
function t1_CreateFcn(hObject, eventdata, handles)
% --------------------------------------------------------------------
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function t2_Callback(hObject, eventdata, handles)
    
function t2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --------------------------------------------------------------------
function t0_Callback(hObject, eventdata, handles)
% --------------------------------------------------------------------
function x_goal_Callback(hObject, eventdata, handles)
% --------------------------------------------------------------------
function x_goal_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --------------------------------------------------------------------
function max_x_Callback(hObject, eventdata, handles)
    max_x=str2double(get(handles.max_x,'string'));
    xlim([0 max_x]);
% --------------------------------------------------------------------
function max_x_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --------------------------------------------------------------------
function max_y_Callback(hObject, eventdata, handles)

    max_y=str2double(get(handles.max_y,'string'));
    ylim([0 max_y]);

function max_y_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');

end
% --------------------------------------------------------------------
function state_time_Callback(hObject, eventdata, handles)
popup_sel_index = get(handles.popupmenu1, 'Value');
index = get(handles.state_time, 'value');
switch popup_sel_index
    case 1
        uiwait(msgbox('Выберите модель "Хищник - жертва с питанием" или "Хищник - жертва с питанием без расширения фазового пространства!" ', 'Предупреждение','warn'));
        set(handles.state_time, 'value', 1);
    case 2
        uiwait(msgbox('Выберите модель "Хищник - жертва с питанием" или "Хищник - жертва с питанием без расширения фазового пространства!" ', 'Предупреждение','warn'));
        set(handles.state_time, 'value', 1);
    case 3
        switch index
            case 2
                set(handles.t1, 'enable', 'on');
                set(handles.t2, 'enable', 'on');
                set(handles.t0, 'enable', 'off');   
                set(handles.pogr, 'enable', 'off');
                
            case 3               
                set(handles.t1, 'enable', 'off');
                set(handles.t2, 'enable', 'off');
                set(handles.t0, 'enable', 'on');
                set(handles.pogr, 'enable', 'on');
        end
    case 4
        switch index
            case 2
                set(handles.t1, 'enable', 'on');
                set(handles.t2, 'enable', 'off');
                set(handles.t0, 'enable', 'off');
                 set(handles.pogr, 'enable', 'off');
            case 3               
                set(handles.t1, 'enable', 'off');
                set(handles.t2, 'enable', 'off');
                set(handles.t0, 'enable', 'on');
                 set(handles.pogr, 'enable', 'on');
        end
        
end
% --------------------------------------------------------------------
function state_time_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function t0_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --------------------------------------------------------------------
function help_Callback(hObject, eventdata, handles)

function help_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --------------------------------------------------------------------
function help_for_model_Callback(hObject, eventdata, handles)
CreateStruct.Interpreter = 'tex';
CreateStruct.WindowStyle = 'modal';
h=msgbox({'\fontsize {  10}\fontname{Roboto}Условие устойчивости системы', '"Хищник-жертва с питанием и управлением":','\fontsize{10}', 'x^*_{1} = \gamma/\delta,', 'где x^*_{1} - цель жертв, \gamma,\delta - коэффициенты системы'}, 'Справка', CreateStruct);

function pogr_Callback(hObject, eventdata, handles)

function pogr_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
