MoneyLib = require(game:GetService("ReplicatedStorage").MoneyLib)

wikiscreenGui = Instance.new("ScreenGui")
wikiscreenGui.IgnoreGuiInset = true
wikiscreenGui.Parent = game:GetService("CoreGui")
wikiscreenGui.Name = "In-game Wiki"

wikiframe = Instance.new("ImageLabel")
wikiframe.Image = "rbxassetid://4641149554"
wikiframe.Size = UDim2.new(0,671.5,0,415)
wikiframe.AnchorPoint = Vector2.new(0.5,0.5)
wikiframe.Position = UDim2.new(0.5,0,0.5,0)
wikiframe.ImageColor3 = Color3.fromRGB(24,24,24)
wikiframe.BackgroundTransparency = 1
wikiframe.ScaleType = "Slice"
wikiframe.SliceCenter = Rect.new(4,4,296,296)
wikiframe.BorderSizePixel = 0
wikiframe.Parent = wikiscreenGui
wikiframe.Name = "Upgraders"

wikiglow = Instance.new("ImageLabel")
wikiglow.Name = "Glow"
wikiglow.BackgroundTransparency = 1
wikiglow.Position = UDim2.new(0, -15, 0, -15)
wikiglow.Size = UDim2.new(1, 30, 1, 30)
wikiglow.ZIndex = 0
wikiglow.Image = "rbxassetid://5028857084"
wikiglow.ImageTransparency = 0
wikiglow.ImageColor3 = Color3.fromRGB(255,255,255)
wikiglow.ScaleType = Enum.ScaleType.Slice
wikiglow.SliceCenter = Rect.new(24, 24, 276, 276)
wikiglow.Parent = wikiframe
wikiglow.ZIndex = 1

wikitopbar = Instance.new("ImageLabel")
wikitopbar.Image = "rbxassetid://4595286933"
wikitopbar.Size = UDim2.new(1,0,0,38)
wikitopbar.Position = UDim2.new(0,0,0,0)
wikitopbar.ImageColor3 = Color3.fromRGB(14,14,14)
wikitopbar.BackgroundTransparency = 1
wikitopbar.ScaleType = "Slice"
wikitopbar.SliceCenter = Rect.new(4,4,296,296)
wikitopbar.BorderSizePixel = 0
wikitopbar.Parent = wikiframe

topbarwikitext = Instance.new("TextLabel")
topbarwikitext.Font = Enum.Font.Jura
topbarwikitext.BackgroundTransparency = 1
topbarwikitext.Size = UDim2.new(1,0,0,38)
topbarwikitext.Position = UDim2.new(0,0,0,0)
topbarwikitext.Parent = wikitopbar
topbarwikitext.Text = "Vulcan's Wrath"
topbarwikitext.TextColor3 = Color3.fromRGB(255,255,255)
topbarwikitext.TextSize = 18

viewcam = Instance.new("Camera")
viewcam.Parent = wikiscreenGui

viewport = Instance.new("ViewportFrame")
viewport.Parent = wikiframe
viewport.Size = UDim2.new(0,375,0,300)
viewport.Position = UDim2.new(0,4,0,38)
viewport.BackgroundColor3 = Color3.fromRGB(24,24,24)
viewport.BorderSizePixel = 4
viewport.BorderColor3 = Color3.fromRGB(14,14,14)
viewport.BackgroundTransparency = 0
viewport.CurrentCamera = wikiscreenGui.Camera

shinywiki = Instance.new("TextButton")
shinywiki.Parent = viewport
shinywiki.Text = "Shiny"
shinywiki.TextSize = 14
shinywiki.TextColor3 = Color3.fromRGB(255,255,255)
shinywiki.BackgroundColor3 = Color3.fromRGB(14,14,14)
shinywiki.BackgroundTransparency = 1
shinywiki.TextTransparency = 1
shinywiki.AutoButtonColor = false
shinywiki.Position = UDim2.new(0.815,0,0.033,0)
shinywiki.Size = UDim2.new(0,60,0,26)
shinywiki.Font = Enum.Font.Jura

shinywikicorn = Instance.new("UICorner")
shinywikicorn.Parent = shinywiki

tierlabel = Instance.new("TextLabel")
tierlabel.Parent = wikiframe
tierlabel.Size = UDim2.new(0,375,0,49)
tierlabel.Position = UDim2.new(0.009,0,0.848,0)
tierlabel.BackgroundColor3 = Color3.fromRGB(14,14,14)
tierlabel.TextColor3 = Color3.fromRGB(255,255,255)
tierlabel.Font = Enum.Font.Jura
tierlabel.TextSize = 18
tierlabel.Text = "placeholder"

