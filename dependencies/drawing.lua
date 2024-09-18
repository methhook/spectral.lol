local Render = {}
Render.Objects = {}

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

    if type == "Circle" then
        local circle = Draw({
            BackgroundColor3 = properties.Color or Color3.fromRGB(255, 255, 255),
            Size = UDim2.new(0, properties.Radius * 2, 0, properties.Radius * 2),
            Transparency = properties.Transparency or 0,
            Visible = properties.Visible
        })
        circle.Position = UDim2.new(0, properties.Position.X, 0, properties.Position.Y)

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(1, 0)
        corner.Parent = circle

        if properties.Gradient then
            Gradient(circle, properties.Gradient)
        end

        if properties.Outline then
            Outline(circle, properties.Outline.Color or Color3.fromRGB(0, 0, 0), properties.Outline.Thickness or 1)
        end

        self.Objects[#self.Objects + 1] = circle
        return circle

    elseif type == "Square" then
        local square = Draw({
            BackgroundColor3 = properties.Color or Color3.fromRGB(255, 255, 255),
            Size = UDim2.new(0, properties.Size.X, 0, properties.Size.Y),
            BackgroundTransparency = properties.Transparency or 0,
            Visible = properties.Visible
        })
        square.Position = UDim2.new(0, properties.Position.X, 0, properties.Position.Y)

        if properties.Gradient then
            Gradient(square, properties.Gradient)
        end

        if properties.Outline then
            Outline(square, properties.Outline.Color or Color3.fromRGB(0, 0, 0), properties.Outline.Thickness or 1)
        end

        self.Objects[#self.Objects + 1] = square
        return square

    elseif type == "Quad" then
        if #properties.Points ~= 4 then
            error("Quad requires exactly 4 points.")
            return nil
        end
        local quad = Instance.new("Frame")
        quad.BackgroundTransparency = properties.Transparency or 0
        quad.BorderSizePixel = 0
        quad.Visible = properties.Visible or true
        quad.Parent = game:GetService("CoreGui")
        local minX, minY, maxX, maxY = properties.Points[1].X, properties.Points[1].Y, properties.Points[1].X, properties.Points[1].Y
        for _, point in ipairs(properties.Points) do
            minX = math.min(minX, point.X)
            minY = math.min(minY, point.Y)
            maxX = math.max(maxX, point.X)
            maxY = math.max(maxY, point.Y)
        end

        quad.Position = UDim2.new(0, minX, 0, minY)
        quad.Size = UDim2.new(0, maxX - minX, 0, maxY - minY)
        if properties.Gradient then
            Gradient(quad, properties.Gradient)
        end

        if properties.Outline then
            Outline(quad, properties.Outline.Color or Color3.fromRGB(0, 0, 0), properties.Outline.Thickness or 1)
        end

        self.Objects[#self.Objects + 1] = quad
        return quad

    elseif type == "Line" then
        local line = Instance.new("Frame")
        line.Size = UDim2.new(0, properties.Thickness or 1, 0, properties.Length or 100)
        line.Position = UDim2.new(0, properties.Position.X, 0, properties.Position.Y)
        line.BackgroundColor3 = properties.Color or Color3.fromRGB(255, 255, 0)
        line.BorderSizePixel = 0
        line.AnchorPoint = Vector2.new(0.5, 0.5)
        line.Visible = properties.Visible or true
        line.Parent = game:GetService("CoreGui")

        if properties.Gradient then
            Gradient(line, properties.Gradient)
        end

        if properties.Outline then
            Outline(line, properties.Outline.Color or Color3.fromRGB(0, 0, 0), properties.Outline.Thickness or 1)
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
        text_L.Text = properties.Text or "Text"
        text_L.TextColor3 = properties.Color or Color3.fromRGB(255, 255, 255)
        text_L.Size = UDim2.new(0, properties.Size.X, 0, properties.Size.Y)
        text_L.Position = UDim2.new(0, properties.Position.X, 0, properties.Position.Y)
        text_L.BackgroundTransparency = 1
        text_L.Visible = properties.Visible or true
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
            Outline(text_L, properties.Outline.Color or Color3.fromRGB(0, 0, 0), properties.Outline.Thickness or 1)
        end

        self.Objects[#self.Objects + 1] = text_L
        return text_L
    end
end
return  Render
