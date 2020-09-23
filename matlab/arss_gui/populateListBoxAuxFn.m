function populateListBoxAuxFn(app)
% populateListBoxAuxFn - (Auxillary function)
% populates listboxes with relevent files
%
% Syntax -
% populateListBoxAuxFn(app)
%
% Parameters -
% - app: DBM UI class
% - inputPath: path selected by user containing images files

%% retreiving files with image extension
fileList = retrieveFilesAuxFn(app.pr_inputPath,'.wav');

%% adding file names to listBox
for fileId = 1 : length(fileList)
    fileListNames{fileId} = fileList(fileId).name;
end
app.ListBox.Items = fileListNames;

%% assigning list to UI class property
app.pr_fileList = fileList;
end