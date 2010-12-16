function T = DBtable(DB,tablename)
%DBSERVER constructs DBtable object.

  T.DB = DB;   % Copy table.
  T.name = tablename;  % Set tablename

% T.security = '';   
% if strcmp(DB.type,'BigTableLike')
%   T.columnfamily = 'vertexFamilyValue';   
% end

  T=class(T,'DBtable');

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% D4M: Dynamic Distributed Dimensional Data Model
% Architect: Dr. Jeremy Kepner (kepner@ll.mit.edu)
% Software Engineer: Dr. Jeremy Kepner (kepner@ll.mit.edu)
% MIT Lincoln Laboratory
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (c) <2010> Massachusetts Institute of Technology
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

