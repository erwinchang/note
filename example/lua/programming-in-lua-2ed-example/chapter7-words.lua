function allwords()
    local line = io.read()
    print('<1>line:',line)
    local pos = 1
    return function ()
        print('<2>line:',line,' ,pos:',pos)
        while line do
            local s, e = string.find(line,"%w+", pos)
            if s then
                pos = e + 1
                return string.sub(line, s, e)
            else
                line = io.read()
                print('<3>line:',line)
                pos = 1
            end
        end
        return nil
    end
end

for word in allwords() do
    print(word)
end