tiercorner = Instance.new("UICorner")
tiercorner.Parent = tierlabel

masterscroll = Instance.new("ScrollingFrame")
masterscroll.BackgroundColor3 = Color3.fromRGB(24,24,24)
masterscroll.BackgroundTransparency = 1
masterscroll.BorderSizePixel = 0
masterscroll.Parent = wikiframe
masterscroll.Position = UDim2.new(0.574,-4,0.116,0)
masterscroll.Size = UDim2.new(0,284,0,353)
--masterscroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
masterscroll.ScrollBarImageColor3 = Color3.fromRGB(14,14,14)
masterscroll.ScrollingDirection = "Y"
masterscroll.ScrollBarThickness = 3
masterscroll.CanvasSize = UDim2.new(0,0,0,0)
masterscroll.Name = "masterscroll"

masterlayout = Instance.new("UIListLayout")
masterlayout.Parent = masterscroll
masterlayout.Padding = UDim.new(0,7.5)
masterlayout.HorizontalAlignment = "Center"
masterlayout.SortOrder = "LayoutOrder"

effectstab = Instance.new("TextLabel")
effectstab.Parent = masterscroll
effectstab.Size = UDim2.new(0,214,0,27)
effectstab.Position = UDim2.new(0.085,0,-0.001,0)
effectstab.BackgroundColor3 = Color3.fromRGB(14,14,14)
effectstab.TextColor3 = Color3.fromRGB(255,255,255)
effectstab.Font = Enum.Font.Jura
effectstab.TextSize = 18
effectstab.LayoutOrder = 0
effectstab.Text = "Effects"

effectscorn = Instance.new("UICorner")
effectscorn.Parent = effectstab

sfeffects = Instance.new("ScrollingFrame")
sfeffects.BackgroundColor3 = Color3.fromRGB(24,24,24)
sfeffects.BorderSizePixel = 0
sfeffects.Parent = masterscroll
sfeffects.Position = UDim2.new(0.085,0,0.098,0)
sfeffects.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfeffects.ScrollBarImageColor3 = Color3.fromRGB(14,14,14)
sfeffects.ScrollingDirection = "Y"
sfeffects.ScrollBarThickness = 3
sfeffects.Size = UDim2.new(0,214,0,102)
sfeffects.CanvasSize = UDim2.new(0,0,0,0)
sfeffects.Name = "ScrollingEffects"

effectsTxt = Instance.new("TextLabel")
effectsTxt.Parent = sfeffects
effectsTxt.Size = UDim2.new(0,207,0,0)
effectsTxt.AutomaticSize = Enum.AutomaticSize.Y
effectsTxt.Position = UDim2.new(0,0,0,0)
effectsTxt.BackgroundTransparency = 1
effectsTxt.TextColor3 = Color3.fromRGB(255,255,255)
effectsTxt.Font = Enum.Font.Jura
effectsTxt.RichText = true
effectsTxt.TextWrapped = true
effectsTxt.TextYAlignment = "Top"
effectsTxt.TextSize = 15
effectsTxt.Text = "Placeholder"

drawbackstab = Instance.new("TextLabel")
drawbackstab.Parent = masterscroll
drawbackstab.Size = UDim2.new(0,214,0,27)
drawbackstab.Position = UDim2.new(0.085,0,0.411,0)
drawbackstab.BackgroundColor3 = Color3.fromRGB(14,14,14)
drawbackstab.TextColor3 = Color3.fromRGB(255,255,255)
drawbackstab.Font = Enum.Font.Jura
drawbackstab.TextSize = 18
drawbackstab.Text = "Drawbacks"

drawbackscorn = Instance.new("UICorner")
drawbackscorn.Parent = drawbackstab

sfdrawbacks = Instance.new("ScrollingFrame")
sfdrawbacks.BackgroundColor3 = Color3.fromRGB(24,24,24)
sfdrawbacks.BorderSizePixel = 0
sfdrawbacks.Parent = masterscroll
sfdrawbacks.Position = UDim2.new(0.085,0,0.504,0)
sfdrawbacks.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfdrawbacks.ScrollBarImageColor3 = Color3.fromRGB(14,14,14)
sfdrawbacks.ScrollingDirection = "Y"
sfdrawbacks.ScrollBarThickness = 3
sfdrawbacks.Size = UDim2.new(0,214,0,60)
sfdrawbacks.CanvasSize = UDim2.new(0,0,0,0)
sfdrawbacks.Name = "Scrollingdrawbacks"

