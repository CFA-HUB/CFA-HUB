print("Hi")


local Stack = {}
local Env = getfenv()
Stack[1]=Env["print"] --getglobal print
Stack[2] = "Hello world" -- pushvalue -1 Hello World
Stack[3]=Stack[1](Stack[#Stack]); -- call -2 -1
table.remove(Stack,#Stack)

--[[
    getglobal - Fetches a global variable and pushes it to the stack (Like 'game', 'workspace', 'print', 'warn', etc.)
    getfield - Pushes the value of a table to the stack. (In Lua code it would be accessing like 'Table[Key]')
    setfield - Sets the key of a table, The value is the top index of the stack and it pops (or removes) the value from the stack after called.
    pushnumber - Pushes number 'n' to the top of the stack.

--]] 


local tabl = {
    {"getglobal","print"},
    {"pushvalue","Hello world"},
    {"call",-2,-1}
}

local intr = {}
    local Stack = {}
    local Env = getfenv()
    intr["pushvalue"]=function(a,b) 
        Stack[#Stack+1] = a
    end
    intr["getglobal"]=function(a)
        Stack[#Stack+1] = Env[a]
    end
    intr["getfield"]=function(a,b) 
        a=a+1
        Stack[#Stack+1] = Stack[#Stack+a][b]
    end
    intr["call"]=function(a,...) 
        local arg = {}
        a=a+1
        for k,v in pairs({...}) do table.insert(arg,Stack[#Stack+v+1]) end
        Stack[#Stack+1] = Stack[#Stack+a](unpack(arg))
    end
    for k,v in pairs(tabl) do 
        intr[v[1]](v[2],v[3])
    end

return (function(...) 
({...})[1][1]=({...})[2]["print"];
({...})[1][2]="Hello World";
({...})[1][3]=({...})[1][1](({...})[1][#({...})[1]]);
({...})[3](({...})[1],#({...})[1])
end)({},getfenv(),table.remove)

