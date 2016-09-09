function allwords(f)
    line = io.read()
    for word in string.gmatch(line, "%w+") do
        f(word)
    end
end

local count = 0
allwords(function (w)
    if w == "hello" then count = count +1 end
end)
print(count)