drawbacksTxt = Instance.new("TextLabel")
drawbacksTxt.Parent = sfdrawbacks
drawbacksTxt.Size = UDim2.new(0,207,0,0)
drawbacksTxt.AutomaticSize = Enum.AutomaticSize.Y
drawbacksTxt.Position = UDim2.new(0,0,0,0)
drawbacksTxt.BackgroundTransparency = 1
drawbacksTxt.TextColor3 = Color3.fromRGB(255,255,255)
drawbacksTxt.Font = Enum.Font.Jura
drawbacksTxt.RichText = true
drawbacksTxt.TextWrapped = true
drawbacksTxt.TextYAlignment = "Top"
drawbacksTxt.TextSize = 15
drawbacksTxt.Text = "Placeholder"

sourcetab = Instance.new("TextLabel")
sourcetab.Parent = masterscroll
sourcetab.Size = UDim2.new(0,214,0,27)
sourcetab.Position = UDim2.new(0.085,0,0.694,0)
sourcetab.BackgroundColor3 = Color3.fromRGB(14,14,14)
sourcetab.TextColor3 = Color3.fromRGB(255,255,255)
sourcetab.Font = Enum.Font.Jura
sourcetab.TextSize = 18
sourcetab.Text = "Source"

sourcecorn = Instance.new("UICorner")
sourcecorn.Parent = sourcetab

sfsource = Instance.new("ScrollingFrame")
sfsource.BackgroundColor3 = Color3.fromRGB(24,24,24)
sfsource.BorderSizePixel = 0
sfsource.Parent = masterscroll
sfsource.Position = UDim2.new(0.085,0,0.788,0)
sfsource.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfsource.ScrollBarImageColor3 = Color3.fromRGB(14,14,14)
sfsource.ScrollingDirection = "Y"
sfsource.ScrollBarThickness = 3
sfsource.Size = UDim2.new(0,214,0,51)
sfsource.CanvasSize = UDim2.new(0,0,0,0)
sfsource.Name = "Scrollingsource"

sourceTxt = Instance.new("TextLabel")
sourceTxt.Parent = sfsource
sourceTxt.Size = UDim2.new(0,207,0,0)
sourceTxt.AutomaticSize = Enum.AutomaticSize.Y
sourceTxt.Position = UDim2.new(0,0,0,0)
sourceTxt.BackgroundTransparency = 1
sourceTxt.TextColor3 = Color3.fromRGB(255,255,255)
sourceTxt.Font = Enum.Font.Jura
sourceTxt.RichText = true
sourceTxt.TextWrapped = true
sourceTxt.TextYAlignment = "Top"
sourceTxt.TextSize = 15
sourceTxt.Text = "Placeholder"

upgradetab = Instance.new("TextLabel")
upgradetab.Parent = masterscroll
upgradetab.Size = UDim2.new(0,214,0,27)
upgradetab.Position = UDim2.new(0.085,0,0.694,0)
upgradetab.BackgroundColor3 = Color3.fromRGB(14,14,14)
upgradetab.TextColor3 = Color3.fromRGB(255,255,255)
upgradetab.Font = Enum.Font.Jura
upgradetab.TextSize = 18
upgradetab.Text = "Upgrade Cap"

upgradecorn = Instance.new("UICorner")
upgradecorn.Parent = upgradetab

sfupgrade = Instance.new("ScrollingFrame")
sfupgrade.BackgroundColor3 = Color3.fromRGB(24,24,24)
sfupgrade.BorderSizePixel = 0
sfupgrade.Parent = masterscroll
sfupgrade.Position = UDim2.new(0.085,0,0.788,0)
sfupgrade.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfupgrade.ScrollBarImageColor3 = Color3.fromRGB(14,14,14)
sfupgrade.ScrollingDirection = "Y"
sfupgrade.ScrollBarThickness = 3
sfupgrade.Size = UDim2.new(0,214,0,51)
sfupgrade.CanvasSize = UDim2.new(0,0,0,0)
sfupgrade.Name = "Scrollingupgrade"

upgradeTxt = Instance.new("TextLabel")
upgradeTxt.Parent = sfupgrade
upgradeTxt.Size = UDim2.new(0,207,0,0)
upgradeTxt.AutomaticSize = Enum.AutomaticSize.Y
upgradeTxt.Position = UDim2.new(0,0,0,0)
upgradeTxt.BackgroundTransparency = 1
upgradeTxt.TextColor3 = Color3.fromRGB(255,255,255)
upgradeTxt.Font = Enum.Font.Jura
upgradeTxt.RichText = true
upgradeTxt.TextWrapped = true
upgradeTxt.TextYAlignment = "Top"
upgradeTxt.TextSize = 15
upgradeTxt.Text = "Placeholder"

