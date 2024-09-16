-- // Library Table
-- // Services 
local Workspace, Debris, Stats, UserInputService, RunService, HttpService, Players, TweenService, HttpService, MarketplaceService, Library, Script = 
    game:GetService("Workspace"),
    game:GetService('Debris'),
    game:GetService("Stats"),
    game:GetService("UserInputService"),
    game:GetService("RunService"),
    game:GetService("HttpService"),
    game:GetService("Players"),
    game:GetService("TweenService"),
    game:GetService("HttpService"),
    game:GetService("MarketplaceService"),
    {},
    {Functions = {}, Drawings = {}, ESPPlayers = {}}
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local Mouse = LocalPlayer:GetMouse()
local Lighting = game:GetService("Lighting")
local Camera = Workspace.CurrentCamera
if not game:IsLoaded() then
    game.Loaded:Wait()
end
if (not LPH_OBFUSCATED) then
    LPH_NO_VIRTUALIZE = function(...) return (...) end;
    LPH_JIT_MAX = function(...) return (...) end;
    LPH_JIT_ULTRA = function(...) return (...) end;
end
local Games = {
    [2788229376]                     = {Name = "Da Hood", Arg = "UpdateMousePosI2", Remote = "MainEvent"},
    [16033173781]                    = {Name = "Da Hood Macro", Arg = "UpdateMousePosI22", Remote = "MainEvent"},
    [7213786345]                     = {Name = "Da Hood VC", Arg = "UpdateMousePosI2", Remote = "MainEvent"},
    [9825515356]                     = {Name = "Hood Customs", Arg = "MousePosUpdate", Remote = "MainEvent"},
    [5602055394]                     = {Name = "Hood Modded", Arg = "MousePos", Remote = "Bullets"},
    [7951883376]                     = {Name = "Hood Modded VC", Arg = "MousePos", Remote = "Bullets"},
    [9183932460]                     = {Name = "Untitled Hood", Arg = "UpdateMousePos", Remote = ".gg/untitledhood"},
    [14412355918]                    = {Name = "Da Downhill", Arg = "MOUSE", Remote = "MAINEVENT"},
    [14412601883]                    = {Name = "Hood Bank", Arg = "MOUSE", Remote = "MAINEVENT"},
    [14412436145]                    = {Name = "Da Uphill", Arg = "MOUSE", Remote = "MAINEVENT"},
    [14487637618]                    = {Name = "Da Hood Bot Aim Trainer", Arg = "MOUSE", Remote = "MAINEVENT"},
    [11143225577]                    = {Name = "1v1 Hood Aim Trainer", Arg = "UpdateMousePos", Remote = "MainEvent"},
    [14413712255]                    = {Name = "Hood Aim", Arg = "MOUSE", Remote = "MAINEVENT"},
    [12927359803]                    = {Name = "Dah Aim Trainer", Arg = "UpdateMousePos", Remote = "MainEvent"},
    [12867571492]                    = {Name = "Katana Hood", Arg = "UpdateMousePos", Remote = "MainEvent"},
    [11867820563]                    = {Name = "Dae Hood", Arg = "UpdateMousePos", Remote = "MainEvent"},
    [17109142105]                    = {Name = "Da Battles", Arg = "MoonUpdateMousePos", Remote = "MainEvent"},
    [15186202290]                    = {Name = "Da Strike", Arg = "MOUSE", Remote = "MAINEVENT"},
    [18710690149]                    = {Name = "Del Hood Aim", Arg = "UpdateMousePos", Remote = "MainEvent"},
    [17319408836]                    = {Name = "OG Da Hood", Arg = "UpdateMousePos", Remote = "MainEvent"},
    [17897702920]                    = {Name = "OG Da Hood", Arg = "UpdateMousePos", Remote = "MainEvent"},
    [14975320521]                    = {Name = "Ar Hood", Arg = "UpdateMousePos", Remote = "MainEvent"},
    [17200018150]                    = {Name = "Hood Of AR", Arg = "UpdateMousePos", Remote = "MainEvent"},
}
local tweenInfo = TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
Library = {
    Open = true;
    Accent = Color3.fromRGB(136, 144, 255);
    Flags = {};
    UnNamedFlags = 0;
    ThemeObjects = {};
    Folders = {
        "spectral", --// First value for the normal folder
        "spectral/Configs" --// Second value is for the configs folder
    },
    Tabs = {},
    Keys = {
        [Enum.KeyCode.LeftShift] = "LShift",
        [Enum.KeyCode.RightShift] = "RShift",
        [Enum.KeyCode.LeftControl] = "LCtrl",
        [Enum.KeyCode.RightControl] = "RCtrl",
        [Enum.KeyCode.LeftAlt] = "LAlt",
        [Enum.KeyCode.RightAlt] = "RAlt",
        [Enum.KeyCode.CapsLock] = "Caps",
        [Enum.KeyCode.One] = "1",
        [Enum.KeyCode.Two] = "2",
        [Enum.KeyCode.Three] = "3",
        [Enum.KeyCode.Four] = "4",
        [Enum.KeyCode.Five] = "5",
        [Enum.KeyCode.Six] = "6",
        [Enum.KeyCode.Seven] = "7",
        [Enum.KeyCode.Eight] = "8",
        [Enum.KeyCode.Nine] = "9",
        [Enum.KeyCode.Zero] = "0",
        [Enum.KeyCode.KeypadOne] = "Num1",
        [Enum.KeyCode.KeypadTwo] = "Num2",
        [Enum.KeyCode.KeypadThree] = "Num3",
        [Enum.KeyCode.KeypadFour] = "Num4",
        [Enum.KeyCode.KeypadFive] = "Num5",
        [Enum.KeyCode.KeypadSix] = "Num6",
        [Enum.KeyCode.KeypadSeven] = "Num7",
        [Enum.KeyCode.KeypadEight] = "Num8",
        [Enum.KeyCode.KeypadNine] = "Num9",
        [Enum.KeyCode.KeypadZero] = "Num0",
        [Enum.KeyCode.Minus] = "-",
        [Enum.KeyCode.Equals] = "=",
        [Enum.KeyCode.Tilde] = "~",
        [Enum.KeyCode.LeftBracket] = "[",
        [Enum.KeyCode.RightBracket] = "]",
        [Enum.KeyCode.RightParenthesis] = ")",
        [Enum.KeyCode.LeftParenthesis] = "(",
        [Enum.KeyCode.Semicolon] = ",",
        [Enum.KeyCode.Quote] = "'",
        [Enum.KeyCode.BackSlash] = "\\",
        [Enum.KeyCode.Comma] = ",",
        [Enum.KeyCode.Period] = ".",
        [Enum.KeyCode.Slash] = "/",
        [Enum.KeyCode.Asterisk] = "*",
        [Enum.KeyCode.Plus] = "+",
        [Enum.KeyCode.Period] = ".",
        [Enum.KeyCode.Backquote] = "`",
        [Enum.UserInputType.MouseButton1] = "MB1",
        [Enum.UserInputType.MouseButton2] = "MB2",
        [Enum.UserInputType.MouseButton3] = "MB3"
    };
    Connections = {};
    UIKey = Enum.KeyCode.End;
    Holder = nil,
}
local Flags = {};

function Library:New(Class, Properties)
    local _Instance = type(Class) == 'string' and Instance.new(Class) or Class
    if type(Properties) == 'table' then
        for Property, Value in next, Properties do
            _Instance[Property] = Value
        end
    end

    return _Instance
end
function Library:Tween(obj,goal,callback) -- // Tween an object function
    local Tween = TweenService:Create(obj,tweenInfo,goal)
    Tween:Play()
    Tween.Completed:Wait()
    callback()
end
function Library.NextFlag()
    Library.UnNamedFlags = Library.UnNamedFlags + 1
    return string.format("%.14g", Library.UnNamedFlags)
end
function Library:Connection(Signal, Callback)
    local Con = Signal:Connect(Callback)
    return Con
end
--
function Library:Disconnect(Connection)
    Connection:Disconnect()
end
--
function Library:IsMouseOverFrame(Frame)
    local AbsPos, AbsSize = Frame.AbsolutePosition, Frame.AbsoluteSize;

    if Mouse.X >= AbsPos.X and Mouse.X <= AbsPos.X + AbsSize.X
        and Mouse.Y >= AbsPos.Y and Mouse.Y <= AbsPos.Y + AbsSize.Y then

        return true;
    end;
end;
--
function Library:Round(Number, Float)
    return Float * math.floor(Number / Float)
end
local Holder = Library:New("ScreenGui", {
    Name = tostring(math.random(-10000,10000)),
    ResetOnSpawn = false,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
    Parent = game.CoreGui
})
Library.Holder = Holder
local fonts = {
    { ttf = "Proggy.ttf", json = "Proggy.json", url = "https://raw.githubusercontent.com/OxygenClub/Random-LUAS/main/Proggy.txt", name = "Proggy" },
    { ttf = "Minecraftia.ttf", json = "Minecraftia.json", url = "https://raw.githubusercontent.com/OxygenClub/Random-LUAS/main/Minecraftia.txt", name = "Minecraftia" },
    { ttf = "SmallestPixel7.ttf", json = "SmallestPixel7.json", url = "https://raw.githubusercontent.com/OxygenClub/Random-LUAS/main/Smallest%20Pixel.txt", name = "SmallestPixel7" },
    { ttf = "Verdana.ttf", json = "Verdana.json", url = "https://raw.githubusercontent.com/OxygenClub/Random-LUAS/main/Verdana.txt", name = "Verdana" },
    { ttf = "VerdanaBold.ttf", json = "VerdanaBold.json", url = "https://raw.githubusercontent.com/OxygenClub/Random-LUAS/main/Verdana%20Bold.txt", name = "VerdanaBold" },
    { ttf = "Tahoma.ttf", json = "Tahoma.json", url = "https://raw.githubusercontent.com/OxygenClub/Random-LUAS/main/Tahoma.txt", name = "Tahoma" },
    { ttf = "TahomaBold.ttf", json = "TahomaBold.json", url = "https://raw.githubusercontent.com/OxygenClub/Random-LUAS/main/Tahoma%20Bold.txt", name = "TahomaBold" }
}

for _, font in fonts do
    if not isfile(font.ttf) then
        writefile(font.ttf, base64_decode(game:HttpGet(font.url)))
    end

    if not isfile(font.json) then
        local fontConfig = {
            name = font.name,
            faces = {
                {
                    name = "Regular",
                    weight = 200,
                    style = "normal",
                    assetId = getcustomasset(font.ttf)
                }
            }
        }
        writefile(font.json, HttpService:JSONEncode(fontConfig))
    end


end

local DrawingFontsEnum = {
    [0] = Font.new(getcustomasset("Verdana.json"), Enum.FontWeight.Regular),
    [1] = Font.new(getcustomasset("SmallestPixel7.json"), Enum.FontWeight.Regular),
    [2] = Font.new(getcustomasset("Proggy.json"), Enum.FontWeight.Regular),
    [3] = Font.new(getcustomasset("Minecraftia.json"), Enum.FontWeight.Regular),
    [4] = Font.new(getcustomasset("VerdanaBold.json"), Enum.FontWeight.Regular),
    [5] = Font.new(getcustomasset("Tahoma.json"), Enum.FontWeight.Regular),
    [6] = Font.new(getcustomasset("TahomaBold.json"), Enum.FontWeight.Regular),
}

function GetFontFromIndex(fontIndex)
    return DrawingFontsEnum[fontIndex]
end

