local function deriveKey()
    if tostring(game.PlaceId or 0) ~= TARGET_PLACE_ID then
        return nil
    end
    local salt = "jawirsecretdkey"
    local mixed = TARGET_PLACE_ID .. salt
    local hash = 5381
    for i = 1, #mixed do
        hash = bit32.bxor(bit32.lshift(hash, 5), hash) + string.byte(mixed, i)
    end
    local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local key = ""
    local h = math.abs(hash)
    for i = 1, 16 do
        h = bit32.bxor(bit32.lshift(h, 13), h)
        key = key .. chars:sub((h % #chars) + 1, (h % #chars) + 1)
    end
    return key
end

local SECRET_KEY = deriveKey()
if not SECRET_KEY then
    return
end

local function xorDecrypt(str, key)
    local out = {}
    for i = 1, #str do
        local byte = string.byte(str, i)
        local keyByte = string.byte(key, ((i - 1) % #key) + 1)
        table.insert(out, string.char(bit32.bxor(byte, keyByte)))
    end
    return table.concat(out)
end

local rawURL = xorDecrypt(id, SECRET_KEY)
if not rawURL:match("^https://") then
    return
end

local sourceCode = game:HttpGet(rawURL)
loadstring(sourceCode)()
