#!/usr/bin/env lua
-- echo command line arguments
-- lua-5.1.5/doc/manual.html
-- Function table.setn was deprecated. Function table.getn corresponds to the new length operator (#);

for i=0,#arg do
 print(i,arg[i])
end
