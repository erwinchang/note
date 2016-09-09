function values (t)
    local i = 0
    return function () i = i + 1; return t[i] end
end

t = {10, 20, 30}
iter = values(t)

while true do
    local element = iter()
    if element == nil then break end
    print(element)
end
