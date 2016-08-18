function room1()
    print("entry room1")
    local move = io.read()
    if move == "south" then return room3()
    elseif move == "east" then return room2()
    else
        print("invaild move")
        return room1()
    end
end

function room2()
    print("entry room2")
    local move = io.read()
    if move == "south" then return room4()
    elseif move == "west" then return room1()
    else
        print("invaild move")
        return room2()
    end
end

function room3()
    print("entry room3")
    local move = io.read()
    if move == "north" then return room1()
    elseif move == "east" then return room4()
    else
        print("invaild move")
        return room3()
    end
end

function room4()
    print("entry room4")
    print ("congratulations!");
end

room1()