sfvalues = Instance.new("Frame")
sfvalues.BackgroundColor3 = Color3.fromRGB(14,14,14)
sfvalues.BackgroundTransparency = 0
sfvalues.BorderSizePixel = 0
sfvalues.Parent = masterscroll
sfvalues.Position = UDim2.new(0.085,0,0.946,0)
sfvalues.AutomaticSize = Enum.AutomaticSize.Y
sfvalues.Size = UDim2.new(0,214,0,0)
sfvalues.Name = "Values"

valueslayout = Instance.new("UIListLayout")
valueslayout.Parent = sfvalues
valueslayout.Padding = UDim.new(0,0)
valueslayout.SortOrder = "LayoutOrder"

valuescorn = Instance.new("UICorner")
valuescorn.Parent = sfvalues

function addValueLabel(name, order, text)
    local valuestab = Instance.new("TextLabel")
    valuestab.Parent = sfvalues
    valuestab.Size = UDim2.new(0,214,0,27)
    valuestab.BackgroundColor3 = Color3.fromRGB(14,14,14)
    valuestab.BackgroundTransparency = 1
    valuestab.TextColor3 = Color3.fromRGB(255,255,255)
    valuestab.Font = Enum.Font.Jura
    valuestab.TextScaled = true
    valuestab.Text = text
    valuestab.LayoutOrder = order
    valuestab.Name = name

    local valuescorn = Instance.new("UICorner")
    valuescorn.Parent = valuestab

    local valuesCon = Instance.new("UITextSizeConstraint")
    valuesCon.MaxTextSize = 18
    valuesCon.Parent = valuestab
end

function newItem(name) 
    topbarwikitext.Text = name
    masterscroll.CanvasSize = UDim2.new(0,0,0,0)
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
for i,v in pairs(viewport:GetChildren()) do
    if v:IsA("Model") then
        v:Destroy()
    end
end
for i, connection in pairs(getconnections(RunService.RenderStepped)) do
    connection:Disable()
end
for i,v in pairs(wikiscreenGui.Upgraders.masterscroll.Values:GetChildren()) do
    if v:isA("TextLabel") then
        v:Destroy()
    end
end
local item = game:GetService("ReplicatedStorage").Items[name]

itemport = item:Clone()
itemport.Parent = viewport
 
local target = itemport.Hitbox 
local camera = viewcam
camera.CameraType = Enum.CameraType.Scriptable

local rotationAngle = Instance.new("NumberValue")
local tweenComplete = false
--local modelCF, modelSize = itemport:GetBoundingBox()
local modelSize = itemport.Hitbox.Size
local diagonal = 0
local maxExtent = math.max(modelSize.x, modelSize.y, modelSize.z)
local tan = math.tan(math.rad(camera.FieldOfView/2))

if (maxExtent == modelSize.x) then
	diagonal = math.sqrt(modelSize.y*modelSize.y + modelSize.z*modelSize.z)/2
elseif (maxExtent == modelSize.y) then
	diagonal = math.sqrt(modelSize.x*modelSize.x + modelSize.z*modelSize.z)/2
else
	diagonal = math.sqrt(modelSize.x*modelSize.x + modelSize.y*modelSize.y)/2
end

local minDist = (maxExtent/2)/tan + diagonal
local cameraOffset = Vector3.new(0,diagonal*0.75, minDist)
local rotationTime = 15  -- Time in seconds
local rotationDegrees = 360
local rotationRepeatCount = -1  -- Use -1 for infinite repeats
local lookAtTarget = true  -- Whether the camera tilts to point directly at the target
 
local function updateCamera()
	if not target then return end
	camera.Focus = target.CFrame
	local rotatedCFrame = CFrame.Angles(0, math.rad(rotationAngle.Value), 0)
	rotatedCFrame = CFrame.new(target.Position) * rotatedCFrame
	camera.CFrame = rotatedCFrame:ToWorldSpace(CFrame.new(cameraOffset))
	if lookAtTarget == true then
		camera.CFrame = CFrame.new(camera.CFrame.Position, target.Position)
	end
end
 
local tweenInfo = TweenInfo.new(rotationTime, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, rotationRepeatCount)
local tween = TweenService:Create(rotationAngle, tweenInfo, {Value=rotationDegrees})
tween.Completed:Connect(function()
	tweenComplete = true
end)
tween:Play()
 
