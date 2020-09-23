function fileList = retrieveFilesBMPAuxFn(inputPath,extensionList)
% retrieveFilesAuxFn - (Auxillary function)
% retrieves a list of files in inputPath with extensions in extensionList
%
% Syntax -
% retrieveFilesAuxFn(inputPath,extensionList)
%
% Parameters -
% - inputPath: path selected by user containing images files
% - extensionList: list of file extensions

cd(inputPath);
list = dir;
for i = 1 : numel(list)
    [~,~,extension] = fileparts(list(i).name);
    switch lower(extension)
        case extensionList
            try
                fileList = [fileList list(i)];
            catch
                fileList = list(i);
            end
    end
end