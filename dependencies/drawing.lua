--[[
Made by Summon
Dont Steal SKIDDER(S)


Experience better Drawing, (Better Version of Drawing Library.)

Thanks for using uhh star if was good, idk if there's bug's never thoroughly tested.
]]--

local Render = {}
Render.Objects = {}

local function Conversion(vector2, scale)
    return UDim2.new(0, vector2.X, 0, vector2.Y)
end

local function Draw(properties)
    local frame = Instance.new("Frame")
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.BorderSizePixel = 0
    frame.BackgroundTransparency = 1
    frame.Visible = properties.Visible or false
    for prop, value in pairs(properties) do
        frame[prop] = value
    end
    frame.Parent = Instance.new("ScreenGui", game.CoreGui)
    return frame
end

local function Gradient(object, properties)
    local gradient = Instance.new("UIGradient")

    if properties.Color then
        local ColorKPS = {}
        for i, color in ipairs(properties.Color) do
            table.insert(ColorKPS, ColorSequenceKeypoint.new((i - 1) / (#properties.Color - 1), color))
        end

        gradient.Color = ColorSequence.new(ColorKPS)
    end

    gradient.Rotation = properties.Rotation or 0
    gradient.Parent = object
    if properties.AutoRotate then
        local Rotation_Speed = properties.RotationSpeed or 10
        local Start = tick()

        game:GetService("RunService").RenderStepped:Connect(function()
            local Elapsed = tick() - Start
            gradient.Rotation = (Elapsed * Rotation_Speed) % 360
        end)
    end
end

local function Outline(object, color, thickness)
    local outline = Instance.new("UIStroke")
    outline.Thickness = thickness
    outline.Color = color
    outline.Parent = object
end

function Render:new(type, properties)
    properties = properties or {}

    local default_props = {
        Color = Color3.fromRGB(1, 1, 1),
        Size = Vector2.new(100, 100),
        Transparency = 0,
        Visible = true,
        Gradient = nil,
        Outline = nil,
        Rotation = 0,
        RotationSpeed = 120,
        AutoRotate = false,
        Thickness = 1,
        Points = nil,
        Length = 100,
        Text = "Text",
        Font = Enum.Font.Code,
        Position = Vector2.new(0, 0)
    }
    properties = setmetatable(properties, {__index = default_props})

    if type == "Circle" then
        local circle = Draw({
            BackgroundColor3 = properties.Color,
            Size = Conversion(properties.Size or Vector2.new(properties.Radius * 2, properties.Radius * 2)),
            Transparency = properties.Transparency,
            Visible = properties.Visible
        })
        circle.Position = Conversion(properties.Position)

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(1, 0)
        corner.Parent = circle

        if properties.Gradient then
            Gradient(circle, properties.Gradient)
        end

        if properties.Outline then
            Outline(circle, properties.Outline.Color or Color3.fromRGB(0, 0, 0), properties.Outline.Thickness)
        end

        self.Objects[#self.Objects + 1] = circle
        return circle

    elseif type == "Square" then
        local square = Draw({
            BackgroundColor3 = properties.Color,
            Size = Conversion(properties.Size),
            BackgroundTransparency = properties.Transparency,
            Visible = properties.Visible
        })
        square.Position = Conversion(properties.Position)

        if properties.Gradient then
            Gradient(square, properties.Gradient)
        end

        if properties.Outline then
            Outline(square, properties.Outline.Color or Color3.fromRGB(0, 0, 0), properties.Outline.Thickness)
        end

        self.Objects[#self.Objects + 1] = square
        return square

    elseif type == "Quad" then
        if not properties.Points or #properties.Points ~= 4 then
            error("Quad requires exactly 4 points.")
            return nil
        end
        local quad = Instance.new("Frame")
        quad.BackgroundTransparency = properties.Transparency
        quad.BorderSizePixel = 0
        quad.Visible = properties.Visible
        quad.Parent = game:GetService("CoreGui")

        local minX, minY, maxX, maxY = properties.Points[1].X, properties.Points[1].Y, properties.Points[1].X, properties.Points[1].Y
        for _, point in ipairs(properties.Points) do
            minX = math.min(minX, point.X)
            minY = math.min(minY, point.Y)
            maxX = math.max(maxX, point.X)
            maxY = math.max(maxY, point.Y)
        end

        quad.Position = Conversion(Vector2.new(minX, minY))
        quad.Size = Conversion(Vector2.new(maxX - minX, maxY - minY))
        if properties.Gradient then
            Gradient(quad, properties.Gradient)
        end

        if properties.Outline then
            Outline(quad, properties.Outline.Color or Color3.fromRGB(0, 0, 0), properties.Outline.Thickness)
        end

        self.Objects[#self.Objects + 1] = quad
        return quad

    elseif type == "Line" then
        local line = Instance.new("Frame")
        line.Size = Conversion(Vector2.new(properties.Thickness, properties.Length))
        line.Position = Conversion(properties.Position)
        line.BackgroundColor3 = properties.Color
        line.BorderSizePixel = 0
        line.AnchorPoint = Vector2.new(0.5, 0.5)
        line.Visible = properties.Visible
        line.Parent = game:GetService("CoreGui")

        if properties.Gradient then
            Gradient(line, properties.Gradient)
        end

        if properties.Outline then
            Outline(line, properties.Outline.Color or Color3.fromRGB(0, 0, 0), properties.Outline.Thickness)
        end
        if properties.Points then
            local p1, p2 = properties.Points[1], properties.Points[2]
            local angle = math.atan2(p2.Y - p1.Y, p2.X - p1.X)
            line.Rotation = math.deg(angle)
        end

        self.Objects[#self.Objects + 1] = line
        return line

    elseif type == "Text" then
        local text_L = Instance.new("TextLabel")
        text_L.Text = properties.Text
        text_L.TextColor3 = properties.Color
        text_L.Size = Conversion(properties.Size)
        text_L.Position = Conversion(properties.Position)
        text_L.BackgroundTransparency = 1
        text_L.Visible = properties.Visible
        text_L.Parent = Instance.new('ScreenGui', game.CoreGui)
        if properties.Font then
            if typeof(properties.Font) == "EnumItem" then
                text_L.Font = properties.Font
            else
                text_L.FontFace = Font.new(properties.Font)
            end
        else
            text_L.Font = Enum.Font.Code
        end

        if properties.Gradient then
            Gradient(text_L, properties.Gradient)
        end

        if properties.Outline then
            Outline(text_L, properties.Outline.Color or Color3.fromRGB(0, 0, 0), properties.Outline.Thickness)
        end

        self.Objects[#self.Objects + 1] = text_L
        return text_L
    end
end

return Render
