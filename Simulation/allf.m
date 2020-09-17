classdef allf
    methods(Static)
        function y = sat(x, limit)
            if (-limit < x) && (x < limit)
                y = x;
            elseif x >= limit
                y = limit;
            else
                y = -limit;
            end
        end
        
        function y = dsat(x, limit)
            if (-limit < x) && (x < limit)
                y = 1;
            else
                y = 0;
            end
        end
        
    end
 end