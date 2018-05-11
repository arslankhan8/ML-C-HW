function [idx,idy] = min_idx(out_array)
[W, IW] = min (out_array);
[V, IV] = min (W);

idx = IW(IV);
idy = IV;
end 

