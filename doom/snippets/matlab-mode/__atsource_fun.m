function fnInfo = ${1:`(file-name-nondirectory (file-name-sans-extension (buffer-file-name)))`}

fnInfo = AtSourceExtFnStructure;

fnInfo(end+1).Name = '$1';
fnInfo(end  ).Template.Default.Code = '<b_out> = <b_in>;';
fnInfo(end  ).Inputs(1) = struct('name', 'b_in', 'datatype', 'boolean', 'dims', 1);
fnInfo(end  ).Outputs(1) = struct('name', 'b_out', 'datatype', 'boolean', 'dims', 1);
