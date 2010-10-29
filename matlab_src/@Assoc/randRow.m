function Asub = randRow(A,Nsub)
%RANDROW returns up to Nsub random subrows of an associative array.
   [N M] = size(A.A);

   Asub = A;  % Copy input.
   if (Nsub < N)
     isub = unique(randi(N,Nsub,1));   % Generate sub-indices.
     Asub.A = Asub.A(isub,:);    % Copy Adj matrix.
     if not(isempty(A.row))
       rowMat = Str2mat(A.row);
       Asub.row = Mat2str(rowMat(isub,:));    % Copy row keys.
     end
  end

  Asub = reAssoc(Asub);

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% D4M: Dynamic Distributed Dimensional Data Model
% Architect: Dr. Jeremy Kepner (kepner@ll.mit.edu)
% Software Engineer: Dr. Jeremy Kepner (kepner@ll.mit.edu)
% MIT Lincoln Laboratory
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (c) <2010> Massachusetts Institute of Technology
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