local Fonts = {
    ["Verdana"] = 0,
    ["Smallest Pixel-7"] = 1,
    ["Proggy"] = 2,
    ["Minecraftia"] = 3,
    ["Verdana Bold"] = 4,
    ["Tahoma"] = 5,
    ["Tahoma Bold"] = 6
}
function Library:Window(Properties)
    if not Properties then
        Properties = {}
    end

    local Window = {
        Name = Properties.Name or 'New Window',
        Icon = Properties.Icon or "rbxassetid://100735622281642"
    }

    -- StarterGui.newuilmfao.mainframe
    Window["2"] = Instance.new("Frame", Library.Holder);
    Window["2"]["BorderSizePixel"] = 2;
    Window["2"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
    Window["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    Window["2"]["Size"] = UDim2.new(0, 683, 0, 531);
    Window["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    Window["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    Window["2"]["Name"] = [[mainframe]];

    -- StarterGui.newuilmfao.mainframe.topbar
    Window["3"] = Instance.new("Frame", Window["2"]);
    Window["3"]["BorderSizePixel"] = 0;
    Window["3"]["BackgroundColor3"] = Color3.fromRGB(22, 22, 22);
    Window["3"]["Size"] = UDim2.new(1, 0, 0, 25);
    Window["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    Window["3"]["Name"] = [[topbar]];

    -- StarterGui.newuilmfao.mainframe.topbar.UIGradient
    Window["4"] = Instance.new("UIGradient", Window["3"]);
    Window["4"]["Rotation"] = 90;
    Window["4"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(18, 18, 18))};

    -- StarterGui.newuilmfao.mainframe.topbar.liner
    Window["5"] = Instance.new("Frame", Window["3"]);
    Window["5"]["BorderSizePixel"] = 0;
    Window["5"]["BackgroundColor3"] = Color3.fromRGB(48, 48, 48);
    Window["5"]["Size"] = UDim2.new(1, 0, 0, 1);
    Window["5"]["Position"] = UDim2.new(0, 0, 1, 0);
    Window["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    Window["5"]["Name"] = [[liner]];

    -- StarterGui.newuilmfao.mainframe.topbar.logo
    Window["6"] = Instance.new("ImageLabel", Window["3"]);
    Window["6"]["BorderSizePixel"] = 0;
    Window["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    Window["6"]["ScaleType"] = Enum.ScaleType.Fit;
    Window["6"]["ImageColor3"] = Library.Accent;
    Window["6"]["Image"] = Window.Icon;
    Window["6"]["Size"] = UDim2.new(0, 61, 0, 50);
    Window["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    Window["6"]["BackgroundTransparency"] = 1;
    Window["6"]["Name"] = [[logo]];
    Window["6"]["Position"] = UDim2.new(-0.02196, 0, -0.52, 0);

    -- StarterGui.newuilmfao.mainframe.topbar.title
    Window["7"] = Instance.new("TextLabel", Window["3"]);
    Window["7"]["TextStrokeTransparency"] = 0;
    Window["7"]["BorderSizePixel"] = 0;
    Window["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    Window["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    Window["7"]["TextSize"] = 12;
    Window["7"]["FontFace"] = GetFontFromIndex(2);
    Window["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    Window["7"]["BackgroundTransparency"] = 1;
    Window["7"]["RichText"] = true;
    Window["7"]["Size"] = UDim2.new(0, 185, 1, 0);
    Window["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    Window["7"]["Text"] = Window.Name;
    Window["7"]["Name"] = [[title]];
    Window["7"]["Position"] = UDim2.new(0, 35, 0, 0);

    local lbl = Window["7"]
    lbl.Text = ""
    
    local txt1 = "spectral"
    local clrTxt1 = ".lol"
    local fullTxt1 = txt1 .. '<font color="rgb(136, 144, 255)">' .. clrTxt1 .. '</font>'
    
    local txt2 = "discord.gg/spectral"
    
    local function tw(lbl, d, text, coloredText)
        lbl.Text = ""
        for i = 1, #text do
            lbl.Text = string.sub(text, 1, i)
            task.wait(d)
        end
        if coloredText then
            for i = 1, #coloredText do
                lbl.Text = text .. '<font color="rgb(136, 144, 255)">' .. string.sub(coloredText, 1, i) .. '</font>'
                task.wait(d)
            end
        end
        task.wait(1)
    end
    
    coroutine.wrap(function()
        while true do
            tw(lbl, 0.10, txt1, clrTxt1)
            lbl.Text = fullTxt1
            task.wait(1)
    
            lbl.Text = ""
            tw(lbl, 0.025, txt2)
            task.wait(1)
        end
    end)()
    
    -- StarterGui.newuilmfao.mainframe.topbar.linertwo
    Window["8"] = Instance.new("Frame", Window["3"]);
    Window["8"]["BorderSizePixel"] = 0;
    Window["8"]["BackgroundColor3"] = Color3.fromRGB(48, 48, 48);
    Window["8"]["Size"] = UDim2.new(0, 1, 1, 0);
    Window["8"]["Position"] = UDim2.new(0, 30, 0, 0);
    Window["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    Window["8"]["Name"] = [[linertwo]];

    -- StarterGui.newuilmfao.mainframe.topbar.linerthree
    Window["9"] = Instance.new("Frame", Window["3"]);
    Window["9"]["BorderSizePixel"] = 0;
    Window["9"]["BackgroundColor3"] = Color3.fromRGB(48, 48, 48);
    Window["9"]["Size"] = UDim2.new(0, 1, 1, 0);
    Window["9"]["Position"] = UDim2.new(0, 225, 0, 0);
    Window["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    Window["9"]["Name"] = [[linerthree]];

    -- StarterGui.newuilmfao.mainframe.topbar.tabholder
    Window["a"] = Instance.new("Frame", Window["3"]);
    Window["a"]["BorderSizePixel"] = 0;
    Window["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    Window["a"]["Size"] = UDim2.new(1, -230, 1, -4);
    Window["a"]["Position"] = UDim2.new(0, 230, 0, 2);
    Window["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    Window["a"]["Name"] = [[tabholder]];
    Window["a"]["BackgroundTransparency"] = 1;

    -- StarterGui.newuilmfao.mainframe.topbar.tabholder.UIListLayout
    Window["b"] = Instance.new("UIListLayout", Window["a"]);
    Window["b"]["Padding"] = UDim.new(0, 4);
    Window["b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
    Window["b"]["FillDirection"] = Enum.FillDirection.Horizontal;

    -- StarterGui.newuilmfao.mainframe.bottomtitle
    Window["8a"] = Instance.new("TextLabel", Window["2"]);
    Window["8a"]["TextStrokeTransparency"] = 0;
    Window["8a"]["BorderSizePixel"] = 0;
    Window["8a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    Window["8a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    Window["8a"]["TextSize"] = 12;
    Window["8a"]["FontFace"] = GetFontFromIndex(2);
    Window["8a"]["TextColor3"] = Color3.fromRGB(180, 180, 180);
    Window["8a"]["BackgroundTransparency"] = 1;
    Window["8a"]["RichText"] = true;
    Window["8a"]["AnchorPoint"] = Vector2.new(0, 1);
    Window["8a"]["Size"] = UDim2.new(1, -18, 0, 20);
    Window["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    Window["8a"]["Text"] = '';
    Window["8a"]["Name"] = [[bottomtitle]];
    Window["8a"]["Position"] = UDim2.new(0, 9, 1, 0);

    local lbl2 = Window["8a"]
    lbl2.Text = ""

    local txt2 = "build: [ "
    local clrTxt2 = "beta"
    local fullTxt2 = txt2 .. '<font color="rgb(136, 144, 255)">' .. clrTxt2 .. '</font> ]'

    local function tw(lbl, d)
        lbl.Text = ""
        for i = 1, #txt2 do
            lbl.Text = string.sub(txt2, 1, i)
            task.wait(d)
        end
        for i = 1, #clrTxt2 do
            lbl.Text = txt2 .. '<font color="rgb(136, 144, 255)">' .. string.sub(clrTxt2, 1, i) .. '</font>'
            task.wait(d)
        end
        lbl.Text = lbl.Text .. " ]"
        task.wait(1)
    end

    coroutine.wrap(function()
        while true do
            tw(lbl2, 0.10)
        end
    end)()
    
    -- StarterGui.newuilmfao.mainframe.inline
    Window["24"] = Instance.new("Frame", Window["2"]);
    Window["24"]["BorderSizePixel"] = 2;
    Window["24"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
    Window["24"]["Size"] = UDim2.new(1, -18, 1, -55);
    Window["24"]["Position"] = UDim2.new(0, 9, 0, 35);
    Window["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    Window["24"]["Name"] = [[inline]];

    -- StarterGui.newuilmfao.mainframe.inline.UIStroke
    Window["25"] = Instance.new("UIStroke", Window["24"]);
    Window["25"]["Color"] = Color3.fromRGB(56, 56, 56);

    -- StarterGui.newuilmfao.mainframe.inline.content
    Window["26"] = Instance.new("Frame", Window["24"]);
    Window["26"]["BorderSizePixel"] = 0;
    Window["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    Window["26"]["Size"] = UDim2.new(1, 0, 1, 0);
    Window["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    Window["26"]["Name"] = [[content]];
    Window["26"]["BackgroundTransparency"] = 1;

        -- StarterGui.tfremake.notificationholders
    Window["69"] = Instance.new("Frame", Window["1"]);
    Window["69"]["BorderSizePixel"] = 0;
    Window["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    Window["69"]["Size"] = UDim2.new(0.26, 0, 0.95, 0);
    Window["69"]["Position"] = UDim2.new(0, 5, 0, 25);
    Window["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    Window["69"]["Name"] = [[notificationholders]];
    Window["69"]["BackgroundTransparency"] = 1;
    
        -- StarterGui.tfremake.notificationholders.UIListLayout
    Window["6a"] = Instance.new("UIListLayout", Window["69"]);
    Window["6a"]["Padding"] = UDim.new(0, 8);
    Window["6a"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
    Window["6a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    local gui = Window["2"]
    local dragInput, dragStart, startPos

    local function update(input)
        local delta = input.Position - dragStart
        TweenService:Create(gui, TweenInfo.new(0.047, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)}):Play()
    end

    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Library.Dragging = true
            dragStart = input.Position
            startPos = gui.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    Library.Dragging = false
                end
            end)
        end
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and Library.Dragging then
            update(input)
        end
    end)

    local notificationYPos = 0 -- Tracks the Y position for stacking notifications

function Window:Notify(text, duration)
    local notification = {
        Name = text,
        Duration = duration
    }

    notification["6b"] = Instance.new("Frame", Library.Holder);
    notification["6b"]["BorderSizePixel"] = 2;
    notification["6b"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
    notification["6b"]["AutomaticSize"] = Enum.AutomaticSize.X;
    notification["6b"]["Size"] = UDim2.new(0, 0, 0, 15);
    notification["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    notification["6b"]["Name"] = [[notification]];
    notification["6b"].Visible = false 
    notification["6b"]["BackgroundTransparency"] = 1
    notification["6b"].Position = UDim2.new(0.5, 0, 0, notificationYPos) -- Set Y position based on current stack
    notificationYPos = notificationYPos + 20 -- Increment Y position for the next notification

    notification["6c"] = Instance.new("UIStroke", notification["6b"]);
    notification["6c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    notification["6c"]["Color"] = Color3.fromRGB(56, 56, 56);

    notification["6d"] = Instance.new("Frame", notification["6b"]);
    notification["6d"]["BorderSizePixel"] = 0;
    notification["6d"]["BackgroundColor3"] = Library.Accent;
    notification["6d"]["AnchorPoint"] = Vector2.new(0.5, 0);
    notification["6d"]["Size"] = UDim2.new(1, 0, 0, 1);
    notification["6d"]["Position"] = UDim2.new(0.5, 0, 0, 0);
    notification["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    notification["6d"]["Name"] = [[liner]];
    notification["6d"].Visible = false 
    notification["6d"]["BackgroundTransparency"] = 1

    notification["6e"] = Instance.new("TextLabel", notification["6b"]);
    notification["6e"]["BorderSizePixel"] = 0;
    notification["6e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    notification["6e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    notification["6e"]["TextSize"] = 12;
    notification["6e"]["FontFace"] = GetFontFromIndex(2)
    notification["6e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    notification["6e"]["BackgroundTransparency"] = 1;
    notification["6e"]["RichText"] = true;
    notification["6e"]["Size"] = UDim2.new(1, 0, 1, 0);
    notification["6e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    notification["6e"]["Text"] = notification.Name;
    notification["6e"]["AutomaticSize"] = Enum.AutomaticSize.X;
    notification["6e"]["Name"] = [[text]];
    notification["6e"].Visible = false 
    notification["6e"]["TextTransparency"] = 1

    notification["6f"] = Instance.new("UIPadding", notification["6e"]);
    notification["6f"]["PaddingLeft"] = UDim.new(0, 8);

    notification["6b"].Visible = true
    notification["6d"].Visible = true
    notification["6e"].Visible = true

    task.spawn(function()
        local w = TweenService:Create(notification["6b"], tweenInfo, {BackgroundTransparency = 0})
        w:Play()
        w.Completed:Wait()

        local s = TweenService:Create(notification["6d"], tweenInfo, {BackgroundTransparency = 0})
        s:Play()
        s.Completed:Wait()

        local f = TweenService:Create(notification["6e"], tweenInfo, {TextTransparency = 0})
        f:Play()
        f.Completed:Wait()

        local g = TweenService:Create(notification["6d"], TweenInfo.new(notification.Duration, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 0, 0, 1)})
        g:Play()
        g.Completed:Wait()

        local f = TweenService:Create(notification["6e"], tweenInfo, {TextTransparency = 1})
        f:Play()
        f.Completed:Wait()

        local w = TweenService:Create(notification["6b"], tweenInfo, {BackgroundTransparency = 1})
        w:Play()
        w.Completed:Wait()

        notification["6b"]:Destroy()
        notificationYPos = notificationYPos - 20
    end)
end

    function Window:InitializeWatermark()
        local watermark = {}

        local frameTimer = tick()
        local framecount = 0 
        local FPS  = 60
        -- StarterGui.tfremake.watermark
        watermark["62"] = Instance.new("Frame", Library.Holder);
        watermark["62"]["BorderSizePixel"] = 2;
        watermark["62"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
        watermark["62"]["AutomaticSize"] = Enum.AutomaticSize.X;
        watermark["62"]["Size"] = UDim2.new(0, 380, 0, 19);
        watermark["62"]["Position"] = UDim2.new(0, 12, 0, 10);
        watermark["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        watermark["62"]["Name"] = [[watermark]];

        -- StarterGui.tfremake.watermark.liner
        watermark["63"] = Instance.new("Frame", watermark["62"]);
        watermark["63"]["BorderSizePixel"] = 0;
        watermark["63"]["BackgroundColor3"] = Library.Accent;
        watermark["63"]["Size"] = UDim2.new(1, 0, 0, 1);
        watermark["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        watermark["63"]["Name"] = [[liner]];

        -- StarterGui.tfremake.watermark.liner2
        watermark["64"] = Instance.new("Frame", watermark["62"]);
        watermark["64"]["BorderSizePixel"] = 0;
        watermark["64"]["BackgroundColor3"] = Library.Accent;
        watermark["64"]["Size"] = UDim2.new(0, 1, 1, 0);
        watermark["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        watermark["64"]["Name"] = [[liner2]];

        -- StarterGui.tfremake.watermark.UIGradient
        watermark["65"] = Instance.new("UIGradient", watermark["62"]);
        watermark["65"]["Rotation"] = 90;
        watermark["65"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(103, 103, 103))};

        -- StarterGui.tfremake.watermark.UIStroke
        watermark["66"] = Instance.new("UIStroke", watermark["62"]);
        watermark["66"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
        watermark["66"]["Color"] = Color3.fromRGB(56, 56, 56);

        -- StarterGui.tfremake.watermark.text
        watermark["67"] = Instance.new("TextLabel", watermark["62"]);
        watermark["67"]["BorderSizePixel"] = 0;
        watermark["67"]["TextXAlignment"] = Enum.TextXAlignment.Left;
        watermark["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        watermark["67"]["TextSize"] = 12;
        watermark["67"]["FontFace"] = GetFontFromIndex(2)
        watermark["67"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
        watermark["67"]["BackgroundTransparency"] = 1;
        watermark["67"]["RichText"] = true;
        watermark["67"]["Size"] = UDim2.new(1, 0, 1, 0);
        watermark["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        watermark["67"]["Text"] = "";
        watermark["67"]["Name"] = [[text]];

        -- StarterGui.tfremake.watermark.text.UIPadding
        watermark["68"] = Instance.new("UIPadding", watermark["67"]);
        watermark["68"]["PaddingLeft"] = UDim.new(0, 5);

        local watermarkConnection = RunService.RenderStepped:Connect(function()

            framecount += 1

            if (tick() - frameTimer) >= 1 then
                FPS = framecount;
                frameTimer = tick();
                framecount = 0;
            end;
            
            watermark["67"].Text = ('spectral<font color="rgb(124, 159, 255)">.cc</font> | build: [ beta ]  | fps: %s, ping: %s'):format(
                math.floor(FPS),
                math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
            )
        end)

        function watermark:SetVisible(bool)
            watermark["62"].Visible = bool
        end
        watermark:SetVisible(true)
    end

    function Window:Tab(Properties)
        if not Properties then
            Properties = {}
        end

        local Tab = {
            Name = Properties.Name or 'New Tab',
            Active = false,
            Hovered = false
        }

        -- StarterGui.newuilmfao.mainframe.topbar.tabholder.inactive
        Tab["20"] = Instance.new("TextButton", Window["a"]);
        Tab["20"]["TextStrokeTransparency"] = 0;
        Tab["20"]["BorderSizePixel"] = 0;
        Tab["20"]["AutoButtonColor"] = false;
        Tab["20"]["TextTransparency"] = 0.46;
        Tab["20"]["TextSize"] = 12;
        Tab["20"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
        Tab["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        Tab["20"]["FontFace"] = GetFontFromIndex(2)
        Tab["20"]["Size"] = UDim2.new(0, 60, 1, 0);
        Tab["20"]["BackgroundTransparency"] = 1;
        Tab["20"]["Name"] = [[inactive]];
        Tab["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        Tab["20"]["Text"] = Tab.Name;

        -- StarterGui.newuilmfao.mainframe.topbar.tabholder.inactive.liner
        Tab["21"] = Instance.new("Frame", Tab["20"]);
        Tab["21"]["BorderSizePixel"] = 0;
        Tab["21"]["BackgroundColor3"] = Color3.fromRGB(59, 59, 59);
        Tab["21"]["AnchorPoint"] = Vector2.new(0, 1);
        Tab["21"]["Size"] = UDim2.new(1, 0, 0, 1);
        Tab["21"]["Position"] = UDim2.new(0, 0, 1, 0);
        Tab["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        Tab["21"]["Name"] = [[liner]];

        -- StarterGui.newuilmfao.mainframe.topbar.tabholder.inactive.fadething
        Tab["22"] = Instance.new("Frame", Tab["20"]);
        Tab["22"]["BorderSizePixel"] = 0;
        Tab["22"]["BackgroundColor3"] = Library.Accent;
        Tab["22"]["AnchorPoint"] = Vector2.new(0, 1);
        Tab["22"]["Size"] = UDim2.new(1, 0, 0, 15);
        Tab["22"]["Position"] = UDim2.new(0, 0, 1, 0);
        Tab["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        Tab["22"]["Name"] = [[fadething]];
        Tab["22"]["BackgroundTransparency"] = 1;

        -- StarterGui.newuilmfao.mainframe.topbar.tabholder.inactive.fadething.UIGradient
        Tab["23"] = Instance.new("UIGradient", Tab["22"]);
        Tab["23"]["Rotation"] = -90;
        Tab["23"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.102, 0.71875),NumberSequenceKeypoint.new(0.430, 0.825),NumberSequenceKeypoint.new(1.000, 1)};

        -- StarterGui.newuilmfao.mainframe.inline.content.tab
        Tab["27"] = Instance.new("Frame", Window["26"]);
        Tab["27"]["BorderSizePixel"] = 0;
        Tab["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        Tab["27"]["Size"] = UDim2.new(1, 0, 1, 0);
        Tab["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        Tab["27"]["Name"] = [[tab]];
        Tab["27"]["BackgroundTransparency"] = 1;
        Tab["27"].Visible =false

        -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders
        Tab["28"] = Instance.new("ScrollingFrame", Tab["27"]);
        Tab["28"]["Active"] = true;
        Tab["28"]["BorderSizePixel"] = 0;
        Tab["28"]["ElasticBehavior"] = Enum.ElasticBehavior.Always;
        Tab["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        Tab["28"]["Name"] = [[sectionholders]];
        Tab["28"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
        Tab["28"]["Size"] = UDim2.new(1, 0, 1, 0);
        Tab["28"]["ScrollBarImageColor3"] = Library.Accent;
        Tab["28"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
        Tab["28"]["ScrollBarThickness"] = 1;
        Tab["28"]["BackgroundTransparency"] = 1;

        -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left
        Tab["29"] = Instance.new("Frame", Tab["28"]);
        Tab["29"]["BorderSizePixel"] = 0;
        Tab["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        Tab["29"]["Size"] = UDim2.new(0.48, 0, 1, 0);
        Tab["29"]["Position"] = UDim2.new(0, 7, 0, 10);
        Tab["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        Tab["29"]["Name"] = [[left]];
        Tab["29"]["BackgroundTransparency"] = 1;

        -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.UIListLayout
        Tab["2a"] = Instance.new("UIListLayout", Tab["29"]);
        Tab["2a"]["Padding"] = UDim.new(0, 8);
        Tab["2a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

        -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.right
        Tab["88"] = Instance.new("Frame", Tab["28"]);
        Tab["88"]["BorderSizePixel"] = 0;
        Tab["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        Tab["88"]["AnchorPoint"] = Vector2.new(1, 0);
        Tab["88"]["Size"] = UDim2.new(0.48, 0, 1, 0);
        Tab["88"]["Position"] = UDim2.new(1, -7, 0, 10);
        Tab["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        Tab["88"]["Name"] = [[right]];
        Tab["88"]["BackgroundTransparency"] = 1;

        -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.right.UIListLayout
        Tab["89"] = Instance.new("UIListLayout", Tab["88"]);
        Tab["89"]["Padding"] = UDim.new(0, 8);
        Tab["89"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


        Tab["20"].MouseEnter:Connect(function()
            Tab.Hovered = true 
            TweenService:Create(Tab["20"],tweenInfo, {TextTransparency = 0}):Play()
        end)

        Tab["20"].MouseLeave:Connect(function()
            Tab.Hovered = false
            if not Tab.Active then
                TweenService:Create(Tab["20"],tweenInfo, {TextTransparency = 0.46}):Play()
            end
        end)

        function Tab:Switch(Bool)
            Tab.Active = Bool 
            Tab["27"].Visible = Bool
            TweenService:Create(Tab["20"],tweenInfo, {TextTransparency = 0}):Play()
            TweenService:Create(Tab["21"],tweenInfo, {BackgroundColor3 = Library.Accent}):Play()
            TweenService:Create(Tab["22"],tweenInfo, {BackgroundTransparency = 0}):Play()
            if Bool then
                Tab["27"].Visible = true
                TweenService:Create(Tab["20"],tweenInfo, {TextTransparency = 0}):Play()
                TweenService:Create(Tab["21"],tweenInfo, {BackgroundColor3 = Library.Accent}):Play()
                TweenService:Create(Tab["22"],tweenInfo, {BackgroundTransparency = 0}):Play()
            elseif not Tab.Hovered then
                Tab["27"].Visible = false 
                TweenService:Create(Tab["20"],tweenInfo, {TextTransparency = 0.46}):Play()
                TweenService:Create(Tab["21"],tweenInfo, {BackgroundColor3 = Color3.fromRGB(59, 59, 59)}):Play()
                TweenService:Create(Tab["22"],tweenInfo, {BackgroundTransparency = 1}):Play()
            end
        end

        Tab["20"].MouseButton1Click:Connect(function()
            for _, v in pairs(Library.Tabs) do
                v:Switch(v == Tab)
            end
        end)

        function Tab:Section(Properties)
            if not Properties then
                Properties = {}
            end

            local Section = {
                Name = Properties.Name or 'New Section',
                Side = Properties.Side or 'Left'
            }

            -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section
            Section["2b"] = Instance.new("Frame", Tab["29"]);
            Section["2b"]["BorderSizePixel"] = 2;
            Section["2b"]["BackgroundColor3"] = Color3.fromRGB(17, 17, 17);
            Section["2b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
            Section["2b"]["Size"] = UDim2.new(1, 0, 0, 35);
            Section["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
            Section["2b"]["Name"] = [[section]];

            -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.UIStroke
            Section["2c"] = Instance.new("UIStroke", Section["2b"]);
            Section["2c"]["Color"] = Color3.fromRGB(56, 56, 56);

            -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.topbar
            Section["2d"] = Instance.new("Frame", Section["2b"]);
            Section["2d"]["BorderSizePixel"] = 0;
            Section["2d"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
            Section["2d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
            Section["2d"]["Size"] = UDim2.new(1, 0, 0, 18);
            Section["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
            Section["2d"]["Name"] = [[topbar]];

            -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.topbar.UIGradient
            Section["2e"] = Instance.new("UIGradient", Section["2d"]);
            Section["2e"]["Rotation"] = 90;
            Section["2e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(92, 92, 92))};

            -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.topbar.title
            Section["2f"] = Instance.new("TextLabel", Section["2d"]);
            Section["2f"]["TextStrokeTransparency"] = 0;
            Section["2f"]["BorderSizePixel"] = 0;
            Section["2f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
            Section["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
            Section["2f"]["TextSize"] = 12;
            Section["2f"]["FontFace"] = GetFontFromIndex(2);
            Section["2f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
            Section["2f"]["BackgroundTransparency"] = 1;
            Section["2f"]["Size"] = UDim2.new(1, 0, 1, 0);
            Section["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
            Section["2f"]["Text"] = Section.Name;
            Section["2f"]["Name"] = [[title]];
            Section["2f"]["Position"] = UDim2.new(0, 5, 0, 0);

            -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.topbar.liner
            Section["30"] = Instance.new("Frame", Section["2d"]);
            Section["30"]["BorderSizePixel"] = 0;
            Section["30"]["BackgroundColor3"] = Color3.fromRGB(48, 48, 48);
            Section["30"]["Size"] = UDim2.new(1, 0, 0, 1);
            Section["30"]["Position"] = UDim2.new(0, 0, 1, 0);
            Section["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
            Section["30"]["Name"] = [[liner]];

            -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content
            Section["31"] = Instance.new("Frame", Section["2b"]);
            Section["31"]["BorderSizePixel"] = 0;
            Section["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
            Section["31"]["Size"] = UDim2.new(0.06, 0, 1, -20);
            Section["31"]["Position"] = UDim2.new(0, 7, 0, 25);
            Section["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
            Section["31"]["Name"] = [[content]];
            Section["31"]["BackgroundTransparency"] = 1;

            -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.UIListLayout
            Section["32"] = Instance.new("UIListLayout", Section["31"]);
            Section["32"]["Padding"] = UDim.new(0, 6);
            Section["32"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

            if Section.Side == "left" or Section.Side == "Left" then
                Section["2b"].Parent = Tab["29"]
            elseif Section.Side == "right" or Section.Side == "Right" then
                Section["2b"].Parent = Tab["88"]
            end

            function Section:Toggle(Properties)
                if not Properties then
                    Properties = {}
                end

                local Toggle = {
                    Name = Properties.Name or 'New Toggle',
                    State = Properties.Default or false,
                    Callback = Properties.Callback or function() end ,
                    Flag = Properties.Flag or Library:NextFlag()
                }

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.toggle
                Toggle["33"] = Instance.new("Frame", Section["31"]);
                Toggle["33"]["BorderSizePixel"] = 0;
                Toggle["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                Toggle["33"]["Size"] = UDim2.new(0, 305, 0, 12);
                Toggle["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Toggle["33"]["Name"] = [[toggle]];
                Toggle["33"]["BackgroundTransparency"] = 1;

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.toggle.indicator
                Toggle["34"] = Instance.new("TextButton", Toggle["33"]);
                Toggle["34"]["BorderSizePixel"] = 2;
                Toggle["34"]["AutoButtonColor"] = false;
                Toggle["34"]["TextSize"] = 12;
                Toggle["34"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
                Toggle["34"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
                Toggle["34"]["FontFace"] = GetFontFromIndex(2)
                Toggle["34"]["Size"] = UDim2.new(0, 12, 0, 12);
                Toggle["34"]["Name"] = [[indicator]];
                Toggle["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Toggle["34"]["Text"] = [[]];

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.toggle.indicator.UIStroke
                Toggle["35"] = Instance.new("UIStroke", Toggle["34"]);
                Toggle["35"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                Toggle["35"]["Color"] = Color3.fromRGB(56, 56, 56);

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.toggle.indicator.UIGradient
                Toggle["36"] = Instance.new("UIGradient", Toggle["34"]);
                Toggle["36"]["Rotation"] = 90;
                Toggle["36"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(159, 159, 159))};

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.toggle.text
                Toggle["37"] = Instance.new("TextLabel", Toggle["33"]);
                Toggle["37"]["TextWrapped"] = true;
                Toggle["37"]["TextStrokeTransparency"] = 0;
                Toggle["37"]["BorderSizePixel"] = 0;
                Toggle["37"]["TextXAlignment"] = Enum.TextXAlignment.Left;
                Toggle["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                Toggle["37"]["TextSize"] = 12;
                Toggle["37"]["FontFace"] = GetFontFromIndex(2)
                Toggle["37"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
                Toggle["37"]["BackgroundTransparency"] = 1;
                Toggle["37"]["Size"] = UDim2.new(1, 0, 1, 0);
                Toggle["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Toggle["37"]["Text"] = Toggle.Name;
                Toggle["37"]["Name"] = [[text]];
                Toggle["37"]["Position"] = UDim2.new(0, 18, 0, 0);

                Toggle["34"].MouseEnter:Connect(function()
                    TweenService:Create(Toggle["34"],tweenInfo,{BackgroundColor3 = Library.Accent}):Play()
                end)

                Toggle["34"].MouseLeave:Connect(function()
                    if not Toggle.State then
                        TweenService:Create(Toggle["34"],tweenInfo,{BackgroundColor3 = Color3.fromRGB(13,13,13)}):Play()
                    end
                end)

                local function SetState()
                    Toggle.State = not Toggle.State
                        if Toggle.State then
                            TweenService:Create(Toggle["34"],tweenInfo,{BackgroundColor3 = Library.Accent}):Play()
                        else
                            TweenService:Create(Toggle["34"],tweenInfo,{BackgroundColor3 = Color3.fromRGB(18,18,18)}):Play()
                        end
                    Library.Flags[Toggle.Flag] = Toggle.State
                    Toggle.Callback(Toggle.State)
                end

                function Toggle.Set(bool)
                    bool = type(bool) == "boolean" and bool or false
                    if Toggle.State ~= bool then
                        SetState()
                    end
                end
                --
                Library:Connection(Toggle["34"].MouseButton1Down,SetState)

                function Toggle:Colorpicker(Properties)
                    if not Properties then
                        Properties = {}
                    end

                    local Colorpicker = {
                        Name = Properties.Name or 'new picker',
                        State = Properties.Default or Color3.fromRGB(255,0,0),
                        Flag = Properties.Flag or Library:NextFlag(),
                        Alpha = Properties.Alpha or 1,
                        Callback = Properties.Callback or function() end
                    }
                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.color
                    Colorpicker["5c"] = Instance.new("TextButton", Toggle["33"]);
                    Colorpicker["5c"]["BorderSizePixel"] = 0;
                    Colorpicker["5c"]["AutoButtonColor"] = false;
                    Colorpicker["5c"]["TextSize"] = 14;
                    Colorpicker["5c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
                    Colorpicker["5c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
                    Colorpicker["5c"]["AnchorPoint"] = Vector2.new(1, 0);
                    Colorpicker["5c"]["Size"] = UDim2.new(0, 21, 0, 11);
                    Colorpicker["5c"]["Name"] = [[color]];
                    Colorpicker["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["5c"]["Text"] = [[]];
                    Colorpicker["5c"]["Position"] = UDim2.new(1, 0, 0, 0);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.color.UIGradient
                    Colorpicker["5d"] = Instance.new("UIGradient", Colorpicker["5c"]);
                    Colorpicker["5d"]["Rotation"] = 90;
                    Colorpicker["5d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(133, 133, 133))};

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.color.UIStroke
                    Colorpicker["5e"] = Instance.new("UIStroke", Colorpicker["5c"]);
                    Colorpicker["5e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window
                    Colorpicker["5f"] = Instance.new("Frame", Colorpicker["5c"]);
                    Colorpicker["5f"]["Visible"] = false;
                    Colorpicker["5f"]["BorderSizePixel"] = 0;
                    Colorpicker["5f"]["BackgroundColor3"] = Color3.fromRGB(19, 19, 19);
                    Colorpicker["5f"]["AnchorPoint"] = Vector2.new(1, 0);
                    Colorpicker["5f"]["Size"] = UDim2.new(0, 200, 0, 205);
                    Colorpicker["5f"]["Position"] = UDim2.new(1, -5, 0, 15);
                    Colorpicker["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["5f"]["Name"] = [[window]];

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.UIStroke
                    Colorpicker["60"] = Instance.new("UIStroke", Colorpicker["5f"]);
                    Colorpicker["60"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                    Colorpicker["60"]["Color"] = Color3.fromRGB(48, 48, 48);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.color
                    Colorpicker["61"] = Instance.new("TextButton", Colorpicker["5f"]);
                    Colorpicker["61"]["BorderSizePixel"] = 0;
                    Colorpicker["61"]["AutoButtonColor"] = false;
                    Colorpicker["61"]["TextSize"] = 14;
                    Colorpicker["61"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["61"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
                    Colorpicker["61"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
                    Colorpicker["61"]["Size"] = UDim2.new(0, 170, 0, 130);
                    Colorpicker["61"]["Name"] = [[color]];
                    Colorpicker["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["61"]["Text"] = [[]];
                    Colorpicker["61"]["Position"] = UDim2.new(0, 6, 0, 6);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.color.sat
                    Colorpicker["62"] = Instance.new("ImageLabel", Colorpicker["61"]);
                    Colorpicker["62"]["BorderSizePixel"] = 0;
                    Colorpicker["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                    Colorpicker["62"]["Image"] = [[http://www.roblox.com/asset/?id=14684562507]];
                    Colorpicker["62"]["Size"] = UDim2.new(1, 0, 1, 0);
                    Colorpicker["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["62"]["BackgroundTransparency"] = 1;
                    Colorpicker["62"]["Name"] = [[sat]];

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.color.val
                    Colorpicker["63"] = Instance.new("ImageLabel", Colorpicker["61"]);
                    Colorpicker["63"]["BorderSizePixel"] = 0;
                    Colorpicker["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                    Colorpicker["63"]["Image"] = [[http://www.roblox.com/asset/?id=14684563800]];
                    Colorpicker["63"]["Size"] = UDim2.new(1, 0, 1, 0);
                    Colorpicker["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["63"]["BackgroundTransparency"] = 1;
                    Colorpicker["63"]["Name"] = [[val]];

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.color.UIStroke
                    Colorpicker["64"] = Instance.new("UIStroke", Colorpicker["61"]);
                    Colorpicker["64"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.color.dragger
                    Colorpicker["65"] = Instance.new("Frame", Colorpicker["61"]);
                    Colorpicker["65"]["BorderSizePixel"] = 0;
                    Colorpicker["65"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                    Colorpicker["65"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
                    Colorpicker["65"]["Size"] = UDim2.new(0, 3, 0, 3);
                    Colorpicker["65"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
                    Colorpicker["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["65"]["Name"] = [[dragger]];

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.color.dragger.UIStroke
                    Colorpicker["66"] = Instance.new("UIStroke", Colorpicker["65"]);
                    Colorpicker["66"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.hue
                    Colorpicker["67"] = Instance.new("ImageButton", Colorpicker["5f"]);
                    Colorpicker["67"]["BorderSizePixel"] = 0;
                    Colorpicker["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                    Colorpicker["67"]["Image"] = [[http://www.roblox.com/asset/?id=14684557999]];
                    Colorpicker["67"]["Size"] = UDim2.new(0, 10, 0, 130);
                    Colorpicker["67"]["Name"] = [[hue]];
                    Colorpicker["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["67"]["Position"] = UDim2.new(1, -16, 0, 6);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.hue.UIStroke
                    Colorpicker["68"] = Instance.new("UIStroke", Colorpicker["67"]);
                    Colorpicker["68"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.hue.dragger
                    Colorpicker["69"] = Instance.new("Frame", Colorpicker["67"]);
                    Colorpicker["69"]["BorderSizePixel"] = 0;
                    Colorpicker["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                    Colorpicker["69"]["Size"] = UDim2.new(1, 0, 0, 2);
                    Colorpicker["69"]["Position"] = UDim2.new(0, 0, 0, 5);
                    Colorpicker["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["69"]["Name"] = [[dragger]];

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.hue.dragger.UIStroke
                    Colorpicker["6a"] = Instance.new("UIStroke", Colorpicker["69"]);
                    Colorpicker["6a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.alpha
                    Colorpicker["6b"] = Instance.new("ImageButton", Colorpicker["5f"]);
                    Colorpicker["6b"]["BorderSizePixel"] = 0;
                    Colorpicker["6b"]["AutoButtonColor"] = false;
                    Colorpicker["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                    Colorpicker["6b"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
                    Colorpicker["6b"]["Size"] = UDim2.new(1, -30, 0, 10);
                    Colorpicker["6b"]["Name"] = [[alpha]];
                    Colorpicker["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["6b"]["Position"] = UDim2.new(0, 6, 1, -65);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.alpha.UIStroke
                    Colorpicker["6c"] = Instance.new("UIStroke", Colorpicker["6b"]);
                    Colorpicker["6c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.alpha.checkers
                    Colorpicker["6d"] = Instance.new("ImageLabel", Colorpicker["6b"]);
                    Colorpicker["6d"]["BorderSizePixel"] = 0;
                    Colorpicker["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                    Colorpicker["6d"]["ScaleType"] = Enum.ScaleType.Tile;
                    Colorpicker["6d"]["Image"] = [[http://www.roblox.com/asset/?id=18274452449]];
                    Colorpicker["6d"]["TileSize"] = UDim2.new(0, 6, 0, 6);
                    Colorpicker["6d"]["Size"] = UDim2.new(1, -2, 1, -2);
                    Colorpicker["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["6d"]["BackgroundTransparency"] = 1;
                    Colorpicker["6d"]["Name"] = [[checkers]];
                    Colorpicker["6d"]["Position"] = UDim2.new(0, 1, 0, 1);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.alpha.checkers.UIGradient
                    Colorpicker["6e"] = Instance.new("UIGradient", Colorpicker["6d"]);
                    Colorpicker["6e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.alpha.UIGradient
                    Colorpicker["6f"] = Instance.new("UIGradient", Colorpicker["6b"]);
                    Colorpicker["6f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.alpha.dragger
                    Colorpicker["70"] = Instance.new("Frame", Colorpicker["6b"]);
                    Colorpicker["70"]["BorderSizePixel"] = 0;
                    Colorpicker["70"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                    Colorpicker["70"]["Size"] = UDim2.new(0, 2, 1, 0);
                    Colorpicker["70"]["Position"] = UDim2.new(0, 5, 0, 0);
                    Colorpicker["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["70"]["Name"] = [[dragger]];

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.alpha.dragger.UIStroke
                    Colorpicker["71"] = Instance.new("UIStroke", Colorpicker["70"]);
                    Colorpicker["71"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.selectedcolor
                    Colorpicker["72"] = Instance.new("Frame", Colorpicker["5f"]);
                    Colorpicker["72"]["BorderSizePixel"] = 0;
                    Colorpicker["72"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 5);
                    Colorpicker["72"]["AnchorPoint"] = Vector2.new(1, 0);
                    Colorpicker["72"]["Size"] = UDim2.new(0, 10, 0, 10);
                    Colorpicker["72"]["Position"] = UDim2.new(1, -6, 1, -65);
                    Colorpicker["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["72"]["Name"] = [[selectedcolor]];

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.selectedcolor.UIGradient
                    Colorpicker["73"] = Instance.new("UIGradient", Colorpicker["72"]);
                    Colorpicker["73"]["Rotation"] = 90;
                    Colorpicker["73"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(159, 159, 159))};

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.selectedcolor.UIStroke
                    Colorpicker["74"] = Instance.new("UIStroke", Colorpicker["72"]);
                    Colorpicker["74"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                    Colorpicker["74"]["Color"] = Color3.fromRGB(56, 56, 56);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.rgb
                    Colorpicker["75"] = Instance.new("TextLabel", Colorpicker["5f"]);
                    Colorpicker["75"]["BorderSizePixel"] = 2;
                    Colorpicker["75"]["BackgroundColor3"] = Color3.fromRGB(14, 14, 14);
                    Colorpicker["75"]["TextSize"] = 12;
                    Colorpicker["75"]["FontFace"] = GetFontFromIndex(2)
                    Colorpicker["75"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
                    Colorpicker["75"]["RichText"] = true;
                    Colorpicker["75"]["Size"] = UDim2.new(0, 90, 0, 15);
                    Colorpicker["75"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["75"]["Text"] = [[255,0,0]];
                    Colorpicker["75"]["Name"] = [[rgb]];
                    Colorpicker["75"]["Position"] = UDim2.new(0, 6, 1, -50);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.rgb.UIStroke
                    Colorpicker["76"] = Instance.new("UIStroke", Colorpicker["75"]);
                    Colorpicker["76"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                    Colorpicker["76"]["Color"] = Color3.fromRGB(56, 56, 56);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.hex
                    Colorpicker["77"] = Instance.new("TextLabel", Colorpicker["5f"]);
                    Colorpicker["77"]["BorderSizePixel"] = 2;
                    Colorpicker["77"]["BackgroundColor3"] = Color3.fromRGB(14, 14, 14);
                    Colorpicker["77"]["TextSize"] = 12;
                    Colorpicker["77"]["FontFace"] = GetFontFromIndex(2);
                    Colorpicker["77"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
                    Colorpicker["77"]["RichText"] = true;
                    Colorpicker["77"]["AnchorPoint"] = Vector2.new(1, 0);
                    Colorpicker["77"]["Size"] = UDim2.new(0, 90, 0, 15);
                    Colorpicker["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["77"]["Text"] = [[#ff0000]];
                    Colorpicker["77"]["Name"] = [[hex]];
                    Colorpicker["77"]["Position"] = UDim2.new(1, -6, 1, -50);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.hex.UIStroke
                    Colorpicker["78"] = Instance.new("UIStroke", Colorpicker["77"]);
                    Colorpicker["78"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                    Colorpicker["78"]["Color"] = Color3.fromRGB(56, 56, 56);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.copyrgb
                    Colorpicker["79"] = Instance.new("TextButton", Colorpicker["5f"]);
                    Colorpicker["79"]["TextStrokeTransparency"] = 0;
                    Colorpicker["79"]["BorderSizePixel"] = 2;
                    Colorpicker["79"]["AutoButtonColor"] = false;
                    Colorpicker["79"]["TextSize"] = 12;
                    Colorpicker["79"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
                    Colorpicker["79"]["BackgroundColor3"] = Color3.fromRGB(14, 14, 14);
                    Colorpicker["79"]["FontFace"] = GetFontFromIndex(2);
                    Colorpicker["79"]["AnchorPoint"] = Vector2.new(0, 1);
                    Colorpicker["79"]["Size"] = UDim2.new(0, 90, 0, 20);
                    Colorpicker["79"]["Name"] = [[copyrgb]];
                    Colorpicker["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["79"]["Text"] = [[Copy RGB]];
                    Colorpicker["79"]["Position"] = UDim2.new(0, 6, 1, -10);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.copyrgb.UIStroke
                    Colorpicker["7a"] = Instance.new("UIStroke", Colorpicker["79"]);
                    Colorpicker["7a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                    Colorpicker["7a"]["Color"] = Color3.fromRGB(56, 56, 56);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.copyrgb.UIStroke
                    Colorpicker["7b"] = Instance.new("UIStroke", Colorpicker["79"]);
                    Colorpicker["7b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                    Colorpicker["7b"]["Color"] = Color3.fromRGB(56, 56, 56);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.copyhex
                    Colorpicker["7c"] = Instance.new("TextButton", Colorpicker["5f"]);
                    Colorpicker["7c"]["TextStrokeTransparency"] = 0;
                    Colorpicker["7c"]["BorderSizePixel"] = 2;
                    Colorpicker["7c"]["AutoButtonColor"] = false;
                    Colorpicker["7c"]["TextSize"] = 12;
                    Colorpicker["7c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
                    Colorpicker["7c"]["BackgroundColor3"] = Color3.fromRGB(14, 14, 14);
                    Colorpicker["7c"]["FontFace"] = GetFontFromIndex(2);
                    Colorpicker["7c"]["AnchorPoint"] = Vector2.new(1, 1);
                    Colorpicker["7c"]["Size"] = UDim2.new(0, 90, 0, 20);
                    Colorpicker["7c"]["Name"] = [[copyhex]];
                    Colorpicker["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Colorpicker["7c"]["Text"] = [[Copy HEX]];
                    Colorpicker["7c"]["Position"] = UDim2.new(1, -6, 1, -10);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.copyhex.UIStroke
                    Colorpicker["7d"] = Instance.new("UIStroke", Colorpicker["7c"]);
                    Colorpicker["7d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                    Colorpicker["7d"]["Color"] = Color3.fromRGB(56, 56, 56);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.colorpicker.window.copyhex.UIStroke
                    Colorpicker["7e"] = Instance.new("UIStroke", Colorpicker["7c"]);
                    Colorpicker["7e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                    Colorpicker["7e"]["Color"] = Color3.fromRGB(56, 56, 56);

                    Colorpicker["5c"].MouseButton1Click:Connect(function()
                        Colorpicker["5f"].Visible = not Colorpicker["5f"].Visible
                        if Colorpicker["5f"].Visible then
                            Toggle["33"].ZIndex = 15 
                        else
                            Toggle["33"].ZIndex = 1
                        end
                    end)

                    -- // Variables
                    local SlidingPalette = false
                    local SlidingHue = false
                    local SlidingAlpha = false
                    local Saturation, Hue, Value = Colorpicker.State:ToHSV()
                    local HSV = Colorpicker.State:ToHSV()
                    local Hex = Colorpicker.State:ToHex()
                    local Alpha = Colorpicker.Alpha
                    
                    --// Functionality
                    function Colorpicker:Update()
                        --// Getting the mouse position and editing it
                        local MousePosition = UserInputService:GetMouseLocation()
                        local EditedPosition = Vector2.new(MousePosition.X, MousePosition.Y - 37)
                        --// Palette variables
                        local RelativePalettePosition  = (EditedPosition - Colorpicker["61"].AbsolutePosition) 
                        local RelativeYPalette = (EditedPosition.Y - Colorpicker["61"].AbsolutePosition.Y)
                        local RelativeXPalette = (EditedPosition.X - Colorpicker["61"].AbsolutePosition.X)
                        --// Hue Variables
                        local RelativeHue = (EditedPosition - Colorpicker["67"].AbsolutePosition)
                        local RelativeYHue = (EditedPosition.Y - Colorpicker["67"].AbsolutePosition.Y)
                        --// Alpha Variables
                        local RelativeAlpha = (EditedPosition - Colorpicker["6b"].AbsolutePosition)
                        local RelativeXAlpha = (EditedPosition.X - Colorpicker["6b"].AbsolutePosition.X)

                        if SlidingPalette and Library:IsMouseOverFrame(Colorpicker["61"]) then
                            Saturation = math.clamp(1 - RelativePalettePosition.X / Colorpicker["61"].AbsoluteSize.X, 0,1)
                            Value = math.clamp(1 - RelativePalettePosition.Y / Colorpicker["61"].AbsoluteSize.Y, 0,1)
                            TweenService:Create(Colorpicker["65"],TweenInfo.new(0.015,Enum.EasingStyle.Sine,Enum.EasingDirection.In),{Position = UDim2.new(0,RelativeXPalette,0,RelativeYPalette)}):Play()
                        end

                        if SlidingHue and Library:IsMouseOverFrame(Colorpicker["67"]) then
                            Hue = math.clamp(RelativeHue.Y / Colorpicker["67"].AbsoluteSize.Y,0,1)
                            TweenService:Create(Colorpicker["69"],TweenInfo.new(0.015,Enum.EasingStyle.Sine,Enum.EasingDirection.In),{Position = UDim2.new(0,0,0,RelativeYHue)}):Play()
                        end

                        if SlidingAlpha and Library:IsMouseOverFrame(Colorpicker["6b"]) then
                            Alpha = math.clamp(RelativeAlpha.X / Colorpicker["6b"].AbsoluteSize.X,0,1)
                            TweenService:Create(Colorpicker["70"],TweenInfo.new(0.015,Enum.EasingStyle.Sine,Enum.EasingDirection.In),{Position = UDim2.new(0,RelativeXAlpha,0,0)}):Play()
                        end

                        HSV = Color3.fromHSV(Hue, Saturation, Value)
                        local r,g,b = HSV.R * 255, HSV.G * 255, HSV.B * 255
                        TweenService:Create(Colorpicker["61"], TweenInfo.new(0.07,Enum.EasingStyle.Sine,Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromHSV(Hue,1,1)}):Play()
                        TweenService:Create(Colorpicker["5c"], TweenInfo.new(0.07,Enum.EasingStyle.Sine,Enum.EasingDirection.In), {BackgroundColor3 = HSV}):Play()
                        TweenService:Create(Colorpicker["72"], TweenInfo.new(0.07,Enum.EasingStyle.Sine,Enum.EasingDirection.In), {BackgroundColor3 = HSV}):Play()
                        TweenService:Create(Colorpicker["75"], TweenInfo.new(0.07,Enum.EasingStyle.Sine,Enum.EasingDirection.In), {TextColor3 = HSV}):Play()
                        TweenService:Create(Colorpicker["77"], TweenInfo.new(0.07,Enum.EasingStyle.Sine,Enum.EasingDirection.In), {TextColor3 = HSV}):Play()
                        
                        Colorpicker["75"].Text = ""..math.round(r)..", "..math.round(g)..", "..math.round(b)
                        Colorpicker["77"].Text = string.format("#%02X%02X%02X", math.floor(r), math.floor(g), math.floor(b)) 
                        
                        Colorpicker["79"].MouseButton1Click:Connect(function()
                            setclipboard(Colorpicker["75"].Text)
                        end)

                        Colorpicker["7c"].MouseButton1Click:Connect(function()
                            setclipboard(Colorpicker["77"].Text)
                        end)

                        if Colorpicker.Flag then
                            Library.Flags[Colorpicker.Flag] = HSV 
                        end
    
                        Colorpicker.Callback(HSV)
                    end

                    local function Set(c,a)
                        if type(c) == "table" then
                            a = c[4]
                            c = Color3.fromHSV(c[1],c[2],c[3])
                        end
                        if type(c) == "string" then
                            c = Color3.fromHex(c)
                        end

                        local oldc = HSV 
                        local oldalpha = Alpha 

                        Hue,Saturation,Value = c:ToHSV()
                        Alpha = a or 1
                        HSV =  Color3.fromHSV(Hue, Saturation, Value)

                        if HSV ~= oldc then
                            TweenService:Create(Colorpicker["61"], TweenInfo.new(0.07,Enum.EasingStyle.Sine,Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromHSV(Hue,1,1)}):Play()
                            TweenService:Create(Colorpicker["5c"], TweenInfo.new(0.07,Enum.EasingStyle.Sine,Enum.EasingDirection.In), {BackgroundColor3 = HSV}):Play()
                            TweenService:Create(Colorpicker["72"], TweenInfo.new(0.07,Enum.EasingStyle.Sine,Enum.EasingDirection.In), {BackgroundColor3 = HSV}):Play()

                            if Colorpicker.Flag then
                                Library.Flags[Colorpicker.Flag] = HSV 
                            end
        
                            Colorpicker.Callback(HSV)
                        end 
                     end

                    Flags[Colorpicker.Flag] = Set 
                    Set(Colorpicker.State,Colorpicker.Alpha)

                    --// Palette dragging
                    Colorpicker["61"].InputBegan:Connect(function(inp,gpe)
                        if gpe then return end 

                        if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                            SlidingPalette = true 
                            Colorpicker:Update()
                        end
                    end)

                    Colorpicker["61"].InputEnded:Connect(function(inp,gpe)
                        if gpe then return end 

                        if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                            SlidingPalette = false 
                        end
                    end)
                    --// Hue dragging
                    Colorpicker["67"].InputBegan:Connect(function(inp,gpe)
                        if gpe then return end 

                        if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                            SlidingHue = true 
                            Colorpicker:Update()
                        end
                    end)

                    Colorpicker["67"].InputEnded:Connect(function(inp,gpe)
                        if gpe then return end 

                        if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                            SlidingHue = false 
                        end
                    end)
                    --// Alpha dragging
                    Colorpicker["6b"].InputBegan:Connect(function(inp,gpe)
                        if gpe then return end 

                        if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                            SlidingAlpha = true 
                            Colorpicker:Update()
                        end
                    end)

                    Colorpicker["6b"].InputEnded:Connect(function(inp,gpe)
                        if gpe then return end 

                        if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                            SlidingAlpha = false 
                        end
                    end)

                    UserInputService.InputChanged:Connect(function(inp)
                        if inp.UserInputType == Enum.UserInputType.MouseMovement then
                            if SlidingPalette or SlidingHue or SlidingAlpha then
                                Colorpicker:Update()
                            end
                        end
                    end)
                    
                    return Colorpicker
                end

                function Toggle:Keybind(Properties)
                    if not Properties then
                        Properties = {}
                    end
    
                    local Keybind = {
                        Name = Properties.name or Properties.Name or "Keybind",
                        State = Properties.default or Properties.Default or nil,
                        Mode = Properties.mode or Properties.Mode or "Toggle",
                        UseKey = Properties.UseKey or false,
                        Ignore = Properties.ignore or Properties.Ignore or false,
                        Callback = Properties.Callback or Properties.callback or function() end,
                        Flag = Properties.Flag or Properties.flag or Library:NextFlag(),
    
                        Open = false,
                        Binding = nil,
                    }
                    local Key
                    local State = false
                    local c

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.keybind.key
                    Keybind["81"] = Instance.new("TextButton", Toggle["33"]);
                    Keybind["81"]["BorderSizePixel"] = 0;
                    Keybind["81"]["AutoButtonColor"] = false;
                    Keybind["81"]["TextSize"] = 14;
                    Keybind["81"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
                    Keybind["81"]["BackgroundColor3"] = Color3.fromRGB(14, 14, 14);
                    Keybind["81"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
                    Keybind["81"]["AnchorPoint"] = Vector2.new(1, 0);
                    Keybind["81"]["AutomaticSize"] = Enum.AutomaticSize.X;
                    Keybind["81"]["Size"] = UDim2.new(0, 15, 0, 11);
                    Keybind["81"]["Name"] = [[key]];
                    Keybind["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Keybind["81"]["Text"] = [[none]];
                    Keybind["81"]["Position"] = UDim2.new(1, 0, 0, 0);

                    -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.keybind.key.UIStroke
                    Keybind["82"] = Instance.new("UIStroke", Keybind["81"]);
                    Keybind["82"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                    Keybind["82"]["Color"] = Color3.fromRGB(46, 46, 46);

				    -- // Functions
                    local function set(newkey)
                        if string.find(tostring(newkey), "Enum") then
                            if c then
                                c:Disconnect()
                                if Keybind.Flag then
                                    Library.Flags[Keybind.Flag] = false
                                end
                                Keybind.Callback(false)
                            end
                            if tostring(newkey):find("Enum.KeyCode.") then
                                newkey = Enum.KeyCode[tostring(newkey):gsub("Enum.KeyCode.", "")]
                            elseif tostring(newkey):find("Enum.UserInputType.") then
                                newkey = Enum.UserInputType[tostring(newkey):gsub("Enum.UserInputType.", "")]
                            end
                            if newkey == Enum.KeyCode.Backspace then
                                Key = nil
                                if Keybind.UseKey then
                                    if Keybind.Flag then
                                        Library.Flags[Keybind.Flag] = Key
                                    end
                                    Keybind.Callback(Key)
                                end
                                local text = "None"

                                Keybind["81"].Text = text
                            elseif newkey ~= nil then
                                Key = newkey
                                if Keybind.UseKey then
                                    if Keybind.Flag then
                                        Library.Flags[Keybind.Flag] = Key
                                    end
                                    Keybind.Callback(Key)
                                end
                                local text = (Library.Keys[newkey] or tostring(newkey):gsub("Enum.KeyCode.", ""))

                                Keybind["81"].Text = text
                            end

                            Library.Flags[Keybind.Flag .. "_KEY"] = newkey
                        elseif table.find({ "Always", "Toggle", "Hold" }, newkey) then
                            if not Keybind.UseKey then
                                Library.Flags[Keybind.Flag .. "_KEY STATE"] = newkey
                                Keybind.Mode = newkey
                                if Keybind.Mode == "Always" then
                                    State = true
                                    if Keybind.Flag then
                                        Library.Flags[Keybind.Flag] = State
                                    end
                                    Keybind.Callback(true)
                                end
                            end
                        else
                            State = newkey
                            if Keybind.Flag then
                                Library.Flags[Keybind.Flag] = newkey
                            end
                            Keybind.Callback(newkey)
                        end
                    end
                    --
                    set(Keybind.State)
                    set(Keybind.Mode)
                    Keybind["81"].MouseButton1Click:Connect(function()
                        if not Keybind.Binding then

                            Keybind["81"].Text = "..."

                            Keybind.Binding = Library:Connection(
                                game:GetService("UserInputService").InputBegan,
                                function(input, gpe)
                                    set(
                                        input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode
                                            or input.UserInputType
                                    )
                                    Library:Disconnect(Keybind.Binding)
                                    task.wait()
                                    Keybind.Binding = nil
                                end
                            )
                        end
                    end)
                    --
                    Library:Connection(game:GetService("UserInputService").InputBegan, function(inp)
                        if (inp.KeyCode == Key or inp.UserInputType == Key) and not Keybind.Binding and not Keybind.UseKey then
                            if Keybind.Mode == "Hold" then
                                if Keybind.Flag then
                                    Library.Flags[Keybind.Flag] = true
                                end
                                c = Library:Connection(game:GetService("RunService").RenderStepped, function()
                                    if Keybind.Callback then
                                        Keybind.Callback(true)
                                    end
                                end)
                            elseif Keybind.Mode == "Toggle" then
                                State = not State
                                if Keybind.Flag then
                                    Library.Flags[Keybind.Flag] = State
                                end
                                Keybind.Callback(State)
                            end
                        end
                    end)
                    --
                    Library:Connection(game:GetService("UserInputService").InputEnded, function(inp)
                        if Keybind.Mode == "Hold" and not Keybind.UseKey then
                            if Key ~= "" or Key ~= nil then
                                if inp.KeyCode == Key or inp.UserInputType == Key then
                                    if c then
                                        c:Disconnect()
                                        if Keybind.Flag then
                                            Library.Flags[Keybind.Flag] = false
                                        end
                                        if Keybind.Callback then
                                            Keybind.Callback(false)
                                        end
                                    end
                                end
                            end
                        end
                    end)
                    Library.Flags[Keybind.Flag .. "_KEY"] = Keybind.State
                    Library.Flags[Keybind.Flag .. "_KEY STATE"] = Keybind.Mode
                    Flags[Keybind.Flag] = set
                    Flags[Keybind.Flag .. "_KEY"] = set
                    Flags[Keybind.Flag .. "_KEY STATE"] = set
                    --
                    function Keybind:Set(key)
                        set(key)
                    end

                    RunService.Heartbeat:Connect(function()
                            task.wait()
                            if Library.Flags[Keybind.Flag] then
                                TweenService:Create(Toggle["34"],TweenInfo.new(0.08,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),{BackgroundColor3 = Library.Accent}):Play()
                            else
                                TweenService:Create(Toggle["34"],TweenInfo.new(0.08,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),{BackgroundColor3 = Color3.fromRGB(18,18,18)}):Play()
                            end
                        end)
                    
                    return Keybind
                end

                Toggle.Set(Toggle.State)
                Library.Flags[Toggle.Flag] = Toggle.State
                Flags[Toggle.Flag] = Toggle.Set
                return Toggle
            end

            function Section:Button(Properties)
                if not Properties then
                    Properties = {}
                end

                local Button = {
                    Name = Properties.Name or 'New button',
                    Callback = Properties.Callback or function() end
                }

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.button
                Button["3d"] = Instance.new("TextButton", Section["31"]);
                Button["3d"]["BorderSizePixel"] = 2;
                Button["3d"]["AutoButtonColor"] = false;
                Button["3d"]["TextSize"] = 12;
                Button["3d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
                Button["3d"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
                Button["3d"]["FontFace"] = GetFontFromIndex(2)
                Button["3d"]["Size"] = UDim2.new(0, 305, 0, 16);
                Button["3d"]["Name"] = [[button]];
                Button["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Button["3d"]["Text"] = Button.Name;

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.button.UIStroke
                Button["3e"] = Instance.new("UIStroke", Button["3d"]);
                Button["3e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                Button["3e"]["Color"] = Color3.fromRGB(56, 56, 56);

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.button.UIGradient
                Button["3f"] = Instance.new("UIGradient", Button["3d"]);
                Button["3f"]["Rotation"] = 90;
                Button["3f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(159, 159, 159))};
               
                Button["3d"].MouseButton1Click:Connect(function()
                    Button.Callback()
                    local Tween = TweenService:Create(Button["3d"],tweenInfo,{TextColor3 = Library.Accent})
                    Tween:Play()
                    Tween.Completed:Wait()
                    TweenService:Create(Button["3d"],tweenInfo,{TextColor3 = Color3.fromRGB(214, 214, 214)}):Play()
                end)

                return Button
            end

            function Section:Slider(Properties)
                if not Properties then
                    Properties = {}
                end

                local Slider = {
                    Name = Properties.Name or 'New Slider',
                    Min = Properties.Min or "1",
                    Max = Properties.Max or "10",
                    State = Properties.Default or 5,
                    Decimals = Properties.Decimals or 0.1,
                    Flag = Properties.Flag or Library:NextFlag(),
                    Suffix = Properties.Suffix or "",
                    Callback = Properties.Callback or function() end
                }

                local TextValue = ("[value]"..tostring(Slider.Suffix))

                Slider["43"] = Instance.new("Frame", Section["31"]);
                Slider["43"]["BorderSizePixel"] = 0;
                Slider["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                Slider["43"]["Size"] = UDim2.new(0, 305, 0, 24);
                Slider["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Slider["43"]["Name"] = [[slider]];
                Slider["43"]["BackgroundTransparency"] = 1;

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.slider.realslider
                Slider["44"] = Instance.new("Frame", Slider["43"]);
                Slider["44"]["BorderSizePixel"] = 0;
                Slider["44"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
                Slider["44"]["AnchorPoint"] = Vector2.new(0, 1);
                Slider["44"]["Size"] = UDim2.new(1, 0, 0, 8);
                Slider["44"]["Position"] = UDim2.new(0, 0, 1, 0);
                Slider["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Slider["44"]["Name"] = [[realslider]];

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.slider.realslider.UIGradient
                Slider["45"] = Instance.new("UIGradient", Slider["44"]);
                Slider["45"]["Rotation"] = 90;
                Slider["45"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(159, 159, 159))};

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.slider.realslider.UIStroke
                Slider["46"] = Instance.new("UIStroke", Slider["44"]);
                Slider["46"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                Slider["46"]["Color"] = Color3.fromRGB(56, 56, 56);

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.slider.realslider.indicator
                Slider["47"] = Instance.new("Frame", Slider["44"]);
                Slider["47"]["BorderSizePixel"] = 0;
                Slider["47"]["BackgroundColor3"] = Library.Accent;
                Slider["47"]["Size"] = UDim2.new(0.5, 0, 1, 0);
                Slider["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Slider["47"]["Name"] = [[indicator]];

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.slider.realslider.indicator.UIGradient
                Slider["48"] = Instance.new("UIGradient", Slider["47"]);
                Slider["48"]["Rotation"] = 90;
                Slider["48"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(159, 159, 159))};

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.slider.realslider.value
                Slider["49"] = Instance.new("TextLabel", Slider["44"]);
                Slider["49"]["TextStrokeTransparency"] = 0;
                Slider["49"]["BorderSizePixel"] = 0;
                Slider["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                Slider["49"]["TextSize"] = 12;
                Slider["49"]["FontFace"] = GetFontFromIndex(2);
                Slider["49"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
                Slider["49"]["BackgroundTransparency"] = 1;
                Slider["49"]["Size"] = UDim2.new(1, 0, 1, 0);
                Slider["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Slider["49"]["Text"] = [[5]];
                Slider["49"]["Name"] = [[value]];
                Slider["49"]["Position"] = UDim2.new(0, 0, 0, -1);

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.slider.text
                Slider["4a"] = Instance.new("TextLabel", Slider["43"]);
                Slider["4a"]["TextStrokeTransparency"] = 0;
                Slider["4a"]["BorderSizePixel"] = 0;
                Slider["4a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
                Slider["4a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                Slider["4a"]["TextSize"] = 12;
                Slider["4a"]["FontFace"] = GetFontFromIndex(2);
                Slider["4a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
                Slider["4a"]["BackgroundTransparency"] = 1;
                Slider["4a"]["Size"] = UDim2.new(1, 0, 0, 15);
                Slider["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Slider["4a"]["Text"] = Slider.Name;
                Slider["4a"]["Name"] = [[text]];

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.slider.plus
                Slider["4b"] = Instance.new("TextButton", Slider["43"]);
                Slider["4b"]["TextStrokeTransparency"] = 0;
                Slider["4b"]["BorderSizePixel"] = 0;
                Slider["4b"]["AutoButtonColor"] = false;
                Slider["4b"]["TextSize"] = 16;
                Slider["4b"]["TextColor3"] = Color3.fromRGB(183, 183, 183);
                Slider["4b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                Slider["4b"]["FontFace"] = GetFontFromIndex(2);
                Slider["4b"]["AnchorPoint"] = Vector2.new(1, 0);
                Slider["4b"]["Size"] = UDim2.new(0, 15, 0, 15);
                Slider["4b"]["BackgroundTransparency"] = 1;
                Slider["4b"]["Name"] = [[plus]];
                Slider["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Slider["4b"]["Text"] = [[+]];
                Slider["4b"]["Position"] = UDim2.new(1, 0, 0, 0);

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.slider.minus
                Slider["4c"] = Instance.new("TextButton", Slider["43"]);
                Slider["4c"]["TextStrokeTransparency"] = 0;
                Slider["4c"]["BorderSizePixel"] = 0;
                Slider["4c"]["AutoButtonColor"] = false;
                Slider["4c"]["TextSize"] = 16;
                Slider["4c"]["TextColor3"] = Color3.fromRGB(183, 183, 183);
                Slider["4c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                Slider["4c"]["FontFace"] = GetFontFromIndex(2)
                Slider["4c"]["AnchorPoint"] = Vector2.new(1, 0);
                Slider["4c"]["Size"] = UDim2.new(0, 15, 0, 15);
                Slider["4c"]["BackgroundTransparency"] = 1;
                Slider["4c"]["Name"] = [[minus]];
                Slider["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Slider["4c"]["Text"] = [[-]];
                Slider["4c"]["Position"] = UDim2.new(1, -15, 0, 0);

                -- // Functions
                local Sliding = false
                local Val = Slider.State
                local function Set(value)
                    value = math.clamp(Library:Round(value, Slider.Decimals), Slider.Min, Slider.Max)

                    local sizeX = ((value - Slider.Min) / (Slider.Max - Slider.Min))
                    TweenService:Create(Slider["47"],TweenInfo.new(0.027,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),{Size = UDim2.new(sizeX,0,1,0)}):Play()
                    Val = value
                    Slider["49"].Text = TextValue:gsub("%[value%]", string.format("%.14g", value))

                    Library.Flags[Slider.Flag] = value
                    Slider.Callback(value)
                end				
                --
                local function ISlide(input)
                    local sizeX = (input.Position.X - Slider["44"].AbsolutePosition.X) / Slider["44"].AbsoluteSize.X
                    local value = ((Slider.Max - Slider.Min) * sizeX) + Slider.Min
                    Set(value)
                end
                --
                Library:Connection(Slider["44"].InputBegan, function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        Sliding = true
                        Library.Dragging = nil
                        ISlide(input)
                    end
                end)
                Library:Connection(Slider["44"].InputEnded, function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        Sliding = false
                    end
                end)
                Library:Connection(Slider["47"].InputBegan, function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        Sliding = true
                        Library.Dragging = nil
                        ISlide(input)
                    end
                end)
                Library:Connection(Slider["47"].InputEnded, function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        Sliding = false
                    end
                end)
                Library:Connection(game:GetService("UserInputService").InputChanged, function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement then
                        if Sliding then
                            Library.Dragging = nil
                            ISlide(input)
                        end
                    end
                end)
                --
                function Slider:Set(Value)
                    Set(Value)
                end

                Slider["4b"].MouseButton1Click:Connect(function()
                    Slider:Set(Val + Slider.Decimals)
                end)

                Slider["4c"].MouseButton1Click:Connect(function()
                    Slider:Set(Val + -Slider.Decimals)
                end)
                --
                Flags[Slider.Flag] = Set
                Library.Flags[Slider.Flag] = Slider.State
                Set(Slider.State)

                return Slider
            end

            function Section:Dropdown(Properties)
                if not Properties then 
                    Properties = {}
                end

                local Dropdown = {
                    Name = Properties.Name or 'New Dropdown',
                    Options = Properties.Options or {"option 1","option 2","option 3"},
                    Flag = Properties.Flag or Library:NextFlag(),
                    Callback = Properties.Callback or function() end,
                    Max = Properties.Max or nil,
                    State = Properties.Default or nil,

                    OptionInsts = {}
                }

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.dropdown
                Dropdown["4d"] = Instance.new("Frame", Section["31"]);
                Dropdown["4d"]["BorderSizePixel"] = 0;
                Dropdown["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                Dropdown["4d"]["Size"] = UDim2.new(0, 305, 0, 32);
                Dropdown["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Dropdown["4d"]["Name"] = [[dropdown]];
                Dropdown["4d"]["BackgroundTransparency"] = 1;

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.dropdown.realdropdown
                Dropdown["4e"] = Instance.new("Frame", Dropdown["4d"]);
                Dropdown["4e"]["BorderSizePixel"] = 0;
                Dropdown["4e"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
                Dropdown["4e"]["AnchorPoint"] = Vector2.new(0, 1);
                Dropdown["4e"]["Size"] = UDim2.new(1, 0, 0, 15);
                Dropdown["4e"]["Position"] = UDim2.new(0, 0, 1, 0);
                Dropdown["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Dropdown["4e"]["Name"] = [[realdropdown]];

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.dropdown.realdropdown.UIGradient
                Dropdown["4f"] = Instance.new("UIGradient", Dropdown["4e"]);
                Dropdown["4f"]["Rotation"] = 90;
                Dropdown["4f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(159, 159, 159))};

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.dropdown.realdropdown.UIStroke
                Dropdown["50"] = Instance.new("UIStroke", Dropdown["4e"]);
                Dropdown["50"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                Dropdown["50"]["Color"] = Color3.fromRGB(56, 56, 56);

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.dropdown.realdropdown.liner
                Dropdown["51"] = Instance.new("Frame", Dropdown["4e"]);
                Dropdown["51"]["BorderSizePixel"] = 0;
                Dropdown["51"]["BackgroundColor3"] = Color3.fromRGB(48, 48, 48);
                Dropdown["51"]["AnchorPoint"] = Vector2.new(1, 0);
                Dropdown["51"]["Size"] = UDim2.new(0, 1, 1, 0);
                Dropdown["51"]["Position"] = UDim2.new(1, -15, 0, 0);
                Dropdown["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Dropdown["51"]["Name"] = [[liner]];

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.dropdown.realdropdown.side
                Dropdown["52"] = Instance.new("Frame", Dropdown["4e"]);
                Dropdown["52"]["BorderSizePixel"] = 0;
                Dropdown["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                Dropdown["52"]["AnchorPoint"] = Vector2.new(1, 0);
                Dropdown["52"]["Size"] = UDim2.new(0, 15, 1, 0);
                Dropdown["52"]["Position"] = UDim2.new(1, 0, 0, 0);
                Dropdown["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Dropdown["52"]["Name"] = [[side]];
                Dropdown["52"]["BackgroundTransparency"] = 1;

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.dropdown.realdropdown.side.ImageButton
                Dropdown["53"] = Instance.new("ImageButton", Dropdown["52"]);
                Dropdown["53"]["BorderSizePixel"] = 0;
                Dropdown["53"]["AutoButtonColor"] = false;
                Dropdown["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                Dropdown["53"]["Image"] = [[rbxassetid://129486106862431]];
                Dropdown["53"]["Size"] = UDim2.new(1, 0, 1, 0);
                Dropdown["53"]["BackgroundTransparency"] = 1;
                Dropdown["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.dropdown.realdropdown.value
                Dropdown["54"] = Instance.new("TextLabel", Dropdown["4e"]);
                Dropdown["54"]["TextStrokeTransparency"] = 0;
                Dropdown["54"]["BorderSizePixel"] = 0;
                Dropdown["54"]["TextXAlignment"] = Enum.TextXAlignment.Left;
                Dropdown["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                Dropdown["54"]["TextSize"] = 12;
                Dropdown["54"]["FontFace"] = GetFontFromIndex(2)
                Dropdown["54"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
                Dropdown["54"]["BackgroundTransparency"] = 1;
                Dropdown["54"]["Size"] = UDim2.new(1, 0, 0, 15);
                Dropdown["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Dropdown["54"]["Text"] = [[option]];
                Dropdown["54"]["Name"] = [[value]];
                Dropdown["54"]["Position"] = UDim2.new(0, 5, 0, 0);

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.dropdown.text
                Dropdown["55"] = Instance.new("TextLabel", Dropdown["4d"]);
                Dropdown["55"]["TextStrokeTransparency"] = 0;
                Dropdown["55"]["BorderSizePixel"] = 0;
                Dropdown["55"]["TextXAlignment"] = Enum.TextXAlignment.Left;
                Dropdown["55"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                Dropdown["55"]["TextSize"] = 12;
                Dropdown["55"]["FontFace"] = GetFontFromIndex(2)
                Dropdown["55"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
                Dropdown["55"]["BackgroundTransparency"] = 1;
                Dropdown["55"]["Size"] = UDim2.new(1, 0, 0, 15);
                Dropdown["55"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Dropdown["55"]["Text"] = Dropdown.Name;
                Dropdown["55"]["Name"] = [[text]];

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.dropdown.optionholder
                Dropdown["56"] = Instance.new("ScrollingFrame", Dropdown["4d"]);
                Dropdown["56"]["Visible"] = false;
                Dropdown["56"]["Active"] = true;
                Dropdown["56"]["BorderSizePixel"] = 0;
                Dropdown["56"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
                Dropdown["56"]["Name"] = [[optionholder]];
                Dropdown["56"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
                Dropdown["56"]["Size"] = UDim2.new(1, 0, 0, 50);
                Dropdown["56"]["ScrollBarImageColor3"] = Library.Accent;
                Dropdown["56"]["Position"] = UDim2.new(0, 0, 1, 1);
                Dropdown["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Dropdown["56"]["ScrollBarThickness"] = 1;

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.dropdown.optionholder.UIStroke
                Dropdown["57"] = Instance.new("UIStroke", Dropdown["56"]);
                Dropdown["57"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                Dropdown["57"]["Color"] = Color3.fromRGB(56, 56, 56);

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.dropdown.optionholder.UIListLayout
                Dropdown["58"] = Instance.new("UIListLayout", Dropdown["56"]);
                Dropdown["58"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

                -- StarterGui.newuilmfao.mainframe.inline.content.tab.sectionholders.left.section.content.dropdown.optionholder.UIGradient
                Dropdown["59"] = Instance.new("UIGradient", Dropdown["56"]);
                Dropdown["59"]["Rotation"] = 90;
                Dropdown["59"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(159, 159, 159))};

                Dropdown["53"].MouseButton1Click:Connect(function()
                    Dropdown["56"].Visible = not Dropdown["56"].Visible
                    if Dropdown["56"].Visible then
                        Dropdown["4d"].ZIndex = 15
                    else
                        Dropdown["4d"].ZIndex = 1
                    end
                end)

                local chosen = Dropdown.Max and {} or nil
                local Count = 0

                local function createoptions(tbl)
                    for _, option in next, tbl do
                        Dropdown.OptionInsts[option] = {}

                        local Option1Choosed = Instance.new("TextButton", Dropdown["56"]);
                        Option1Choosed["TextStrokeTransparency"] = 0;
                        Option1Choosed["BorderSizePixel"] = 0;
                        Option1Choosed["TextSize"] = 12;
                        Option1Choosed["TextColor3"] = Color3.fromRGB(255, 255, 255);
                        Option1Choosed["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                        Option1Choosed["FontFace"] = GetFontFromIndex(2)
                        Option1Choosed["Size"] = UDim2.new(1, 0,0, 14);
                        Option1Choosed["BackgroundTransparency"] = 1;
                        Option1Choosed["Name"] = [[Option1chosed]];
                        Option1Choosed["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                        Option1Choosed["Text"] = [[]];

                        -- StarterGui.sametsense.sametsense.inline.secondinline.content.tab.sectionholders.left.section.content.dropdown.realdropdown.optionholder.Option1chosed.Optionname
                        local optionname = Instance.new("TextLabel", Option1Choosed);
                        optionname["TextStrokeTransparency"] = 0;
                        optionname["TextTruncate"] = Enum.TextTruncate.AtEnd;
                        optionname["BorderSizePixel"] = 0;
                        optionname["TextXAlignment"] = Enum.TextXAlignment.Left;
                        optionname["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                        optionname["TextSize"] = 12;
                        optionname["FontFace"] = GetFontFromIndex(2)
                        optionname["TextColor3"] = Color3.fromRGB(255, 255, 255);
                        optionname["BackgroundTransparency"] = 1;
                        optionname["Size"] = UDim2.new(1, 0, 1, 0);
                        optionname["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                        optionname["Text"] = option;
                        optionname["Name"] = [[Optionname]];

                        -- StarterGui.sametsense.sametsense.inline.secondinline.content.tab.sectionholders.left.section.content.dropdown.realdropdown.optionholder.Option1chosed.Optionname.UIPadding
                        local paddingthingy = Instance.new("UIPadding", optionname);
                        paddingthingy["PaddingLeft"] = UDim.new(0, 3);

                        -- StarterGui.sametsense.sametsense.inline.secondinline.content.tab.sectionholders.left.section.content.dropdown.realdropdown.optionholder.Option1chosed.Optionaccentname
                        local optionaccentname = Instance.new("TextLabel", Option1Choosed);
                        optionaccentname["TextStrokeTransparency"] = 0;
                        optionaccentname["TextTruncate"] = Enum.TextTruncate.AtEnd;
                        optionaccentname["BorderSizePixel"] = 0;
                        optionaccentname["TextXAlignment"] = Enum.TextXAlignment.Left;
                        optionaccentname["TextTransparency"] = 1;
                        optionaccentname["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                        optionaccentname["TextSize"] = 12;
                        optionaccentname["FontFace"] = GetFontFromIndex(2)
                        optionaccentname["TextColor3"] = Library.Accent;
                        optionaccentname["BackgroundTransparency"] = 1;
                        optionaccentname["Size"] = UDim2.new(1, 0, 1, 0);
                        optionaccentname["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                        optionaccentname["Text"] = option;
                        optionaccentname["Name"] = [[Optionaccentname]];

                        -- StarterGui.sametsense.sametsense.inline.secondinline.content.tab.sectionholders.left.section.content.dropdown.realdropdown.optionholder.Option1chosed.Optionaccentname.UIPadding
                        local paddthing = Instance.new("UIPadding", optionaccentname);
                        paddthing["PaddingLeft"] = UDim.new(0, 3);
    
                        Option1Choosed.Parent = Dropdown["56"]
                        Dropdown.OptionInsts[option].button = Option1Choosed
                        Dropdown.OptionInsts[option].darktext = optionname
                        Dropdown.OptionInsts[option].text = optionaccentname
    
                        Count = Count + 1
    
                        Dropdown.OptionInsts[option].button.MouseButton1Down:Connect(function()
                            if Dropdown.Max then
                                if table.find(chosen, option) then
                                    table.remove(chosen, table.find(chosen, option))
        
                                    local textchosen = {}
                                    local cutobject = false
        
                                    for _, opt in next, chosen do
                                        table.insert(textchosen, opt)
                                    end
                                    
                                    Dropdown["54"].Text = #chosen == 0 and "Select" or table.concat(textchosen, ",") .. (cutobject and ", ..." or "")
        
                                    TweenService:Create(Dropdown.OptionInsts[option].text, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
                                    TweenService:Create(Dropdown.OptionInsts[option].darktext, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
        
                                    Library.Flags[Dropdown.Flag] = chosen
                                    Dropdown.Callback(chosen)
                                else
                                    if #chosen == Dropdown.Max then
                                        TweenService:Create(Dropdown.OptionInsts[chosen[1]].text, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
                                        TweenService:Create(Dropdown.OptionInsts[chosen[1]].darktext, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
                                        table.remove(chosen, 1)
                                    end
        
                                    table.insert(chosen, option)
        
                                    local textchosen = {}
                                    local cutobject = false
        
                                    for _, option in next, chosen do
                                        table.insert(textchosen, option)
                                    end
                                    
                                    Dropdown["54"].Text = #chosen == 0 and "None" or table.concat(textchosen, ",") .. (cutobject and ", ..." or "")
        
                                    TweenService:Create(Dropdown.OptionInsts[option].text, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
                                    TweenService:Create(Dropdown.OptionInsts[option].darktext, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
        
                                    Library.Flags[Dropdown.Flag] = chosen
                                    Dropdown.Callback(chosen)
                                end
                            else
                                for opt, tbl in next, Dropdown.OptionInsts do
                                    if opt ~= option then
                                        TweenService:Create(tbl.text, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
                                        TweenService:Create(tbl.darktext, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
                                    end
                                end
                                chosen = option
                                Dropdown["54"].Text = chosen
                                TweenService:Create(Dropdown.OptionInsts[option].text, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
                                TweenService:Create(Dropdown.OptionInsts[option].darktext, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
                                Library.Flags[Dropdown.Flag] = option
                                Dropdown.Callback(option)
                            end
                        end)
                    end
                end
                --
                createoptions(Dropdown.Options)
                --
                local set
                set = function(option)
                    if Dropdown.Max then
                        table.clear(chosen)
                        option = type(option) == "table" and option or {}
    
                        for opt, tbl in next, Dropdown.OptionInsts do
                            if not table.find(option, opt) then
                                tbl.text.TextColor3 = Color3.fromRGB(145,145,145)
                            end
                        end
    
                        for i, opt in next, option do
                            if table.find(Dropdown.Options, opt) and #chosen < Dropdown.Max then
                                table.insert(chosen, opt)
                                Dropdown.OptionInsts[opt].text.TextColor3 = Color3.fromRGB(213,213,213)
                            end
                        end
    
                        local textchosen = {}
                        local cutobject = false
    
                        for _, opt in next, chosen do
                            table.insert(textchosen, opt)
                        end
    
                        Dropdown["54"].Text = #chosen == 0 and "" or table.concat(textchosen, ",") .. (cutobject and ", ..." or "")
    
                        Library.Flags[Dropdown.Flag] = chosen
                        Dropdown.Callback(chosen)
                    end
                end
                --
                function Dropdown:Set(option)
                    if Dropdown.Max then
                        set(option)
                    else
                        for opt, tbl in next, Dropdown.OptionInsts do
                            if opt ~= option then
                                tbl.text.TextColor3 = Library.Accent
                            end
                        end
                        if table.find(Dropdown.Options, option) then
                            chosen = option
                            Dropdown.OptionInsts[option].text.TextColor3 = Color3.fromRGB(213,213,213)
                            Dropdown["54"].Text = option
                            Library.Flags[Dropdown.Flag] = chosen
                            Dropdown.Callback(chosen)
                        else
                            chosen = nil
                            Dropdown["54"].Text = "None"
                            Library.Flags[Dropdown.Flag] = chosen
                            Dropdown.Callback(chosen)
                        end
                    end
                end
                --
                function Dropdown:Refresh(tbl)
                    for _, opt in next, Dropdown.OptionInsts do
                        coroutine.wrap(function()
                            opt.button:Destroy()
                        end)()
                    end
                    table.clear(Dropdown.OptionInsts)
    
                    createoptions(tbl)
    
                    if Dropdown.Max then
                        table.clear(chosen)
                    else
                        chosen = nil
                    end
    
                    Library.Flags[Dropdown.Flag] = chosen
                    Dropdown.Callback(chosen)
                end
    
                -- // Returning
                if Dropdown.Max then
                    Flags[Dropdown.Flag] = set
                else
                    Flags[Dropdown.Flag] = Dropdown
                end
                Dropdown:Set(Dropdown.State)
                return Dropdown
            end

            function Section:Textbox(Properties)
                if not Properties then 
                    Properties = {}
                end
                local Textbox = {
                    Name = Properties.Title or Properties.title or Properties.Name or Properties.name or Properties.Text or Properties.text or 'textbox',
                    Placeholder = Properties.Placeholder or Properties.placeholder or '. . .',
                    State = Properties.Default or Properties.default or 'real box',
                    Callback = Properties.Callback or Properties.callback or function() end,
                    Flag = Properties.Flag or Properties.flag or Library:NextFlag()
                }

                    Textbox["5d"] = Instance.new("Frame", Section["31"]);
                    Textbox["5d"]["BorderSizePixel"] = 0;
                    Textbox["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                    Textbox["5d"]["Size"] = UDim2.new(0, 305, 0, 25);
                    Textbox["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                    Textbox["5d"]["Name"] = [[textbox]];
                    Textbox["5d"]["BackgroundTransparency"] = 1;

                -- StarterGui.tfremake.remake.inline.secondinline.content.tab.sectionholders.left.section.content.textbox.realbox
                Textbox["5e"] = Instance.new("TextBox", Textbox["5d"]);
                Textbox["5e"].ZIndex = -100
                Textbox["5e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
                Textbox["5e"]["BorderSizePixel"] = 2;
                Textbox["5e"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
                Textbox["5e"]["TextSize"] = 12;
                Textbox["5e"]["Name"] = [[realbox]];
                Textbox["5e"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
                Textbox["5e"]["FontFace"] = GetFontFromIndex(2)
                Textbox["5e"]["AnchorPoint"] = Vector2.new(0, 1);
                Textbox["5e"]["PlaceholderText"] = Properties.Placeholder;
                Textbox["5e"]["Size"] = UDim2.new(0, 305, 0, 13);
                Textbox["5e"]["Position"] = UDim2.new(0, 0, 1, 0);
                Textbox["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Textbox["5e"]["Text"] = "";

                -- StarterGui.tfremake.remake.inline.secondinline.content.tab.sectionholders.left.section.content.textbox.realbox.UIStroke
                Textbox["5f"] = Instance.new("UIStroke", Textbox["5e"]);
                Textbox["5f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
                Textbox["5f"]["Color"] = Color3.fromRGB(46, 46, 46);

                -- StarterGui.tfremake.remake.inline.secondinline.content.tab.sectionholders.left.section.content.textbox.name
                Textbox["60"] = Instance.new("TextLabel", Textbox["5d"]);
                Textbox["60"]["TextStrokeTransparency"] = 0;
                Textbox["60"]["BorderSizePixel"] = 0;
                Textbox["60"]["TextXAlignment"] = Enum.TextXAlignment.Left;
                Textbox["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
                Textbox["60"]["TextSize"] = 12;
                Textbox["60"]["FontFace"] = GetFontFromIndex(2);
                Textbox["60"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
                Textbox["60"]["BackgroundTransparency"] = 1;
                Textbox["60"]["Size"] = UDim2.new(1, 0, 0, 10);
                Textbox["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
                Textbox["60"]["Text"] = Textbox.Name;
                Textbox["60"]["Name"] = [[name]];
                Textbox["60"]["Position"] = UDim2.new(0, 0, 0, -3);

                Textbox["5e"].FocusLost:Connect(function()
                    Library.Flags[Textbox.Flag] = Textbox["5e"].Text
                    Textbox.Callback(Textbox["5e"].Text)
                end)

                local function set(str)
                    Textbox["5e"].Text = str
                    Library.Flags[Textbox.Flag] = str
                    Textbox.Callback(str)
                end

                set(Textbox.State)

                return Textbox
            end

            return Section
        end

        table.insert(Library.Tabs,Tab)
        return Tab
    end

    return Window
end
-- // Variables \\ --
--\\ Table // --
local Settings, Assets = {} or nil, {} or nil
Settings = {
    Visuals = {
        Hit_Detection = {
            Enabled = false,
            Notify = false,
            Sound = false,
            HitSound = Library.Flags["hit_sound"],
            Select = Library.Flags["hit_type"]
        },
        ["Bullet_Rays"] = {
            Enabled = false,
            Magnitude = 12,
            Width = 1.7,
            Brightness = 5,
            Segments = 10,
            Color = Library.Flags["bullet_colors"] or Library.Accent,
            LightEmission = 10,
            Speed = 3,
            Texture = 'Normal',
        },
        ['Hit_Impact'] = {
            Enabled = false,
            Size = 0.25,
            Color = Library.Accent,
            Lifetime = 2
        }
    }
}
Assets = {
    Sounds = {
        ["Bubble"] = "rbxassetid://6534947588",
        ["Lazer"] = "rbxassetid://130791043",
        ["Pick"] = "rbxassetid://1347140027",
        ["Pop"] = "rbxassetid://198598793",
        ["Rust"] = "rbxassetid://1255040462",
        ["Sans"] = "rbxassetid://3188795283",
        ["Fart"] = "rbxassetid://130833677",
        ["Big"] = "rbxassetid://5332005053",
        ["Vine"] = "rbxassetid://5332680810",
        ["UwU"] = "rbxassetid://8679659744",
        ["Bruh"] = "rbxassetid://4578740568",
        ["Skeet"] = "rbxassetid://5633695679",
        ["Neverlose"] = "rbxassetid://6534948092",
        ["Fatality"] = "rbxassetid://6534947869",
        ["Bonk"] = "rbxassetid://5766898159",
        ["Minecraft"] = "rbxassetid://5869422451",
        ["Gamesense"] = "rbxassetid://4817809188",
        ["RIFK7"] = "rbxassetid://9102080552",
        ['Bruh'] = "rbxassetid://4275842574",
        ['Bamboo'] = "rbxassetid://3769434519",
        ['Crowbar'] = "rbxassetid://546410481",
        ['Weeb'] = "rbxassetid://6442965016",
        ['Beep'] = "rbxassetid://8177256015",
        ['Bambi'] = "rbxassetid://8437203821",
        ['Stone'] = "rbxassetid://3581383408",
        ["Old Fatality"] = "rbxassetid://6607142036",
        ['Click'] = "rbxassetid://8053704437",
        ['Ding'] = "rbxassetid://7149516994",
        ['Snow'] = "rbxassetid://6455527632",
        ['Laser'] = "rbxassetid://7837461331",
        ['Mario'] = "rbxassetid://2815207981",
        ['Steve'] = "rbxassetid://4965083997",
        ["Call of Duty"] = "rbxassetid://5952120301",
        ["Bat"] = "rbxassetid://3333907347",
        ["TF2 Critical"] = "rbxassetid://296102734",
        ["Saber"] = "rbxassetid://8415678813",
        ["Baimware"] = "rbxassetid://3124331820",
        ["Osu"] = "rbxassetid://7149255551",
        ["TF2"] = "rbxassetid://2868331684",
        ["Slime"] = "rbxassetid://6916371803",
        ["Among Us"] = "rbxassetid://5700183626",
        ["One"] = "rbxassetid://7380502345"
    };
    Material = {
        Neon = Enum.Material.Neon,
        ForceField = Enum.Material.ForceField,
        Glass = Enum.Material.Glass
    };
    Textures = {
        ['Normal'] = 'rbxassetid://7151778302',
        ['Fog'] = 'rbxassetid://9150635648',
        ["Default"] = "rbxassetid://446111271",
        ["Beam"] = "rbxassetid://7151777149",
        ["Ion Beam"] = "rbxassetid://2950987173",
        ["Lightning"] = "rbxassetid://7151778302",
        ["Pulsing"] = "rbxassetid://11226108137",
        ["DNA"] = "rbxassetid://6511613786",
    };
}
local SoundOptions = {}
for name, _ in pairs(Assets.Sounds) do
    table.insert(SoundOptions, name)
end
local TextureOptions = {}
for name, _ in pairs(Assets.Textures) do
    table.insert(TextureOptions, name)
end
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local GuiService = game:GetService("GuiService")
local Camera = Workspace.CurrentCamera
local Debris = game:GetService("Debris")
local Stats = game:GetService("Stats")
local ping = tonumber(string.split(Stats.Network.ServerStatsItem["Data Ping"]:GetValueString(), '(')[1])
local Target, CurrentTarget = nil, nil

Modules, Utilities, Connections, Error, Debug = {}, {}, {}, {}, {}

function Error:Log(msg)
    print("[ERROR] " .. tostring(msg))
end

function Debug:Log(msg)
    print("[DEBUG] " .. tostring(msg))
end

Utilities.Events = {
    RenderStepped = RunService.RenderStepped,
    Heartbeat = RunService.Heartbeat,
    Stepped = RunService.Stepped,
    PreSimulation = RunService.PreSimulation,
    PostSimulation = RunService.PostSimulation,
    PlayerAdded = Players.PlayerAdded,
    PlayerRemoving = Players.PlayerRemoving,
    Chatted = LocalPlayer.Chatted,
    ChildAdded = Workspace.ChildAdded,
    DescendantAdded = Workspace.DescendantAdded,
    InputBegan = UserInputService.InputBegan,
    InputEnded = UserInputService.InputEnded,
    ReplicatedStorageChildAdded = ReplicatedStorage.ChildAdded,
    ReplicatedStorageDescendantAdded = ReplicatedStorage.DescendantAdded
}


function Modules:Connect(EventName, callback, id)
    local event = Utilities.Events[EventName]
    if not event then
        return Error:Log("Event " .. EventName .. " does not exist.")
    end

    local success, connection
    if typeof(event) == "RBXScriptSignal" then
        success, connection = pcall(event.Connect, event, callback)
    elseif typeof(event) == "Instance" and (event:IsA("BindableEvent") or event:IsA("Changed")) then
        success, connection = pcall(event.Event.Connect, event.Event, callback)
    elseif Utilities.Drawings[EventName] then
        success, connection = pcall(function()
            return RunService.RenderStepped:Connect(callback)
        end)
    else
        return Error:Log("Unsupported event type for " .. EventName)
    end

    if success and connection then
        Connections[id] = connection
    else
        if connection and connection.Disconnect then
            connection:Disconnect()
        end
        Error:Log("Failed to establish connection for " .. EventName)
    end
end
function Modules:New(className, properties)
    local instance = Instance.new(className)
    if properties then
        for key, value in pairs(properties) do
            instance[key] = value
        end
    end
    return instance
end

Window = Library:Window({Icon = "rbxassetid://100735622281642"})
Window:InitializeWatermark()

local tab_names = {"Legit", "Rage", "Misc", "Players", "Visuals", "Settings"}
local tabs = {}
for i, name in ipairs(tab_names) do
    tabs[i] = Window:Tab({Name = name})
end

local Section1 = tabs[1]:Section({Name = "Aimbot", Side = "left"})
local Section2 = tabs[1]:Section({Name = "Prediction", Side = "left"})
local Section3 = tabs[1]:Section({Name = "Aim Assist", Side = "right"})
local Section4 = tabs[1]:Section({Name = "Configuration", Side = "right"})
local Section5 = tabs[4]:Section({Name = "Check(s)", Side = "Right"})
local Section6 = tabs[4]:Section({Name = "Self-Check(s)", Side = "Left"})
local Section7 = tabs[4]:Section({Name = "LocalPlayer", Side = "Left"})
local Section8 = tabs[5]:Section({Name = "FOV : Configuration", Side = "Left"})
local Section9 = tabs[5]:Section({Name = "Hit Detection", Side = "Right"})
local Section10 = tabs[5]:Section({Name = "ESP : Configuration", Side = "Left"})
local Section11 = tabs[2]:Section({Name = "Target : Rage", Side = "left"})
local Section12 = tabs[5]:Section({Name = "World ESP : Configuration", Side = "left"})
Section1:Toggle({Name = "Enable", Default = false, Flag = "AimbotEnable"}):Keybind({Name = "Keybinf",Flag = "AimbotEnable"})
Section1:Toggle({Name = "Target | Keybind", Default = false, Flag = "GetTarget"}):Keybind({Name = "",Flag = "GetTarget"})
Section1:Dropdown({Name = "Aimbot Bypass:", Options = {"Mouse Index", "Event Trigger"}, Flag = "AimbotBypass"})
Section1:Dropdown({Name = "Aimbot Method:", Options = {"FOV", "Target"}, Flag = "AimbotMethod"})
Section1:Toggle({Name = "Enable Look-At", Default = false, Flag = "AimbotLookAt"})
Section1:Toggle({Name = "Enable Anti-Curve", Default = false, Flag = "AimbotAntiCurve"})
Section1:Toggle({Name = "Enable Anti-Ground", Default = false, Flag = "AimbotAntiGround"})

Section2:Toggle({Name = "Show Prediction Stats", Default = false, Flag = "ShowPredictionStats"})
Section2:Toggle({Name = "Enable Aimbot | Auto Prediction", Default = false, Flag = "enable_aimbot_prediction"})
Section2:Dropdown({Name = "Aimbot Preset Prediction(s): ", Options = {'Delta', 'Samet', 'Sigma', 'Sigma V2', 'Table', 'New Method', 'Old Method', 'Best Method', 'Normal'}, Flag = "aimbot_preset"})
Section2:Textbox({Name = "Enter Aimbot Prediction: ", Default = "0.006969", Placeholder = "0.6969", Flag = "aimbot_prediction"})
Section2:Toggle({Name = "Enable Aim Assist | Auto Prediction", Default = false, Flag = "enable_aimassist_prediction"})
Section2:Dropdown({Name = "Aim Assist Preset Prediction(s): ", Options = {'Delta', 'Samet', 'Sigma', 'Sigma V2', 'Table', 'New Method', 'Old Method', 'Best Method', 'Normal'}, Flag = "aimassist_present"})
Section2:Textbox({Name = "Enter Aim Assist Prediction: ", Default = "0.006969", Placeholder = "0.06969", Flag = "aimassist_pred"})

Section3:Toggle({Name = "Enable", Default = false, Flag = "AimAssistEnable"}):Keybind({Name = "",Flag = "AimAssistEnable"})
Section3:Toggle({Name = "Enable Tracing", Default = false, Flag = "EnableTracing"}):Keybind({Name = "", Flag = "EnableTracing"})
Section3:Dropdown({Name = "Select Tracing Mode: ", Options = {"Legit", "Blatant"},Flag = "TracingMode"})
Section3:Toggle({Name = "Enable Shake", Default = false, Flag = "EnableShake"})
Section3:Slider({Name = "Enter Shake Amount: ", Min = 0, Max = 10, Decimals = 1, Flag = "Shake"})
Section3:Toggle({Name = "Enable Smoothness", Default = false, Flag = "EnableSmoothness"})
Section3:Slider({Name = "Enter Smoothness Amount: ", Min = 0, Max = 2, Decimals = 0.1, Flag = "Smoothness"})
Section3:Dropdown({Name = "Select Easing Style: ", Options = {"Linear", "Sine", "Back", "Quad", "Quart", "Quint", "Bounce", "Elastic", "Exponential", "Circular", "Cubic"}, Default = 'Elastic',Flag = "EasingStyle"})

Section4:Toggle({Name = "Enable Air-Part", Default = false, Flag = "EnableAirPart"})
Section4:Toggle({Name = "Enable Jump Offset(s)", Default = false, Flag = "EnableJumpOffset"})
Section4:Textbox({Name = "Enter Jump Offset: ", Default = "0.03", Placeholder = "0.03", Flag = "JumpOffset"})
Section4:Dropdown({Name = "Select Target Hit-Part: ", Options = {"Head", "HumanoidRootPart", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "Left Hand", "Right Hand", "Left Foot", "Right Foot", "Upper Torso", "Lower Torso", "Left Upper Arm", "Right Upper Arm", "Left Lower Arm", "Right Lower Arm"}, Flag = "TargetHitPart"})
Section4:Dropdown({Name = "Select Target Air-Part: ", Options = {"Head", "HumanoidRootPart", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "Left Hand", "Right Hand", "Left Foot", "Right Foot", "Upper Torso", "Lower Torso", "Left Upper Arm", "Right Upper Arm", "Left Lower Arm", "Right Lower Arm"}, Flag = "TargetAirPart"})
Section4:Toggle({Name = "Enable Closest Part", Default = false, Flag = "ClosestPart"})

Section5:Toggle({Name = "Enable KO (Dead) Check", Default = false, Flag = "KOCheck"})
Section5:Toggle({Name = "Enable Grabbed Check", Default = false, Flag = "GrabbedCheck"})
Section5:Toggle({Name = "Enable Visible Check", Default = false, Flag = "VisibleCheck"})
Section5:Toggle({Name = "Enable Crew Check", Default = false, Flag = "CrewCheck"})
Section5:Toggle({Name = "Enable Friend Check", Default = false, Flag = "FriendCheck"})
Section5:Toggle({Name = "Enable Distance Check", Default = false, Flag = "DistanceCheck"})
Section5:Textbox({Name = "Enter Distance: ", Default = "0.03", Placeholder = "0.03", Flag = "DistanceInt"})

Section6:Toggle({Name = "Enable Typing Check", Default = false, Flag = ""})
Section6:Toggle({Name = "Enable Grabbed Check", Default = false, Flag = ""})

Section7:Toggle({Name = "Enable CFrame Fly", Default = false, Flag = "EnableCFrameFly"})
Section7:Slider({Name = "CFrame Fly Speed: ", Min = 0, Max = 10, Decimals = 1, Flag = "CFrameFlySpeed"})
Section7:Toggle({Name = "Enable CFrame Speed", Default = false, Flag = "EnableCFrame"}):Keybind({Name = "", Flag = "EnableCFrame"})
Section7:Slider({Name = "CFrame Speed: ", Min = 0, Max = 500, Decimals = 1, Flag = "CFrameSpeed"})
Section7:Dropdown({Name = "CFrame Method", Options = {'CFrame', 'MoveDirection'}, Flag = "CFrameMethod"})

Section8:Toggle({Name = "Enable Render FOV", Default = false, Flag = "render_fov"}):Colorpicker({Name = "FOV Color", Flag = "render_color"})
Section8:Slider({Name = "FOV Thickness", Min = 0, Max = 10, Decimals = 1, Default = 1, Flag = "render_thickness"})
Section8:Slider({Name = "FOV Radius", Min = 0, Max = 250, Decimals = 1, Default = 115, Flag = "render_radius"})
Section8:Slider({Name = "FOV Transparency", Min = 0, Max = 1, Decimals = 0.1, Default = 0.1, Flag = "render_trans"})
Section8:Toggle({Name = "Enable Gradient Fill", Default = false, Flag = "render_gradient"})
Section8:Toggle({Name = "Gradient Color (1)", Default = false, Flag = ""}):Colorpicker({Name = "", Default = Library.Accent, Flag = "gradient_1"})
Section8:Toggle({Name = "Gradient Color (2)", Default = false, Flag = ""}):Colorpicker({Name = "", Default = Color3.new(1,1,1), Flag = "gradient_2"})
Section8:Toggle({Name = "Auto Gradient Rotation", Default = false, Flag = "autorender_rotation"})
Section8:Slider({Name = "Gradient Rotation", Min = -360, Max = 360, Decimals = 1, Flag = "render_rotation"})

Section8:Toggle({Name = "Highlight Target (Outline)", Default = false, Flag = "target_hl"}):Colorpicker({Name = "",Flag = "targethl_color"})
Section8:Toggle({Name = "Highlight Filled", Default = false, Flag = "targetfilled_hl"}):Colorpicker({Name = "",Flag = "targethlfill_color"})
Section8:Slider({Name = "Highlight Transparency (OL): ", Min = 0, Max = 1, Decimals = 0.1, Flag = "hlol_trans"})
Section8:Slider({Name = "Highlight Transparency (Fill): ", Min = 0, Max = 1, Decimals = 0.1, Flag = "hlfill_trans"})
Section8:Toggle({Name = "Target (Backtrack)", Default = false, Flag = "target_backtrack"}):Colorpicker({Name = "",Flag = "backtrack_color"})

Section9:Toggle({Name = "Bullet Tracer(s)", Default = false, Flag = "bullet_tracers", Callback = function(v) Settings.Visuals["Bullet_Rays"].Enabled = v end}):Colorpicker({Name = "", Callback = function(v) Settings.Visuals["Bullet_Rays"].Color = v end})
Section9:Dropdown({Name = "Type: ", Options = TextureOptions, Default = Settings.Visuals["Bullet_Rays"].Texture,Callback = function(v) Settings.Visuals["Bullet_Rays"].Texture = v end})
Section9:Slider({Name = "Time: ", Min = 0, Max = 10, Decimals = 1, Default = Settings.Visuals["Bullet_Rays"].Speed, Flag = "bullet_time", Callback = function(v) Settings.Visuals["Bullet_Rays"].Speed = v end})
Section9:Slider({Name = "Brightness: ", Min = 0, Max = 10, Decimals = 1, Default = Settings.Visuals["Bullet_Rays"].Brightness, Callback = function(v) Settings.Visuals["Bullet_Rays"].Brightness = v end})

Section9:Toggle({Name = "Hit Impact",Default = Settings.Visuals["Hit_Impact"].Enabled, Callback = function(v) Settings.Visuals["Hit_Impact"].Enabled = v end}):Colorpicker({Name = "", Flags = "hit_impactc", Callback = function(v) Settings.Visuals["Hit_Impact"].Color = v end})
Section9:Slider({Name = "Time: ", Min = 0, Max = 10, Decimals = 1, Default = Settings.Visuals["Hit_Impact"].Lifetime, Flags = "hitc_time", Callback = function(v) Settings.Visuals["Hit_Impact"].Lifetime = v end})
Section9:Slider({Name = "Radius: ", Min = 0, Max = 50, Default = Settings.Visuals["Hit_Impact"].Size, Decimals = 0.1, Flags = "hitc_radius", Callback = function(v) Settings.Visuals["Hit_Impact"].Size = v end})

Section9:Toggle({Name = "Hit Notification", Default = false, Callback = function(v) Settings.Visuals.Hit_Detection.Notify = v end})
Section9:Toggle({Name = "Hit Chams", Default = false, Callback = function(v) Settings.Visuals.Hit_Detection.Enabled = v end}):Colorpicker({Name = "",Flag = "hc_colors"})
Section9:Dropdown({Name = "Hit Cham Type: ",Options = {'Clone', 'Pulse', 'Explosion', 'Cum', 'Smoke', 'Shockwave'},Flag = "hit_type", Callback = function(v) Settings.Visuals.Hit_Detection.Select = v end})

Section9:Dropdown({Name = "Hit Cham Material: ", Options = {'Neon', 'ForceField', 'Glass'}, Flag = "hit_material"})
Section9:Toggle({Name = "Hit Sound", Default = false, Callback = function(v) Settings.Visuals.Hit_Detection.Sound = v end})
Section9:Dropdown({Name = "Hit Sound(s): ", Options = SoundOptions, Flag = "hit_sound"})

Section10:Toggle({Name = "Enable 2D Box", Default = false, Flag = "render_2d"}):Colorpicker({Name = "",Flag = "2d_colors"})
--Section10:Toggle({Name = "Enable Skeleton", Default = false, Flag = "render_2d"})
Section10:Toggle({Name = "Render Health Bar", Default = false, Flag = "render_hbar"})
Section10:Toggle({Name = "Render Armor Bar", Default = false, Flag = "render_abar"})

Section11:Toggle({Name = "Enable Target Strafe", Default = false, Flag = "enable_ts"})
Section11:Dropdown({Name = "Type: ", Options = {'Random', 'Orbit', 'Behind', 'Dart', 'Spiral', 'Wobble'}, Flag = "ts_type"})
Section11:Slider({Name = "Speed: ", Min = 0, Max = 10, Decimals = 1, Flag = "ts_speed"})
Section11:Slider({Name = "Radius: ", Min = 0, Max = 10, Decimals = 1, Flag = "radius_ts"})
Section11:Slider({Name = "Height: ", Min = 0, Max = 10, Decimals = 1, Flag = "height_ts"})

-- // Section12
Section12:Toggle({Name = "World (Clock)", Default = false, Flag = "enable_wc"})
Section12:Slider({Name = "Time: ", Min = 0, Max = 24, Decimals = 1, Flag = "world_time"})
Section12:Toggle({Name = "Ambience Changer", Default = false, Flag = "ambience_enable"}):Colorpicker({Name = "", Default = Library.Accent, Flag = "amb_changer"})
Section12:Toggle({Name = "Ambience Changer (2)", Default = false, Flag = ""}):Colorpicker({Name = "", Default = Library.Accent, Flag = "amb_changer2"})
Section12:Toggle({Name = "World (Brightness)", Default = false, Flag = "enable_wb"})
Section12:Slider({Name = "Brightness: ", Min = 0, Max = 2000, Decimals = 1, Flag = "brightness_va"})
Section12:Toggle({Name = "Fog", Default = false, Flag = "fog_enable"}):Colorpicker({Name = "", Default = Library.Accent, Flag = "fog_changer"})
Section12:Slider({Name = "Fog Start: ", Min = 0, Max = 2000, Decimals = 1, Flag = "fog_start"})
Section12:Slider({Name = "Fog End: ", Min = 0, Max = 2000, Decimals = 1, Flag = "fog_end"})

local OriginalSets = {}
local function StoreLightSets()
    OriginalSets = {
        ClockTime = Lighting.ClockTime,
        Ambient = Lighting.Ambient,
        ColorShift_Top = Lighting.ColorShift_Top,
        OutdoorAmbient = Lighting.OutdoorAmbient,
        ColorShift_Bottom = Lighting.ColorShift_Bottom,
        Brightness = Lighting.Brightness,
        FogColor = Lighting.FogColor,
        FogStart = Lighting.FogStart,
        FogEnd = Lighting.FogEnd
    }
end
local function RestoreLightSets()
    Lighting.ClockTime = OriginalSets.ClockTime
    Lighting.Ambient = OriginalSets.Ambient
    Lighting.ColorShift_Top = OriginalSets.ColorShift_Top
    Lighting.OutdoorAmbient = OriginalSets.OutdoorAmbient
    Lighting.ColorShift_Bottom = OriginalSets.ColorShift_Bottom
    Lighting.Brightness = OriginalSets.Brightness
    Lighting.FogColor = OriginalSets.FogColor
    Lighting.FogStart = OriginalSets.FogStart
    Lighting.FogEnd = OriginalSets.FogEnd
end
StoreLightSets()

RunService.RenderStepped:Connect(function()
    if Library.Flags["enable_wc"] then
        Lighting.ClockTime = Library.Flags["world_time"] or Lighting.ClockTime
    else
        Lighting.ClockTime = OriginalSets.ClockTime
    end
    
    if Library.Flags["ambience_enable"] then
        Lighting.Ambient = Library.Flags["amb_changer"] or Lighting.Ambient
        Lighting.ColorShift_Top = Library.Flags["amb_changer"] or Lighting.ColorShift_Top
    else
        Lighting.Ambient = OriginalSets.Ambient
        Lighting.ColorShift_Top = OriginalSets.ColorShift_Top
    end
    
    if Library.Flags["ambience_enable"] then
        Lighting.OutdoorAmbient = Library.Flags["amb_changer2"] or Lighting.OutdoorAmbient
        Lighting.ColorShift_Bottom = Library.Flags["amb_changer2"] or Lighting.ColorShift_Bottom
    else
        Lighting.OutdoorAmbient = OriginalSets.OutdoorAmbient
        Lighting.ColorShift_Bottom = OriginalSets.ColorShift_Bottom
    end
    
    if Library.Flags["enable_wb"] then
        Lighting.Brightness = Library.Flags["brightness_va"] or Lighting.Brightness
    else
        Lighting.Brightness = OriginalSets.Brightness
    end
    
    if Library.Flags["fog_enable"] then
        Lighting.FogColor = Library.Flags["fog_changer"] or Lighting.FogColor
        Lighting.FogStart = Library.Flags["fog_start"] or Lighting.FogStart
        Lighting.FogEnd = Library.Flags["fog_end"] or Lighting.FogEnd
    else
        Lighting.FogColor = OriginalSets.FogColor
        Lighting.FogStart = OriginalSets.FogStart
        Lighting.FogEnd = OriginalSets.FogEnd
    end
end)

local Config = Instance.new('Folder', Workspace)
Config.Name = 'Config'

local function HitEffect(Player, Type)
    local Character = Player.Character
    local RootPart = Character and Character:FindFirstChild('HumanoidRootPart')

    if Character and RootPart then
        local hitc_color = Library.Flags["hc_colors"] or Color3.new(1, 1, 1)

        if Type == 'Clone' then
            Character.Archivable = true
            local Clone = Character:Clone()
            Clone.Parent = Config
            Clone.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

            local SelectedMaterial = Assets.Material[Library.Flags["hit_material"]] or Enum.Material.ForceField
            local CloneColor = hitc_color

            for _, v in pairs(Clone:GetDescendants()) do
                if v:IsA('BasePart') then
                    v.Material = SelectedMaterial
                    v.Color = CloneColor
                    v.CanCollide = false
                    v.Anchored = true
                    v.CanQuery = false
                    v.CanTouch = false
                end
                if v:IsA('Accessory') or v:IsA('Tool') then
                    v:Destroy()
                end
            end

            for _, v in pairs(Character:GetDescendants()) do
                if v:IsA('BasePart') then
                    local ClonePart = Clone:FindFirstChild(v.Name)
                    if ClonePart then
                        ClonePart.CFrame = v.CFrame
                    end
                end
            end

            Clone:PivotTo(Character.PrimaryPart.CFrame + Vector3.new(LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector.X * 1.5, 0, LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector.Z * 1.5))
            Character.Archivable = false
            Debris:AddItem(Clone, 2)

        elseif Type == 'Pulse' then
            local Attachment = Instance.new('Attachment', RootPart)
            local Particle1 = Instance.new('ParticleEmitter', Attachment) do
                Particle1.Name = 'Particle1'
                Particle1.LightEmission = 3
                Particle1.Transparency = NumberSequence.new(0)
                Particle1.Color = ColorSequence.new(hitc_color)
                Particle1.Size = NumberSequence.new{NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 6, 1.2)}
                Particle1.Rotation = NumberRange.new(0)
                Particle1.RotSpeed = NumberRange.new(0)
                Particle1.Enabled = false
                Particle1.Rate = 2
                Particle1.Lifetime = NumberRange.new(0.25)
                Particle1.Speed = NumberRange.new(0.1)
                Particle1.Squash = NumberSequence.new(0)
                Particle1.ZOffset = 1
                Particle1.Texture = 'rbxassetid://2916153928'
                Particle1.Orientation = 'VelocityPerpendicular'
                Particle1.Shape = 'Box'
                Particle1.ShapeInOut = 'Outward'
                Particle1.ShapeStyle = 'Volume'
            end
            local Particle2 = Instance.new('ParticleEmitter', Attachment) do
                Particle2.Name = 'Particle2'
                Particle2.LightEmission = 3
                Particle2.Transparency = NumberSequence.new(0)
                Particle2.Color = ColorSequence.new(hitc_color)
                Particle2.Size = NumberSequence.new{NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 6, 1.2)}
                Particle2.Rotation = NumberRange.new(0)
                Particle2.RotSpeed = NumberRange.new(0)
                Particle2.Enabled = false
                Particle2.Rate = 2
                Particle2.Lifetime = NumberRange.new(0.25)
                Particle2.Speed = NumberRange.new(0.1)
                Particle2.Squash = NumberSequence.new(0)
                Particle2.ZOffset = 1
                Particle2.Texture = 'rbxassetid://2916153928'
                Particle2.Orientation = 'FacingCamera'
                Particle2.Shape = 'Box'
                Particle2.ShapeInOut = 'Outward'
                Particle2.ShapeStyle = 'Volume'
            end

            Particle1:Emit(1)
            Particle2:Emit(1)

            Debris:AddItem(Attachment, 1)
        elseif Type == 'Explosion' then
            local Attachment = Instance.new('Attachment', RootPart)
            local ParticleEmitter = Instance.new('ParticleEmitter', Attachment)
            
            ParticleEmitter.Name = "ExplosionParticles"
            ParticleEmitter.LightInfluence = 0
            ParticleEmitter.Lifetime = NumberRange.new(0.5, 1)
            ParticleEmitter.Squash = NumberSequence.new(0)
            ParticleEmitter.Speed = NumberRange.new(30, 50)
            ParticleEmitter.Brightness = 5
            ParticleEmitter.Size = NumberSequence.new{
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(0.2, 2),
                NumberSequenceKeypoint.new(1, 0)
            }
            ParticleEmitter.Enabled = true
            ParticleEmitter.Acceleration = Vector3.new(0, 20, 0)
            ParticleEmitter.Rate = 200
            ParticleEmitter.Texture = "rbxassetid://15194500627"
            ParticleEmitter.Rotation = NumberRange.new(-180, 180)
            ParticleEmitter.Orientation = 'FacingCamera'
            ParticleEmitter.Shape = 'Sphere'
            ParticleEmitter.ShapeInOut = 'Outward'
            ParticleEmitter.ShapeStyle = 'Volume'
            
            ParticleEmitter:Emit(50)
            Debris:AddItem(Attachment, 2)
        
        elseif Type == 'Cum' then
            local Attachment = Instance.new('Attachment', RootPart)
            local ParticleEmitter = Instance.new('ParticleEmitter', Attachment)
            ParticleEmitter.Name = "Cum"
            ParticleEmitter.LightInfluence = 0.5
            ParticleEmitter.Lifetime = NumberRange.new(1, 1)
            ParticleEmitter.SpreadAngle = Vector2.new(360, -360)
            ParticleEmitter.VelocitySpread = 360
            ParticleEmitter.Squash = NumberSequence.new(1)
            ParticleEmitter.Speed = NumberRange.new(20, 20)
            ParticleEmitter.Brightness = 2.5
            ParticleEmitter.Size = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(0.1016692, 0.6508875, 0.6508875),
                NumberSequenceKeypoint.new(0.6494689, 1.4201183, 0.4127519),
                NumberSequenceKeypoint.new(1, 0)
            })
            ParticleEmitter.Enabled = true
            ParticleEmitter.Acceleration = Vector3.new(0, -66.04029846191406, 0)
            ParticleEmitter.Rate = 100
            ParticleEmitter.Texture = "rbxassetid://8297030850"
            ParticleEmitter.Rotation = NumberRange.new(-90, -90)
            ParticleEmitter.Orientation = 'VelocityParallel'
        
            ParticleEmitter:Emit(20)
            Debris:AddItem(Attachment, 1)
        elseif Type == 'Shockwave' then
            local Attachment = Instance.new('Attachment', RootPart)
            local ParticleEmitter = Instance.new('ParticleEmitter', Attachment)
            ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 255, 0))
            ParticleEmitter.Rate = 30
            ParticleEmitter.Rotation = NumberRange.new(0, 360)
            ParticleEmitter.LightEmission = 1
            ParticleEmitter.LightInfluence = 1
            ParticleEmitter.Size = NumberSequence.new{
                NumberSequenceKeypoint.new(0, 1),
                NumberSequenceKeypoint.new(1, 5),
            }
            ParticleEmitter.Lifetime = NumberRange.new(0.5)
            ParticleEmitter.Squash = NumberSequence.new(0)
            ParticleEmitter.Transparency = NumberSequence.new{
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(1, 0.5),
            }
            ParticleEmitter.ZOffset = 0
            ParticleEmitter.Speed = NumberRange.new(1, 3)
            ParticleEmitter.RotSpeed = NumberRange.new(0, 100)
            ParticleEmitter.SpreadAngle = Vector2.new(360, 360)
            ParticleEmitter.Texture = 'rbxassetid://2916153928'
            ParticleEmitter.Orientation = 'FacingCamera'
            ParticleEmitter.Shape = 'Sphere'
            ParticleEmitter.ShapeInOut = 'Outward'
            ParticleEmitter.ShapeStyle = 'Volume'
            
            ParticleEmitter:Emit(50)
            Debris:AddItem(Attachment, 1)
        elseif Type == 'Smoke' then
            local Attachment = Instance.new('Attachment', RootPart)
            local ParticleEmitter = Instance.new('ParticleEmitter', Attachment)
            ParticleEmitter.Name = 'Smoke'
            ParticleEmitter.LightEmission = 0.5
            ParticleEmitter.LightInfluence = 0
            ParticleEmitter.Transparency = NumberSequence.new{
                NumberSequenceKeypoint.new(0, 1),
                NumberSequenceKeypoint.new(0.5, 0.5),
                NumberSequenceKeypoint.new(1, 0),
            }
            ParticleEmitter.Color = ColorSequence.new(hitc_color)
            ParticleEmitter.Size = NumberSequence.new{
                NumberSequenceKeypoint.new(0, 1),
                NumberSequenceKeypoint.new(1, 4),
            }
            ParticleEmitter.Rotation = NumberRange.new(360)
            ParticleEmitter.RotSpeed = NumberRange.new(-100, 100)
            ParticleEmitter.Rate = 50
            ParticleEmitter.Lifetime = NumberRange.new(2)
            ParticleEmitter.Speed = NumberRange.new(1, 3)
            ParticleEmitter.Squash = NumberSequence.new(0)
            ParticleEmitter.ZOffset = 0
            ParticleEmitter.Texture = 'rbxassetid://303195022'
            ParticleEmitter.Orientation = 'FacingCamera'
            ParticleEmitter.Shape = 'Box'
            ParticleEmitter.ShapeInOut = 'Outward'
            ParticleEmitter.ShapeStyle = 'Volume'
            
            ParticleEmitter:Emit(20)
            Debris:AddItem(Attachment, 2)
        end        
    end
end

local function FindTargetOnPart(Part)
    local Target = nil
    local HitPart = nil
    local Distance = 2

    for _, Player in pairs(Players:GetPlayers()) do
        if Player == LocalPlayer then continue end

        local Char = Player.Character
        local Root = Char and Char:FindFirstChild('HumanoidRootPart')

        for _, Obj in pairs(Char:GetChildren()) do
            if not Obj:IsA('BasePart') then continue end

            local Mag = (Obj.Position - Part.Position).magnitude
            if Mag < Distance then
                Distance = Mag
                Target = Player
                HitPart = Obj
            end
        end
    end

    return Target, HitPart
end


local function SirenAdded(Obj)
    local Character = LocalPlayer.Character
    local RootPart = Character and Character:FindFirstChild('HumanoidRootPart')

    local function VerifyBullet(obj)
        return (obj.Name == 'BULLET_RAYS' or obj.Name:find('bullet') or obj:FindFirstChild('Attachment') or obj:FindFirstChild('GunBeam')) and obj
    end

    local BulletRay = VerifyBullet(Obj)
    if BulletRay and RootPart then
        local Mag = (RootPart.Position - BulletRay.Position).magnitude
        local MagCheck = Settings.Visuals.Hit_Detection.Enabled and 13 or 13
        local Selected_Effect = Settings.Visuals.Hit_Detection.Select

        if Mag <= MagCheck then
            local GunBeam = BulletRay:WaitForChild('GunBeam', 1)
            local Attachment0 = GunBeam and GunBeam.Attachment0
            local Attachment1 = GunBeam and GunBeam.Attachment1
            if Settings.Visuals["Bullet_Rays"].Enabled then
                task.wait()
                GunBeam.Texture        = Assets.Textures[Settings.Visuals["Bullet_Rays"].Texture]
                GunBeam.LightEmission  = 5
                GunBeam.Segments       = 10
                GunBeam.LightInfluence = 0
                GunBeam.TextureSpeed   = Settings.Visuals["Bullet_Rays"].Speed
                GunBeam.Brightness     = Settings.Visuals["Bullet_Rays"].Brightness
                GunBeam.Color          = ColorSequence.new(Settings.Visuals["Bullet_Rays"].Color)
                GunBeam.Width0         = Settings.Visuals["Bullet_Rays"].Width
                GunBeam.Width1         = Settings.Visuals["Bullet_Rays"].Width
                GunBeam.Transparency   = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 0)})
            end
            if Settings.Visuals["Hit_Impact"].Enabled then
            local ImpactPart = Instance.new('Part', Workspace); do
            ImpactPart.Anchored = true
            ImpactPart.Size = Vector3.new(Settings.Visuals["Hit_Impact"].Size, Settings.Visuals["Hit_Impact"].Size, Settings.Visuals["Hit_Impact"].Size)
            ImpactPart.Position = Attachment1.WorldCFrame.Position
            ImpactPart.Material = Enum.Material.Neon
            ImpactPart.Color = Settings.Visuals["Hit_Impact"].Color
            ImpactPart.CanCollide = false
            ImpactPart.Transparency = 0
            end
            Debris:AddItem(ImpactPart, Settings.Visuals["Hit_Impact"].Lifetime or 3)
            end
            if Settings.Visuals.Hit_Detection.Enabled then
                local Part = Instance.new('Part', Workspace); do
                    Part.Anchored = true
                    Part.Size = Vector3.new(0.25, 0.25, 0.25)
                    Part.Position = Attachment1.WorldCFrame.Position
                    Part.Material = Enum.Material.Neon
                    Part.Color = Color3.new(1,1,1)
                    Part.CanCollide = false
                    Part.Transparency = 1
                end

                Debris:AddItem(Part, 2)
                local Target, HitPart = FindTargetOnPart(Part)
                if (Target ~= nil) then
                    if Settings.Visuals.Hit_Detection.Select then
                        HitEffect(Target, Selected_Effect)
                    end                 
                    if Settings.Visuals.Hit_Detection.Notify then
                        Window:Notify(
                            string.format(
                                '<font color="#%s">spectral</font>.cc  >  +1 Hit on <b>%s</b> | Hit Part: <i>%s</i>',
                                Library.Accent:ToHex(),
                                Target.DisplayName,
                                tostring(HitPart)
                            ), 1.5
                        )
                    end
                    if Settings.Visuals.Hit_Detection.Sound then
                        task.spawn(function()
                            local SoundId = Assets.Sounds[Library.Flags["hit_sound"]]
                            if SoundId then
                                local Sound = Instance.new('Sound', Obj)
                                Sound.SoundId = SoundId or Asset.Sounds[Settings.Visuals.Hit_Detection.HitSound]
                                Sound.Volume = 1
                                Sound:Play()
                                Sound.Ended:Connect(function() Sound:Destroy() end)
                            end
                        end)
                    end
                end
            end
        end
    end
end

local function initialize()
    local siren = Workspace:FindFirstChild("Ignored") and Workspace.Ignored:FindFirstChild("Siren")
    if siren then
        siren.DescendantAdded:Connect(SirenAdded)
    end
end

do initialize() end

local function WallCheck(destination, ignore)
    local Origin = Camera.CFrame.Position
    local CheckRay = Ray.new(Origin, destination - Origin)
    local Hit = Workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
    return Hit == nil
end
local Visuals = Library:New("ScreenGui", { Parent = game.CoreGui })
local FOV = Library:New("Frame", { Size = UDim2.new(0, Library.Flags["render_radius"] or 250, 0, Library.Flags["render_radius"] or 250), AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.5, 0, 0.5, 0), BackgroundTransparency = 1,BorderSizePixel = Library.Flags["render_thickness"] or 1, Parent = Visuals })
Library:New("UICorner", { CornerRadius = UDim.new(1, 0), Parent = FOV })
local FOVOutline = Library:New("UIStroke", {Color = Library.Flags["render_color"] or Color3.fromRGB(0, 0, 0), Thickness = Library.Flags["render_thickness"] or 1,Parent = FOV})
local FOVFill = Library:New("Frame", { Size = UDim2.new(0, Library.Flags["render_radius"] or 250, 0, Library.Flags["render_radius"] or 250), AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.5, 0, 0.5, 0), BackgroundTransparency = 0.6,Parent = FOV })
Library:New("UICorner", { CornerRadius = UDim.new(1, 0), Parent = FOVFill })
local gradient_fill = FOVFill:FindFirstChildOfClass("UIGradient")
if not gradient_fill then
    gradient_fill = Library:New("UIGradient", {
        Parent = FOVFill
    })
end
local function ObtainTarget()
    local ClosestDist = FOV.Size.X.Offset / 2
    local ClosestPlr = nil
    local MousePos = Vector2.new(Mouse.X, Mouse.Y)
    
    for _, Player in ipairs(Players:GetPlayers()) do
        if Player ~= LocalPlayer and Player.Character then
            local HumanoidRootPart = Player.Character:FindFirstChild("HumanoidRootPart")
            if HumanoidRootPart then
                local ScreenPos, OnScreen = Camera:WorldToViewportPoint(HumanoidRootPart.Position)
                if OnScreen then
                    local DistToMouse = (MousePos - Vector2.new(ScreenPos.X, ScreenPos.Y)).Magnitude
                    if DistToMouse < ClosestDist and WallCheck(HumanoidRootPart.Position, {LocalPlayer, Player.Character}) then
                        ClosestPlr = Player
                        ClosestDist = DistToMouse
                    end
                end
            end
        end
    end
    return ClosestPlr
end

local Prediction_Log = {
    ["Close"] = { [30] = 0.125, [40] = 0.127, [60] = 0.135, [70] = 0.141, [80] = 0.141, [90] = 0.149, [120] = 0.157, [140] = 0.125, [200] = 0.165 },
    ["Mid"] = { [30] = 0.126, [40] = 0.11, [50] = 0.128, [60] = 0.127, [80] = 0.137, [90] = 0.138, [120] = 0.157, [140] = 0.134, [200] = 0.168 },
    ["Far"] = { [30] = 0.111, [40] = 0.111, [50] = 0.125, [60] = 0.129, [70] = 0.131, [80] = 0.131, [90] = 0.131, [120] = 0.143, [140] = 0.139, [200] = 0.165 }
}

function Get_Pred(ping, distance)
    local Ping_Table = distance <= 37 and Prediction_Log.Close or distance <= 68 and Prediction_Log.Mid or Prediction_Log.Far
    if Ping_Table then
        for _, threshold in pairs({30, 40, 50, 60, 80, 90, 120, 140, 200}) do
            if ping <= threshold then
                return Ping_Table[threshold]
            end
        end
    end
    return 0.1
end
local function samet_method(target)
    local Part = Library.Flags["TargetHitPart"]
    if target and target.Character and Part then
        local hrp = target.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            local velocity = Part.Velocity or hrp.Velocity
            local position = Part.Position or hrp.Position
            local ping = Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
            local prediction_time = ping / 1000
            local new_position = position + (velocity * prediction_time)
            return new_position
        end
    end
end
local function samet_methodv2(target)
    local Part = Library.Flags["TargetHitPart"]
    if target and target.Character then
        local hrp = target.Character:FindFirstChild(Part) or target.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            local velocity = hrp.Velocity
            local last_position = hrp.Position
            local targetpos = hrp.Position
            local speed = velocity.Magnitude
            local ping = Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
            local prediction_time = ping / 1000
            
            -- Update position prediction
            last_position = last_position + velocity * prediction_time
            return last_position
        end
    end
end

local function samet_methodv3(target)
    local Part = Library.Flags["TargetHitPart"]
    if target and target.Character then
        local hrp = target.Character:FindFirstChild(Part) or target.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            local velocity = hrp.Velocity
            local last_position = hrp.Position
            local targetpos = hrp.Position

            local speed = velocity.Magnitude
            local prediction_time = Stats.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000
            
            last_position = last_position + velocity * prediction_time
            return last_position
        end
    end
end

local last_tick = tick()

local function delta_pred(target)
    if target and target.Character then
        local hrp = target.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            local Part = Library.Flags["TargetHitPart"]
            local velocity = (Part and Part.Velocity) or hrp.Velocity
            local position = (Part and Part.Position) or hrp.Position

            local current_tick = tick()
            local prediction_time = current_tick - last_tick
            last_tick = current_tick

            local new_position = position + (velocity * prediction_time)
            return new_position
        end
    end
end

local function regular_prediction(ping, version)
    if version == "Default" then
        return ping / 225 * 0.1 + 0.1
    elseif version == "Old Method" then
        return ping < 130 and ping / 1000 + 0.037 or ping / 1000 + 0.033
    elseif version == "New Method" then
        return 0.1 + ping / 2000 + (ping / 1000) * (ping / 1500) * 1.025
    elseif version == "Best Method" then
        return ping < 130 and ping / 1000 + 0.037 or ping / 1000 + 0.033
    elseif version == "Normal" then
        local thresholds = {30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200}
        local values = {0.1125, 0.11, 0.135, 0.12, 0.125, 0.139, 0.135, 0.142, 0.145, 0.15, 0.155, 0.16, 0.165, 0.17, 0.175, 0.18, 0.185, 0.19}
        for i, threshold in ipairs(thresholds) do
            if ping < threshold then
                return values[i]
            end
        end
        return 0.2
    else
        return ping / 225 * 0.1 + 0.1
    end
end
local PreviousHighlight = nil
local BackTrackClone = nil
local prevPos = nil

Modules:Connect("PostSimulation", function()
    if Target == nil then
        Target = CurrentTarget
    end

    if Target then
        if Library.Flags["target_hl"] and not PreviousHighlight then
            PreviousHighlight = Library:New("Highlight", {
                Parent = Target.Character,
                FillColor = Library.Flags["targethlfill_color"] or Color3.new(0, 1, 0),
                OutlineColor = Library.Flags["targethl_color"] or Color3.new(0.447059, 0.019608, 0.019608),
                FillTransparency = Library.Flags["targetfilled_hl"] and Library.Flags["hlfill_trans"] or (Library.Flags["hlfill_trans"] or 1),
                OutlineTransparency = Library.Flags["hlol_trans"] or 0
            })
            Debris:AddItem(PreviousHighlight, 5)
        end

        if Library.Flags["target_backtrack"] and not BackTrackClone then
            local Backtrack = Instance.new("Folder", Workspace)
            local eCharacter = Target.Character
            eCharacter.Archivable = true

            BackTrackClone = eCharacter:Clone()
            BackTrackClone.Name = "BackTrackClone"
            BackTrackClone.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
            BackTrackClone.Parent = Backtrack

            for _, v in pairs(BackTrackClone:GetDescendants()) do
                if v:IsA('BasePart') then
                    if v.Name ~= "HumanoidRootPart" and not v:IsA("ForceField") and v.Name ~= "CUFFS" then
                        v.Material = Enum.Material.ForceField
                        v.Color = Library.Accent or Color3.new(0, 0, 0)
                        v.Transparency = 0.6
                        v.CanCollide = false
                        v.Anchored = true
                        v.CanQuery = false
                        v.CanTouch = false
                    end
                elseif v:IsA('Accessory') or v:IsA('Tool') then
                    v:Destroy()
                end
            end

            Debris:AddItem(BackTrackClone, math.huge)

            Modules:Connect("RenderStepped", function()
                if Target and Target.Character then
                    local targetHRP = Target.Character:FindFirstChild("HumanoidRootPart")
                    if targetHRP then
                        for _, part in pairs(Target.Character:GetDescendants()) do
                            if part:IsA("BasePart") and not part:IsDescendantOf(BackTrackClone) then
                                local clonedPart = BackTrackClone:FindFirstChild(part.Name)
                                if clonedPart then
                                    clonedPart.CFrame = part.CFrame
                                end
                            end
                        end

                        local cloneHRP = BackTrackClone:FindFirstChild("HumanoidRootPart")
                        if cloneHRP then
                            local targetPos = targetHRP.Position
                            local targetLookVector = targetHRP.CFrame.LookVector

                            if prevPos then
                                local moveDir = targetPos - prevPos
                                local shadowOffset = -targetLookVector
                                local newPos = targetPos + moveDir * 1.5 + shadowOffset
                                BackTrackClone:PivotTo(CFrame.new(newPos))
                            else
                                local shadowOffset = -targetLookVector
                                BackTrackClone:PivotTo(CFrame.new(targetPos + shadowOffset))
                            end

                            prevPos = targetPos
                        end
                    end
                end
            end, "Backtrack")

            eCharacter.Archivable = false
        end
    else
        if PreviousHighlight then
            PreviousHighlight:Destroy()
            PreviousHighlight = nil
        end

        if BackTrackClone then
            BackTrackClone:Destroy()
            BackTrackClone = nil
        end
    end
end, "Visual_Init")

local function GlobalChecks(Target)
    if not Target or not Target.Character then
        return false
    end
    
    local Char = Target.Character
    local HumanoidRootPart = Char:FindFirstChild("HumanoidRootPart")
    if not HumanoidRootPart then
        return false
    end
    
    if Library.Flags["KOCheck"] then
        local BodyEffects = Char:FindFirstChild("BodyEffects")
        if BodyEffects and BodyEffects:FindFirstChild("K.O") and BodyEffects["K.O"].Value then
            return false
        end
    end
    
    if Library.Flags["GrabbedCheck"] and Char:FindFirstChild("GRABBING_CONSTRAINT") then
        return false
    end
    
    if Library.Flags["VisibleCheck"] then
        local TargetPart = Char:FindFirstChild(Library.Flags["TargetHitPart"])
        local LocalPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(Library.Flags["TargetHitPart"])
        if LocalPart and TargetPart then
            local ray = Ray.new(LocalPart.Position, (TargetPart.Position - LocalPart.Position).unit * (TargetPart.Position - LocalPart.Position).Magnitude)
            local part = game.Workspace:FindPartOnRay(ray, LocalPlayer.Character)
            if part and part:IsDescendantOf(Char) then
                return true
            end
            return false
        end
    end
    
    if Library.Flags["CrewCheck"] then
        local DataFolder = Target:FindFirstChild("DataFolder")
        local Info = DataFolder and DataFolder:FindFirstChild("Information")
        if Info and Info:FindFirstChild("Crew") and Info.Crew.Value == LocalPlayer.DataFolder.Information.Crew.Value then
            return false
        end
    end
    
    if Library.Flags["DistanceCheck"] then
        local trg_pos = Char.HumanoidRootPart.Position
        local lp_pos = LocalPlayer.Character.HumanoidRootPart.Position
        if (trg_pos - lp_pos).Magnitude > Library.Flags["DistanceInt"] then
            return false
        end
    end
    
    if Library.Flags["FriendCheck"] and LocalPlayer:IsFriendsWith(Target.UserId) then
        return false
    end
    
    return true 
end
local function GetTargetHitPart(Target)
    if not Target then return end

    local Char = Target.Character
    local OriginalHitPart = Library.Flags["TargetHitPart"]
    local HitPart = OriginalHitPart

    if Library.Flags["ClosestPart"] then
        local ClosestPart, ClosestDist = nil, math.huge
        for _, p in ipairs(Char:GetChildren()) do
            if p:IsA("BasePart") then
                local sp, onScr = Camera:WorldToViewportPoint(p.Position)
                if onScr then
                    local dist = (LocalPlayer:GetMouse().Position - Vector2.new(sp.X, sp.Y)).Magnitude
                    if dist < ClosestDist then
                        ClosestDist, ClosestPart = dist, p.Name
                    end
                end
            end
        end
        if ClosestPart then
            HitPart = ClosestPart
        end
    end

    if Library.Flags["EnableAirPart"] then
        local AirPartName = Library.Flags["TargetAirPart"]
        local AirPart = Char:FindFirstChild(AirPartName)

        if AirPart and Char.HumanoidRootPart and Char.HumanoidRootPart.Position.Y > 0 then
            if Char.Humanoid.FloorMaterial == Enum.Material.Air then
                HitPart = AirPartName
            else
                HitPart = OriginalHitPart
            end
        end
    end

    if Library.Flags["EnableJumpOffset"] then
        local CHP = Char:FindFirstChild(HitPart)
        if CHP and Char.Humanoid.Jump then
            HitPart = CHP.Position + Vector3.new(0, tonumber(Library.Flags["JumpOffset"]), 0)
        end
    end

    Library.Flags["TargetHitPart"] = HitPart
end
local function Aimbot()
    local Target

    if Library.Flags["AimbotMethod"] == "FOV" and Library.Flags["AimbotBypass"] == "Event Trigger" then
        Target = ObtainTarget()
    elseif Library.Flags["AimbotMethod"] == "Target" then
        if not Library.Flags["GetTarget"] then
            CurrentTarget = nil
        elseif not CurrentTarget then
            CurrentTarget = ObtainTarget()
        end
        Target = CurrentTarget
    end

    if Target and GlobalChecks(Target) then
        local Part = Target.Character:FindFirstChild(Library.Flags["TargetHitPart"])
        if Part then
            local ping = Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
            local distance = (Target.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            local pred
            local offset

            if Library.Flags["enable_aimbot_prediction"] then
                local preset = Library.Flags["aimbot_preset"]

                if preset == 'Delta' then
                    pred = delta_pred(Target)
                    offset = pred
                elseif preset == 'Samet' then
                    pred = samet_method(Target)
                    offset = pred
                elseif preset == 'Sigma' then
                    pred = samet_methodv2(Target)
                    offset = pred
                elseif preset == 'Sigma V2' then
                    pred = samet_methodv3(Target)
                    offset = pred
                elseif preset == 'Table' then
                    pred = Get_Pred(ping, distance)
                    offset = Part.Position + (Part.Velocity * pred)
                elseif preset == 'New Method' or preset == 'Old Method' or preset == 'Best Method' or preset == 'Normal' then
                    pred = regular_prediction(ping, preset)
                    offset = Part.Position + (Part.Velocity * pred)
                else
                    pred = Library.Flags["aimbot_prediction"] or 0.1
                    offset = Part.Position + (Part.Velocity * pred)
                end
            else
                pred = Library.Flags["aimbot_prediction"] or 0.1
                offset = Part.Position + (Part.Velocity * pred)
            end
            ReplicatedStorage:FindFirstChild(Games[game.PlaceId].Remote or 'MainEvent'):FireServer(Games[game.PlaceId].Arg or 'UpdateMousePosI', offset)
        end
    end
end



Modules:Connect("PostSimulation", function()
    if LocalPlayer.character:FindFirstChildOfClass("Tool") and LocalPlayer.character:FindFirstChildOfClass("Tool").Activated then
        Aimbot()
    end
end, 'Aimbot')

local hooksupported
local function safe()
    local old
    local success, result = pcall(function()
        old = hookmetamethod(game, "__index", function(self, prop)
            if self:IsA("Mouse") and prop == "Hit" and Library.Flags["AimbotEnable"] then
                local Target = nil

                if Library.Flags["AimbotBypass"] == "Mouse Index" and Library.Flags["AimbotMethod"] == "FOV" then
                    Target = ObtainTarget()
                elseif Library.Flags["AimbotMethod"] == "Target" then
                    if not Library.Flags["GetTarget"] then
                        CurrentTarget = nil
                    elseif not CurrentTarget then
                        CurrentTarget = ObtainTarget()
                        if CurrentTarget then
                            Window:Notify("Targeting " .. CurrentTarget.Name, 1.5)
                        end
                    end
                    Target = CurrentTarget
                end

                if Target and GlobalChecks(Target) then
                    local HitPart = Target.Character:FindFirstChild(Library.Flags["TargetHitPart"])
                    if HitPart then
                        local predd = Library.Flags["aimbot_pred"]
                        local pred_pos
                        local ping = Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
                        local distance = (Target.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        local preset = Library.Flags["aimbot_preset"]

                        if preset == 'Delta' then
                            pred_pos = delta_pred(Target)
                        elseif preset == 'Samet' then
                            pred_pos = samet_method(Target)
                        elseif preset == 'Sigma' then
                            pred_pos = samet_methodv2(Target)
                        elseif preset == 'Sigma V2' then
                            pred_pos = samet_methodv3(Target)
                        elseif preset == 'Table' then
                            pred_pos = Get_Pred(ping, distance)
                        elseif preset == 'New Method' or preset == 'Old Method' or preset == 'Best Method' or preset == 'Normal' then
                            pred_pos = regular_prediction(ping, preset)
                        else
                            if Library.Flags["aimbot_preset"] == 'Delta' or Library.Flags['aimbot_preset'] == 'Samet' then
                                pred_pos = HitPart.Position + predd
                            else
                                pred_pos = HitPart.Position + (HitPart.Velocity * (predd or 0.1))
                            end
                        end

                        return CFrame.new(pred_pos)
                    end
                end
            end
            return old(self, prop)
        end)
    end)
    
    hooksupported = success
    if hooksupported then
        print("hookmetamethod is supported.")
    else
        print("hookmetamethod is not supported by this executor.")
        Window:Notify('Error: ' .. tostring(result), 2)
    end
end
notified = false
coroutine.wrap(function()
    safe()
    wait(2.5)
    while true do
        if Library.Flags['AimbotBypass'] == 'Mouse Index' and not hooksupported and not notified then
            Window:Notify('Your executor doesn’t support this, use "Event Trigger" instead.', 1.5)
            notified = true
        end
        wait(1)
    end
end)()
local function AimAssist()
    if not Library.Flags["AimAssistEnable"] then
        Target = nil
        return
    end

    if not Target then
        Target = ObtainTarget()
    end

    if Target and GlobalChecks(Target) then
        local Part = Target.Character:FindFirstChild(Library.Flags["TargetHitPart"])
        if Part then
            local pred
            local preset = Library.Flags["aimassist_preset"]
            local ping = Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
            local distance = (Target.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

            if Library.Flags["enable_aimassist_prediction"] then
                if preset == 'Delta' then
                    pred = delta_pred(Target)
                elseif preset == 'Samet' then
                    pred = samet_method(Target)
                elseif preset == 'Sigma' then
                    pred = samet_methodv2(Target)
                elseif preset == 'Sigma V2' then
                    pred = samet_methodv3(Target)
                elseif preset == 'Table' then
                    pred = Get_Pred(ping, distance)
                elseif preset == 'New Method' or preset == 'Old Method' or preset == 'Best Method' or preset == 'Normal' then
                    pred = regular_prediction(ping, preset)
                else
                    pred = pred or 0.1
                end
            else
                pred = Library.Flags["aimassist_pred"] or 0.1
            end

            local endPos
            if preset == 'Delta' or preset == 'Samet' then
                endPos = Part.Position + pred
            else
                endPos = Part.Position + (Part.Velocity * (pred or 0.1))
            end

            local endpoint = CFrame.new(Workspace.CurrentCamera.CFrame.Position, endPos)
            local smoothness = tonumber(Library.Flags["Smoothness"]) or 0.1
            local easing = Enum.EasingStyle[Library.Flags["EasingStyle"]] or Enum.EasingStyle.Elastic
            Workspace.CurrentCamera.CFrame = Library.Flags["EnableSmoothness"]
                and Workspace.CurrentCamera.CFrame:Lerp(endpoint, smoothness, easing, Enum.EasingDirection.InOut)
                or Library.Flags["EnableShake"]
                and Workspace.CurrentCamera.CFrame * CFrame.new(Library.Flags["Shake"] or Vector3.new())
                or endpoint

            if Library.Flags["EnableTracing"] then
                local PartPos, inViewport = Workspace.CurrentCamera:WorldToViewportPoint(Part.Position)
                if inViewport then
                    local scale = Library.Flags["TracingMode"] == 'Blatant' and 1 or 0.1
                    mousemoverel(
                        (PartPos.X - Mouse.X - GuiService:GetGuiInset().X) * scale,
                        (PartPos.Y - Mouse.Y - GuiService:GetGuiInset().Y) * scale
                    )
                end
            end
        end
    else
        Target = nil
    end
end

local function createESP(player)
    local char = player.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    local humanoid = char and char:FindFirstChild("Humanoid")
    local BodyEffects = char and char:FindFirstChild("BodyEffects")

    local visualHolder = Library:New("ScreenGui", {
        Parent = game.CoreGui,
        Name = "ESP_" .. player.Name
    })

    local espBox = Library:New("Frame", {
        Parent = visualHolder,
        BorderSizePixel = 0,
        BackgroundTransparency = 0.5,
        BackgroundColor3 = Library.Flags["2d_colors"] or Color3.new(1, 1, 1),
        Visible = Library.Flags["render_2d"] or false
    })

    local uiStroke = Library:New("UIStroke", {
        Parent = espBox,
        Color = Color3.new(0, 0, 0)
    })

    local healthBar = Library:New("Frame", {
        Parent = espBox,
        BackgroundTransparency = 0,
        BackgroundColor3 = Color3.new(0, 1, 0),
        Visible = Library.Flags["render_hbar"] or false
    })

    local hb_outline = Library:New("UIStroke", {
        Parent = healthBar,
        Color = Color3.new(0, 0, 0)
    })

    local armorBar = Library:New("Frame", {
        Parent = espBox,
        BackgroundTransparency = 0,
        BackgroundColor3 = Color3.new(0, 0, 1),
        BorderSizePixel = 0,
        Visible = Library.Flags["render_abar"] or false
    })

    local arb_outline = Library:New("UIStroke", {
        Parent = armorBar,
        Color = Color3.new(0, 0, 0)
    })

    local function updateESPBox()
        if char and hrp then
            espBox.BackgroundColor3 = Library.Flags["2d_colors"] or Color3.new(1, 1, 1)
            local screenPoint, onScreen = Workspace.CurrentCamera:WorldToScreenPoint(hrp.Position)
            if onScreen and Library.Flags["render_2d"] then
                local screenPos = Workspace.CurrentCamera:WorldToViewportPoint(hrp.Position)
                local size = (Workspace.CurrentCamera:WorldToViewportPoint(hrp.Position - Vector3.new(0, 3, 0)).Y - Workspace.CurrentCamera:WorldToViewportPoint(hrp.Position + Vector3.new(0, 2.6, 0)).Y) / 2
                local boxSize = Vector2.new(math.floor(size * 1.5), math.floor(size * 1.9))
                local boxPos = Vector2.new(math.floor(screenPoint.X - boxSize.X / 2), math.floor(screenPoint.Y - boxSize.Y / 2))

                espBox.Size = UDim2.new(0, boxSize.X + 2 * uiStroke.Thickness, 0, boxSize.Y + 2 * uiStroke.Thickness)
                espBox.Position = UDim2.new(0, boxPos.X - uiStroke.Thickness, 0, boxPos.Y - uiStroke.Thickness)

                if Library.Flags["render_hbar"] then
                    local healthPercent = humanoid.Health / humanoid.MaxHealth
                    healthBar.Size = UDim2.new(0, 4, 0, espBox.Size.Y.Offset * healthPercent)
                    healthBar.Position = UDim2.new(0, -12, 0.5, -espBox.Size.Y.Offset * healthPercent / 2)
                    healthBar.Visible = true
                else
                    healthBar.Visible = false
                end

                if Library.Flags["render_abar"] then
                    local armor = BodyEffects and BodyEffects:FindFirstChild("Armor")
                    local armorPercent = armor and armor.Value / 100 or 0
                    armorBar.Size = UDim2.new(0, espBox.Size.X.Offset * armorPercent, 0, 4)
                    armorBar.Position = UDim2.new(0, 0, 1, 4)
                    armorBar.Visible = true
                else
                    armorBar.Visible = false
                end

                espBox.Visible = true
            else
                espBox.Visible = false
            end
        else
            espBox.Visible = false
        end
    end

    local function removeESP(player)
        local visualHolder = game.CoreGui:FindFirstChild("ESP_" .. player.Name)
        if visualHolder then visualHolder:Destroy() end
    end

    local function onCharacterRemoving()
        removeESP(player)
    end

    if char then
        char:WaitForChild("Humanoid").Died:Connect(onCharacterRemoving)
    end
    player.CharacterRemoving:Connect(onCharacterRemoving)

    RunService.RenderStepped:Connect(updateESPBox)
end

local function onPlayerAdded(player)
    player.CharacterAdded:Connect(function() createESP(player) end)
end

local function onPlayerRemoving(player)
    removeESP(player)
end

Players.PlayerAdded:Connect(onPlayerAdded)
Players.PlayerRemoving:Connect(onPlayerRemoving)

for _, player in ipairs(Players:GetPlayers()) do
    if player ~= Players.LocalPlayer then createESP(player) end
end
Modules:Connect("RenderStepped", function()
    FOV.Size = UDim2.new(0, Library.Flags["render_radius"] * 3 or 250, 0, Library.Flags["render_radius"] * 3 or 250)
    FOV.BackgroundTransparency = 1
    
    FOVOutline.Color = Library.Flags["render_color"]
    FOVOutline.Thickness = Library.Flags["render_thickness"] or 1
    FOVOutline.Transparency = Library.Flags["render_trans"] or 0.6

    FOVFill.Size = FOV.Size
    FOVFill.BackgroundTransparency = 0.6

    FOV.Position = UDim2.new(0, Mouse.X, 0, Mouse.Y)
    FOV.Visible = Library.Flags["render_fov"] or false
    FOVFill.Visible = Library.Flags["render_gradient"] or false
    
    if Library.Flags["render_gradient"] then
        local gradient_1 = Library.Flags["gradient_1"] or Color3.fromRGB(255, 0, 0)
        local gradient_2 = Library.Flags["gradient_2"] or Color3.fromRGB(0, 0, 255)
        gradient_fill.Rotation = Library.Flags["render_rotation"] or -90
        gradient_fill.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, gradient_1),
            ColorSequenceKeypoint.new(1, gradient_2)
        }
    end
end, "fov")

Modules:Connect("RenderStepped", function()
    if Library.Flags["AimbotLookAt"] and CurrentTarget and CurrentTarget.Character and CurrentTarget.Character:FindFirstChild("HumanoidRootPart") then
    local targetPosition = CurrentTarget.Character.HumanoidRootPart.Position
    local cameraPosition = camera.CFrame.Position
    camera.CFrame = CFrame.lookAt(cameraPosition, targetPosition)
end


    AimAssist()
    GetTargetHitPart(ObtainTarget())
    if not Library.Flags['AimbotEnable'] or (Library.Flags['AimbotMethod'] == "Target" and not Library.Flags["GetTarget"]) then
        CurrentTarget = nil
    end
    if Library.Flags["EnableCFrame"] then
        local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            if Library.Flags["CFrameMethod"] == 'CFrame' then
                hrp.CFrame = hrp.CFrame + hrp.CFrame.LookVector * Library.Flags["CFrameSpeed"]
            elseif Library.Flags["CFrameMethod"] == 'MoveDirection' then
                hrp.CFrame = hrp.CFrame + LocalPlayer.Character.Humanoid.MoveDirection * Library.Flags["CFrameSpeed"]
            end
        end
    end
    
end, "Init")
local mathdeg, mathcos, mathsin, mathrad, mathpi, random, tick = math.deg, math.cos, math.sin, math.rad, math.pi, math.random, tick
local Cloned = Instance.new("Folder", Workspace)
Cloned.Name = "Clones"
local function setupClone()
    local char = Players.LocalPlayer.Character
    if not char then return end
    
    char.Archivable = true
    local clone = char:Clone()
    clone.Name = "R6Clone"
    clone.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
    clone.Parent = Cloned
    
    for _, v in pairs(clone:GetDescendants()) do
        if v:IsA('BasePart') then
            if v.Name == "HumanoidRootPart" or v.Name == "CUFF" then
                v.Transparency = 1
                v.CanCollide = false
                v.Anchored = true
                v.CanQuery = false
                v.CanTouch = false
            elseif not v:IsA("ForceField") then
                v.Material = Enum.Material.ForceField
                v.Color = CloneColor or Color3.new(1, 0, 0)
                v.Transparency = 0.6
                v.CanCollide = false
                v.Anchored = true
                v.CanQuery = false
                v.CanTouch = false
            end
        elseif v:IsA('Accessory') or v:IsA('Tool') or v:IsA('Decal') then
            v:Destroy()
        end
    end

    return clone
end
local r15Chr = setupClone()
local partz = {
    "Head", "UpperTorso", "LowerTorso", "LeftFoot", "LeftLowerLeg", "LeftUpperLeg", 
    "RightFoot", "RightLowerLeg", "RightUpperLeg", "LeftHand", "LeftLowerArm", 
    "LeftUpperArm", "RightHand", "RightLowerArm", "RightUpperArm"
}

local function setVis(char, visible)
    for _, pname in pairs(partz) do
        local part = char:FindFirstChild(pname)
        if part then 
            part.Transparency = visible and 0 or 1 
        end
    end
end

local function setCloneVis(clone, visible)
    for _, v in pairs(clone:GetDescendants()) do
        if v:IsA('BasePart') or v:IsA('MeshPart') or v:IsA('Accessory') then
            if v.Name == "HumanoidRootPart" or v.Name == "CUFF" then
                v.Transparency = visible and 1 or 1
            else
                v.Transparency = visible and 0.6 or 0
            end
        end
    end
end

local function setCam(tHrp)
    Workspace.CurrentCamera.CameraSubject = tHrp
end

local function resetCam()
    local localPlayer = Players.LocalPlayer
    Workspace.CurrentCamera.CameraSubject = localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
end

local OrbitAngle, dartStart, dartPhase, dartDist, spiralAngle = 0, tick(), true, 10, 0
for _, obj in ipairs(Workspace:GetDescendants()) do
    if obj:IsA("Seat") then
        obj:Destroy()
    end
end
Modules:Connect("RenderStepped", function()
    local hrp = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local tHrp = CurrentTarget and CurrentTarget.Character and CurrentTarget.Character:FindFirstChild("HumanoidRootPart")

    if Library.Flags and Library.Flags['enable_ts'] and tHrp then
        local spd, radius, height = Library.Flags['ts_speed'] * 15, Library.Flags['radius_ts'] * 15, Library.Flags['height_ts']
        local targetPos

        if Library.Flags['ts_type'] == 'Random' then
            targetPos = tHrp.Position + Vector3.new(
                (random() * radius * 2 - radius) * mathcos(random() * 2 * mathpi),
                random() * height * 2 - height,
                (random() * radius * 2 - radius) * mathsin(random() * 2 * mathpi)
            )
        elseif Library.Flags['ts_type'] == 'Orbit' then
            OrbitAngle = OrbitAngle + spd * 0.1
            targetPos = tHrp.Position + Vector3.new(radius * mathcos(OrbitAngle), height, radius * mathsin(OrbitAngle))
        elseif Library.Flags['ts_type'] == 'Behind' then
            local dir = (hrp.Position - tHrp.Position).Unit
            targetPos = tHrp.Position - dir * radius
            targetPos = Vector3.new(targetPos.X, height, targetPos.Z)
        elseif Library.Flags['ts_type'] == 'Dart' then
            local dartTime = tick() - dartStart
            if dartPhase then
                local dir = (tHrp.Position - hrp.Position).Unit
                targetPos = hrp.Position + dir * spd
                if (targetPos - tHrp.Position).Magnitude <= dartDist then
                    dartPhase = false
                    dartStart = tick()
                end
            else
                targetPos = hrp.Position - (tHrp.Position - hrp.Position).Unit * dartDist
                if (targetPos - hrp.Position).Magnitude <= 0.1 then
                    dartPhase = true
                    dartStart = tick()
                end
            end
            targetPos = Vector3.new(targetPos.X, height, targetPos.Z)
        elseif Library.Flags['ts_type'] == 'Spiral' then
            spiralAngle = spiralAngle + spd * 0.1
            targetPos = tHrp.Position + Vector3.new(radius * mathcos(spiralAngle), height, radius * mathsin(spiralAngle))
        elseif Library.Flags['ts_type'] == 'Wobble' then
            local wobble = (radius * 0.5) * mathsin(tick() * (2 * mathpi * 0.1))
            targetPos = tHrp.Position + Vector3.new(
                radius * mathcos(random() * 2 * mathpi) + wobble,
                height,
                radius * mathsin(random() * 2 * mathpi) + wobble
            )
        end

        if targetPos then
            if targetPos.Y < 0 then targetPos = Vector3.new(targetPos.X, 0, targetPos.Z) end
            hrp.CFrame = CFrame.new(targetPos)
            r15Chr:PivotTo(CFrame.new(targetPos))
        end

        setVis(Players.LocalPlayer.Character, false)
        setCloneVis(r15Chr, true)
        setCam(tHrp)
    else
        setVis(Players.LocalPlayer.Character, true)
        setCloneVis(r15Chr, false)
        resetCam()
    end
end, "targetstrafe")
