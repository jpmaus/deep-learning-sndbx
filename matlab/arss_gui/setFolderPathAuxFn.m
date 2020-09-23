function [inputPath,exportPath,list] = setFolderPathAuxFn(app)
% setFolderPathAuxFn - (Auxillary function)
% sets input and output folder path.
%
% Syntax -
% setFolderPathAuxFn(app)
%
% Parameters -
% - app: DBM UI class

%% reading exportPath
exportPath = uigetdir;
if exportPath == 0
    inputPath = '';
    exportPath = '';
    list = '';
    return;
end

%% setting input path to exportPath
inputPath = exportPath;

%% extracting folderName
[~,folderName] = fileparts(exportPath);

%% setting current directory to inputPath
cd(inputPath);

%% obtaining list of all files
list = dir;

%% initializing numFiles (number of image files)
numFiles = 0;

%% looping through all files in the list 
for i = 1 : numel(list)
    [~,~,extension] = fileparts(list(i).name);
    switch lower(extension)
 
        %% checking for image files
        case '.wav'
            numFiles = numFiles + 1;
    end
end

%% checking numFiles if empty
if numFiles == 0
    app.MsgBox.Value = sprintf('%s','Error: no wav files in selected path.');
    return;
else
    app.MsgBox.Value = sprintf('%s',['Progress: selected folder (' folderName ') is succesfully loaded.']);
end
drawnow;

