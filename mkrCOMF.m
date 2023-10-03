%% Access 5722711 folder through directory
myDir = dir('~/Desktop/5722711/WBDSascii');
txtNames = {myDir.name};
txtNames = txtNames(3:end);
addpath(genpath('/Users/snehaagarwal/Desktop/5722711/WBDSascii'))

%42 participants - 100file/part
%each row = 1 participant
%go through the file name and see which ones have an 'O'
%after walk
%After trial number, find the ones with an S/C/F.
%After the S, grf data

%% Create new cell array
MKR_COMF = {};
prevRow = 1;
subCell = {};
counter = 1;
%% Loop through all files in folder, search for comf overground
for i = txtNames
    fileName = i{1};
    currentRow = str2num(fileName([5,6]));
    
    curStr = struct();
    if contains(fileName,'walkO') & contains(fileName,'Cmkr')
        data1 = importdata(fileName);
        %% Set up the Import Options and import the data
        opts = delimitedTextImportOptions("NumVariables", length(data1.colheaders));
        
        % Specify range and delimiter
        opts.DataLines = [2, Inf];
        opts.Delimiter = "\t";
        
        % Specify column names and types
        opts.VariableNames = data1.colheaders(1,:);
        
        tempVarTY = strings(1,length(data1.colheaders));
        
        for i = 1:length(data1.colheaders)
               tempVarTY(1,i) = "double";
        end
        
        opts.VariableTypes = tempVarTY;
        
        % Specify file level properties
        opts.ExtraColumnsRule = "ignore";
        opts.EmptyLineRule = "read";
        
        % Import the data
        output = readtable(fileName, opts);
        if prevRow == currentRow
            MKR_COMF{currentRow, counter}=output;
            counter = counter + 1;
        else
            if prevRow > 1
                [MKR_COMF,subCell] = compareSizes(MKR_COMF,subCell);
            end
            counter = 1;
            prevRow = prevRow + 1;
            MKR_COMF{currentRow, counter}=output;
            counter = counter + 1;
        end        
    end
end
[MKR_COMF,subCell] = compareSizes(MKR_COMF,subCell);
MKR_COMF = [MKR_COMF; subCell];

%% Clear other temp variables
clear counter
clear opts
clear output
clear prevRow
clear subCell
clear tempVarTY
clear txtNames
clear data1
clear curStr
clear currentRow
clear myDir
clear fileName
clear i

%% Adjust array size for diff number of trials
function [MKR_COMF,subCell] = compareSizes(MKR_COMF,subCell)
[rfin,cfin] = size(MKR_COMF);
[rsub,csub] = size(subCell);
if ~(cfin == csub)
    if cfin < csub
        for i = cfin + 1:csub
            for j = 1:rfin
                MKR_COMF{j,i} = 0;
            end
        end
    else
        for i = csub + 1:cfin
            for j = 1:rsub
                subCell{j,i} = 0;
            end
        end
    end
end
end
