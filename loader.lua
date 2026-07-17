local pId = game.PlaceId
local gName = game.Name
local SG = game:GetService("StarterGui")
local CG = game:GetService("CoreGui")
local Players = game:GetService("Players")

local function copyCord()
    pcall(function() setclipboard("https://discord.gg/TWXafVZj72") end)
    SG:SetCore("SendNotification", {Title="JawirHub", Text="Discord invite copied! Paste it somewhere.", Duration=10})
end

copyCord()

local hub = {
    {
        ids = {2984072291}, 
        words = {"Zombie", "Stories"}, 
        title = "Zombies Stories Hub", 
        url = "https://raw.githubusercontent.com/jawirhub/rblx/refs/heads/main/ZombieStories.lua"
    },
    {
        ids = {7871169780}, 
        words = {"bLockerman's", "Minesweeper"}, 
        title = "bLockerman's Minesweeper Hub", 
        url = "https://raw.githubusercontent.com/jawirhub/rblx/refs/heads/main/MinesweeperFull.lua"
    },
    {
        ids = {138381251771774, 10267363348}, 
        words = {"Drain the Lake", "Drain", "Lake"}, 
        title = "Drain the Lake Hub", 
        url = "https://raw.githubusercontent.com/jawirhub/rblx/refs/heads/main/DraintheLake.lua"
    }
}

local function showGames()
    local gui = Instance.new("ScreenGui")
    gui.Name = "JawirHub_List"
    local s, _ = pcall(function() gui.Parent = CG end)
    if not s then gui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui") end

    local bg = Instance.new("Frame", gui)
    bg.Size = UDim2.new(0, 240, 0, 300)
    bg.Position = UDim2.new(0.5, 0, 0.5, 0)
    bg.AnchorPoint = Vector2.new(0.5, 0.5)
    bg.BackgroundColor3 = Color3.fromRGB(20, 20, 22)
    bg.BorderSizePixel = 0
    Instance.new("UICorner", bg).CornerRadius = UDim.new(0, 8)

    local top = Instance.new("TextLabel", bg)
    top.Size = UDim2.new(1, -30, 0, 30)
    top.Position = UDim2.new(0, 10, 0, 0)
    top.BackgroundTransparency = 1
    top.Text = "Supported Games"
    top.TextColor3 = Color3.fromRGB(255, 255, 255)
    top.Font = Enum.Font.GothamBold
    top.TextSize = 13
    top.TextXAlignment = Enum.TextXAlignment.Left

    local close = Instance.new("TextButton", bg)
    close.Size = UDim2.new(0, 30, 0, 30)
    close.Position = UDim2.new(1, -30, 0, 0)
    close.BackgroundTransparency = 1
    close.Text = "X"
    close.TextColor3 = Color3.fromRGB(255, 60, 60)
    close.Font = Enum.Font.GothamBold
    close.TextSize = 14
    close.Activated:Connect(function() gui:Destroy() end) 

    local sf = Instance.new("ScrollingFrame", bg)
    sf.Size = UDim2.new(1, -20, 1, -45)
    sf.Position = UDim2.new(0, 10, 0, 35)
    sf.BackgroundTransparency = 1
    sf.ScrollBarThickness = 2
    sf.CanvasSize = UDim2.new(0, 0, 0, 0)
    sf.AutomaticCanvasSize = Enum.AutomaticSize.Y
    sf.BorderSizePixel = 0

    local layout = Instance.new("UIListLayout", sf)
    layout.Padding = UDim.new(0, 5)
    
    for _, v in ipairs(hub) do
        local btn = Instance.new("TextButton", sf)
        btn.Size = UDim2.new(1, -5, 0, 25)
        btn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
        btn.TextColor3 = Color3.fromRGB(200, 200, 200)
        btn.Text = " " .. v.title
        btn.Font = Enum.Font.Gotham
        btn.TextSize = 12
        btn.TextXAlignment = Enum.TextXAlignment.Left
        btn.AutoButtonColor = true 
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 4)
        
        btn.Activated:Connect(function()
            gui:Destroy() -- Close the menu
            SG:SetCore("SendNotification", {Title="JawirHub", Text="Loading: " .. v.title, Duration=5})
            pcall(function() loadstring(game:HttpGet(v.url))() end) -- Load the script
        end)
    end
end

local function runHub()
    for _, v in ipairs(hub) do
        local match = false
        
        for _, id in ipairs(v.ids) do 
            if pId == id then match = true break end 
        end
        
        if not match then
            for _, w in ipairs(v.words) do 
                if string.find(gName, w) then match = true break end 
            end
        end

        if match then
            SG:SetCore("SendNotification", {Title="JawirHub", Text="Loading: " .. v.title, Duration=5})
            pcall(function() loadstring(game:HttpGet(v.url))() end)
            return
        end
    end
    showGames()
end

runHub()
