function [df] = diff_3points_end(xx, yy)
df = (-3*yy(1) + 4*yy(2) - yy(3))/(xx(3) - xx(1));
end