RunService.RenderStepped:Connect(function()
	if tweenComplete == false then
		updateCamera()
	end
end)
local HttpService = game:GetService("HttpService")
local itemdata = game:HttpGet("https://raw.githubusercontent.com/slendercreeper/MinersHaven/main/wiki%20reference")

local alldata = HttpService:JSONDecode(itemdata)
local rimd
for i,v in pairs(alldata) do
	if i == name then
        rimd = v
    end
end
local tier = itemport.Tier.Value
tier = game:GetService("ReplicatedStorage").Tiers[tier].TierName.Value
tierlabel.Text = tier
sfeffects.Size = UDim2.new(0,214,0,102)
sfdrawbacks.Size = UDim2.new(0,214,0,60)
sfsource.Size = UDim2.new(0,214,0,51)
sfupgrade.Size = UDim2.new(0,214,0,51)
effectsTxt.Text = rimd.effects
drawbacksTxt.Text = rimd.drawbacks
if itemport:FindFirstChild("RebirthRequirement") then
    sourceTxt.Text = rimd.source .. " (Life " .. itemport.RebirthRequirement.Value .."+)"
else
    sourceTxt.Text = rimd.source
end
if tier == "Reborn" then
    sourceTxt.Text = rimd.source .. " (Life " .. itemport.ReqLife.Value .."+)"
    addValueLabel("Rarity", 0, "Rarity: " .. itemport.RebornChance.Value)
    if itemport:FindFirstChild("ShardSalvagePrice") then
        addValueLabel("Salvage", 0, "Salvage Yield: " .. itemport.ShardSalvagePrice.Value)
    end
    if itemport:FindFirstChild("RebornShopPrice") then
        addValueLabel("rebshop", 0, "Craftsman Cost: " .. itemport.RebornShopPrice.Value)
    end
end
upgradeTxt.Text = rimd.limit
if tier == "Common" or tier == "Uncommon" or tier == "Rare" or tier == "Super Rare" or tier == "Unique" or tier == "Epic" or tier == "Legendary" or tier == "Mythic" or tier == "Divine" or tier == "Almighty" then
    addValueLabel("Cost", 0, "Cost: " .. MoneyLib.HandleMoney(itemport.Cost.Value))
end
if tier == "Refined" or tier == "Premium" then
    if itemport:FindFirstChild("Crystals") then
    addValueLabel("Cost", 0, "Cost: " .. itemport.Crystals.Value .."uC")
    end
end
if tier == "Contraband" then
    addValueLabel("Cost", 0, rimd.cost)
end
addValueLabel("RebProof", 1, rimd.reb)
addValueLabel("SacbProof", 2, rimd.sac)
addValueLabel("ItemId", 3, "Item Id: " .. itemport.ItemId.Value)
if tier == "Common" or tier == "Uncommon" or tier == "Rare" or tier == "Super Rare" or tier == "Unique" or tier == "Epic" or tier == "Legendary" or tier == "Mythic" or tier == "Divine" or tier == "Almighty" then
addValueLabel("RP Required", 7, "RP Required: " .. string.gsub(MoneyLib.HandleMoney(itemport.ReqPoints.Value), "%$", ""))
end
local oneconv = false
for i,v in pairs(itemport:GetDescendants()) do
    if v.Name == "ConveyorSpeed" and oneconv == false then
        oneconv = true
        addValueLabel("ConvSpeed", 8, "Conveyor Speed: " .. math.round(v.Value*10) .. "%")
    end
end
if drawbacksTxt.AbsoluteSize.Y < 60 then
    sfdrawbacks.Size = UDim2.new(0,sfdrawbacks.Size.X.Offset,0,drawbacksTxt.AbsoluteSize.Y+1)
end
if effectsTxt.AbsoluteSize.Y < 102 then
    sfeffects.Size = UDim2.new(0,sfeffects.Size.X.Offset,0,effectsTxt.AbsoluteSize.Y+1)
end
if sourceTxt.AbsoluteSize.Y < 51 then
    sfsource.Size = UDim2.new(0,sfsource.Size.X.Offset,0,sourceTxt.AbsoluteSize.Y+1)
end
if upgradeTxt.AbsoluteSize.Y < 51 then
    sfupgrade.Size = UDim2.new(0,sfupgrade.Size.X.Offset,0,upgradeTxt.AbsoluteSize.Y+1)
end
masterscroll.CanvasSize = UDim2.new(0,0,0,masterlayout.AbsoluteContentSize.Y)
end

newItem("Professional Upgrader")

