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

backwiki = Instance.new("TextButton")
backwiki.Parent = viewport
backwiki.Text = "Back"
backwiki.TextSize = 14
backwiki.TextColor3 = Color3.fromRGB(255,255,255)
backwiki.BackgroundColor3 = Color3.fromRGB(14,14,14)
backwiki.BackgroundTransparency = 1
backwiki.TextTransparency = 1
backwiki.AutoButtonColor = false
backwiki.Position = UDim2.new(0.027,0,0.033,0)
backwiki.Size = UDim2.new(0,60,0,26)
backwiki.Font = Enum.Font.Jura

backwikicorn = Instance.new("UICorner")
backwikicorn.Parent = backwiki

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
sfeffects.AutomaticSize = Enum.AutomaticSize.Y
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
sfdrawbacks.AutomaticSize = Enum.AutomaticSize.Y
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
sfsource.AutomaticSize = Enum.AutomaticSize.Y
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
sfupgrade.AutomaticSize = Enum.AutomaticSize.Y
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
for i,v in pairs(wikiframe:GetChildren()) do
    if v:isA("Model") then
        v:Destroy()
    end
end
for i,v in pairs(wikiscreenGui.Upgraders.masterscroll.Values:GetChildren()) do
    if v:isA("TextLabel") then
        v:Destroy()
    end
end
local item = game:GetService("ReplicatedStorage").Items[name]

itemport = item:Clone()
itemport.Parent = viewport
itemport.PrimaryPart = itemport.Hitbox
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
 
_G.cam = RunService.RenderStepped:Connect(function()
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
elseif itemport:FindFirstChild("UnlockAt") then
    sourceTxt.Text = rimd.source .. " (Life " .. itemport.UnlockAt.Value .."+)"
else   
    sourceTxt.Text = rimd.source
end
if itemport:FindFirstChild("EnchantCost") then
    for i,v in pairs(itemport.EnchantCost:GetChildren()) do
        if tonumber(v.Name) ~= nil then
            for o,r in pairs(game.ReplicatedStorage.Items:GetChildren()) do
                if r.ItemId.Value == tonumber(v.Name) then
                    sourceTxt.Text = sourceTxt.Text .. "x" .. v.Value .. " " .. r.Name
                end
            end
        elseif v.Name == "Shards" then
            sourceTxt.Text = sourceTxt.Text .. v.Value .. " Shards"
        end

        if i ~= #itemport.EnchantCost:GetChildren() then
            sourceTxt.Text = sourceTxt.Text .. "\n"
        end
    end
end
if tier == "Evolved Reborn" or tier == "Adv. Evolution" then
    for i,v in pairs(game.ReplicatedStorage.Items:GetChildren()) do
        if v:FindFirstChild("RequiredEvo") then
            if v.RequiredEvo.Value == itemport.ItemId.Value then
                local evoshiny = Instance.new("IntValue")
                evoshiny.Parent = itemport
                evoshiny.Value = v.ItemId.Value
                evoshiny.Name = "ShinyId"
            end
        end
    end
end
if tier == "Reborn" or tier == "Adv. Reborn" then
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
if itemport:FindFirstChild("BlueprintPrice") then
    addValueLabel("blueprint", 0, "Blueprint: " .. string.gsub(MoneyLib.HandleMoney(itemport.BlueprintPrice.Value), "%$", "") .. " RP")
end
if tier == "Contraband" then
    addValueLabel("Cost", 0, rimd.cost)
end
addValueLabel("RebProof", 1, rimd.reb)
addValueLabel("SacbProof", 2, rimd.sac)
addValueLabel("ItemId", 3, "Item Id: " .. itemport.ItemId.Value)
if itemport:FindFirstChild("ShinyId") then
    addValueLabel("ShinyId", 3, "Shiny Id: " .. itemport.ShinyId.Value)
end
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

wikiframeMine = Instance.new("ImageLabel")
wikiframeMine.Image = "rbxassetid://4641149554"
wikiframeMine.Size = UDim2.new(0,671.5,0,415)
wikiframeMine.AnchorPoint = Vector2.new(0.5,0.5)
wikiframeMine.Position = UDim2.new(0.5,0,0.5,0)
wikiframeMine.ImageColor3 = Color3.fromRGB(24,24,24)
wikiframeMine.BackgroundTransparency = 1
wikiframeMine.ScaleType = "Slice"
wikiframeMine.SliceCenter = Rect.new(4,4,296,296)
wikiframeMine.BorderSizePixel = 0
wikiframeMine.Parent = wikiscreenGui
wikiframeMine.Name = "Mines"

wikiglowMine = Instance.new("ImageLabel")
wikiglowMine.Name = "Glow"
wikiglowMine.BackgroundTransparency = 1
wikiglowMine.Position = UDim2.new(0, -15, 0, -15)
wikiglowMine.Size = UDim2.new(1, 30, 1, 30)
wikiglowMine.ZIndex = 0
wikiglowMine.Image = "rbxassetid://5028857084"
wikiglowMine.ImageTransparency = 0
wikiglowMine.ImageColor3 = Color3.fromRGB(255,255,255)
wikiglowMine.ScaleType = Enum.ScaleType.Slice
wikiglowMine.SliceCenter = Rect.new(24, 24, 276, 276)
wikiglowMine.Parent = wikiframeMine
wikiglowMine.ZIndex = 1

wikitopbarMine = Instance.new("ImageLabel")
wikitopbarMine.Image = "rbxassetid://4595286933"
wikitopbarMine.Size = UDim2.new(1,0,0,38)
wikitopbarMine.Position = UDim2.new(0,0,0,0)
wikitopbarMine.ImageColor3 = Color3.fromRGB(14,14,14)
wikitopbarMine.BackgroundTransparency = 1
wikitopbarMine.ScaleType = "Slice"
wikitopbarMine.SliceCenter = Rect.new(4,4,296,296)
wikitopbarMine.BorderSizePixel = 0
wikitopbarMine.Parent = wikiframeMine

topbarwikitextMine = Instance.new("TextLabel")
topbarwikitextMine.Font = Enum.Font.Jura
topbarwikitextMine.BackgroundTransparency = 1
topbarwikitextMine.Size = UDim2.new(1,0,0,38)
topbarwikitextMine.Position = UDim2.new(0,0,0,0)
topbarwikitextMine.Parent = wikitopbarMine
topbarwikitextMine.Text = "Vulcan's Wrath"
topbarwikitextMine.TextColor3 = Color3.fromRGB(255,255,255)
topbarwikitextMine.TextSize = 18

viewportMine = Instance.new("ViewportFrame")
viewportMine.Parent = wikiframeMine
viewportMine.Size = UDim2.new(0,375,0,300)
viewportMine.Position = UDim2.new(0,4,0,38)
viewportMine.BackgroundColor3 = Color3.fromRGB(24,24,24)
viewportMine.BorderSizePixel = 4
viewportMine.BorderColor3 = Color3.fromRGB(14,14,14)
viewportMine.BackgroundTransparency = 0
viewportMine.CurrentCamera = wikiscreenGui.Camera

backwikiMine = Instance.new("TextButton")
backwikiMine.Parent = viewportMine
backwikiMine.Text = "Back"
backwikiMine.TextSize = 14
backwikiMine.TextColor3 = Color3.fromRGB(255,255,255)
backwikiMine.BackgroundColor3 = Color3.fromRGB(14,14,14)
backwikiMine.BackgroundTransparency = 1
backwikiMine.TextTransparency = 1
backwikiMine.AutoButtonColor = false
backwikiMine.Position = UDim2.new(0.027,0,0.033,0)
backwikiMine.Size = UDim2.new(0,60,0,26)
backwikiMine.Font = Enum.Font.Jura

backwikicornMine = Instance.new("UICorner")
backwikicornMine.Parent = backwikiMine

shinywikiMine = Instance.new("TextButton")
shinywikiMine.Parent = viewportMine
shinywikiMine.Text = "Shiny"
shinywikiMine.TextSize = 14
shinywikiMine.TextColor3 = Color3.fromRGB(255,255,255)
shinywikiMine.BackgroundColor3 = Color3.fromRGB(14,14,14)
shinywikiMine.BackgroundTransparency = 1
shinywikiMine.TextTransparency = 1
shinywikiMine.AutoButtonColor = false
shinywikiMine.Position = UDim2.new(0.815,0,0.033,0)
shinywikiMine.Size = UDim2.new(0,60,0,26)
shinywikiMine.Font = Enum.Font.Jura

shinywikicornMine = Instance.new("UICorner")
shinywikicornMine.Parent = shinywikiMine

tierlabelMine = Instance.new("TextLabel")
tierlabelMine.Parent = wikiframeMine
tierlabelMine.Size = UDim2.new(0,375,0,49)
tierlabelMine.Position = UDim2.new(0.009,0,0.848,0)
tierlabelMine.BackgroundColor3 = Color3.fromRGB(14,14,14)
tierlabelMine.TextColor3 = Color3.fromRGB(255,255,255)
tierlabelMine.Font = Enum.Font.Jura
tierlabelMine.TextSize = 18
tierlabelMine.Text = "placeholder"

tiercornerMine = Instance.new("UICorner")
tiercornerMine.Parent = tierlabelMine

masterscrollMine = Instance.new("ScrollingFrame")
masterscrollMine.BackgroundColor3 = Color3.fromRGB(24,24,24)
masterscrollMine.BackgroundTransparency = 1
masterscrollMine.BorderSizePixel = 0
masterscrollMine.Parent = wikiframeMine
masterscrollMine.Position = UDim2.new(0.574,-4,0.116,0)
masterscrollMine.Size = UDim2.new(0,284,0,353)
--masterscrollMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
masterscrollMine.ScrollBarImageColor3 = Color3.fromRGB(14,14,14)
masterscrollMine.ScrollingDirection = "Y"
masterscrollMine.ScrollBarThickness = 3
masterscrollMine.CanvasSize = UDim2.new(0,0,0,0)
masterscrollMine.Name = "masterscroll"

masterlayoutMine = Instance.new("UIListLayout")
masterlayoutMine.Parent = masterscrollMine
masterlayoutMine.Padding = UDim.new(0,7.5)
masterlayoutMine.HorizontalAlignment = "Center"
masterlayoutMine.SortOrder = "LayoutOrder"

orevaluetabMine = Instance.new("TextLabel")
orevaluetabMine.Parent = masterscrollMine
orevaluetabMine.Size = UDim2.new(0,214,0,27)
orevaluetabMine.Position = UDim2.new(0.085,0,-0.001,0)
orevaluetabMine.BackgroundColor3 = Color3.fromRGB(14,14,14)
orevaluetabMine.TextColor3 = Color3.fromRGB(255,255,255)
orevaluetabMine.Font = Enum.Font.Jura
orevaluetabMine.TextSize = 18
orevaluetabMine.LayoutOrder = 0
orevaluetabMine.Text = "Ore Value"

orevaluecornMine = Instance.new("UICorner")
orevaluecornMine.Parent = orevaluetabMine

sforevalueMine = Instance.new("ScrollingFrame")
sforevalueMine.BackgroundColor3 = Color3.fromRGB(24,24,24)
sforevalueMine.BorderSizePixel = 0
sforevalueMine.Parent = masterscrollMine
sforevalueMine.Position = UDim2.new(0.085,0,0.098,0)
sforevalueMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
sforevalueMine.ScrollBarImageColor3 = Color3.fromRGB(14,14,14)
sforevalueMine.ScrollingDirection = "Y"
sforevalueMine.ScrollBarThickness = 3
sforevalueMine.AutomaticSize = Enum.AutomaticSize.Y
sforevalueMine.Size = UDim2.new(0,214,0,102)
sforevalueMine.CanvasSize = UDim2.new(0,0,0,0)
sforevalueMine.Name = "Scrollingorevalue"

orevalueTxtMine = Instance.new("TextLabel")
orevalueTxtMine.Parent = sforevalueMine
orevalueTxtMine.Size = UDim2.new(0,207,0,0)
orevalueTxtMine.AutomaticSize = Enum.AutomaticSize.Y
orevalueTxtMine.Position = UDim2.new(0,0,0,0)
orevalueTxtMine.BackgroundTransparency = 1
orevalueTxtMine.TextColor3 = Color3.fromRGB(255,255,255)
orevalueTxtMine.Font = Enum.Font.Jura
orevalueTxtMine.RichText = true
orevalueTxtMine.TextWrapped = true
orevalueTxtMine.TextYAlignment = "Top"
orevalueTxtMine.TextSize = 15
orevalueTxtMine.Text = "Placeholder"

dropratetabMine = Instance.new("TextLabel")
dropratetabMine.Parent = masterscrollMine
dropratetabMine.Size = UDim2.new(0,214,0,27)
dropratetabMine.Position = UDim2.new(0.085,0,-0.001,0)
dropratetabMine.BackgroundColor3 = Color3.fromRGB(14,14,14)
dropratetabMine.TextColor3 = Color3.fromRGB(255,255,255)
dropratetabMine.Font = Enum.Font.Jura
dropratetabMine.TextSize = 18
dropratetabMine.LayoutOrder = 0
dropratetabMine.Text = "Drop Rate"

dropratecornMine = Instance.new("UICorner")
dropratecornMine.Parent = dropratetabMine

sfdroprateMine = Instance.new("ScrollingFrame")
sfdroprateMine.BackgroundColor3 = Color3.fromRGB(24,24,24)
sfdroprateMine.BorderSizePixel = 0
sfdroprateMine.Parent = masterscrollMine
sfdroprateMine.Position = UDim2.new(0.085,0,0.098,0)
sfdroprateMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfdroprateMine.ScrollBarImageColor3 = Color3.fromRGB(14,14,14)
sfdroprateMine.ScrollingDirection = "Y"
sfdroprateMine.ScrollBarThickness = 3
sfdroprateMine.AutomaticSize = Enum.AutomaticSize.Y
sfdroprateMine.Size = UDim2.new(0,214,0,102)
sfdroprateMine.CanvasSize = UDim2.new(0,0,0,0)
sfdroprateMine.Name = "Scrollingdroprate"

droprateTxtMine = Instance.new("TextLabel")
droprateTxtMine.Parent = sfdroprateMine
droprateTxtMine.Size = UDim2.new(0,207,0,0)
droprateTxtMine.AutomaticSize = Enum.AutomaticSize.Y
droprateTxtMine.Position = UDim2.new(0,0,0,0)
droprateTxtMine.BackgroundTransparency = 1
droprateTxtMine.TextColor3 = Color3.fromRGB(255,255,255)
droprateTxtMine.Font = Enum.Font.Jura
droprateTxtMine.RichText = true
droprateTxtMine.TextWrapped = true
droprateTxtMine.TextYAlignment = "Top"
droprateTxtMine.TextSize = 15
droprateTxtMine.Text = "Placeholder"

oresizetabMine = Instance.new("TextLabel")
oresizetabMine.Parent = masterscrollMine
oresizetabMine.Size = UDim2.new(0,214,0,27)
oresizetabMine.Position = UDim2.new(0.085,0,-0.001,0)
oresizetabMine.BackgroundColor3 = Color3.fromRGB(14,14,14)
oresizetabMine.TextColor3 = Color3.fromRGB(255,255,255)
oresizetabMine.Font = Enum.Font.Jura
oresizetabMine.TextSize = 18
oresizetabMine.LayoutOrder = 0
oresizetabMine.Text = "Ore Size"

oresizecornMine = Instance.new("UICorner")
oresizecornMine.Parent = oresizetabMine

sforesizeMine = Instance.new("ScrollingFrame")
sforesizeMine.BackgroundColor3 = Color3.fromRGB(24,24,24)
sforesizeMine.BorderSizePixel = 0
sforesizeMine.Parent = masterscrollMine
sforesizeMine.Position = UDim2.new(0.085,0,0.098,0)
sforesizeMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
sforesizeMine.ScrollBarImageColor3 = Color3.fromRGB(14,14,14)
sforesizeMine.ScrollingDirection = "Y"
sforesizeMine.ScrollBarThickness = 3
sforesizeMine.AutomaticSize = Enum.AutomaticSize.Y
sforesizeMine.Size = UDim2.new(0,214,0,102)
sforesizeMine.CanvasSize = UDim2.new(0,0,0,0)
sforesizeMine.Name = "Scrollingoresize"

oresizeTxtMine = Instance.new("TextLabel")
oresizeTxtMine.Parent = sforesizeMine
oresizeTxtMine.Size = UDim2.new(0,207,0,0)
oresizeTxtMine.AutomaticSize = Enum.AutomaticSize.Y
oresizeTxtMine.Position = UDim2.new(0,0,0,0)
oresizeTxtMine.BackgroundTransparency = 1
oresizeTxtMine.TextColor3 = Color3.fromRGB(255,255,255)
oresizeTxtMine.Font = Enum.Font.Jura
oresizeTxtMine.RichText = true
oresizeTxtMine.TextWrapped = true
oresizeTxtMine.TextYAlignment = "Top"
oresizeTxtMine.TextSize = 15
oresizeTxtMine.Text = "Placeholder"

effectstabMine = Instance.new("TextLabel")
effectstabMine.Parent = masterscrollMine
effectstabMine.Size = UDim2.new(0,214,0,27)
effectstabMine.Position = UDim2.new(0.085,0,-0.001,0)
effectstabMine.BackgroundColor3 = Color3.fromRGB(14,14,14)
effectstabMine.TextColor3 = Color3.fromRGB(255,255,255)
effectstabMine.Font = Enum.Font.Jura
effectstabMine.TextSize = 18
effectstabMine.LayoutOrder = 0
effectstabMine.Text = "Effects"

effectscornMine = Instance.new("UICorner")
effectscornMine.Parent = effectstabMine

sfeffectsMine = Instance.new("ScrollingFrame")
sfeffectsMine.BackgroundColor3 = Color3.fromRGB(24,24,24)
sfeffectsMine.BorderSizePixel = 0
sfeffectsMine.Parent = masterscrollMine
sfeffectsMine.Position = UDim2.new(0.085,0,0.098,0)
sfeffectsMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfeffectsMine.ScrollBarImageColor3 = Color3.fromRGB(14,14,14)
sfeffectsMine.ScrollingDirection = "Y"
sfeffectsMine.ScrollBarThickness = 3
sfeffectsMine.AutomaticSize = Enum.AutomaticSize.Y
sfeffectsMine.Size = UDim2.new(0,214,0,102)
sfeffectsMine.CanvasSize = UDim2.new(0,0,0,0)
sfeffectsMine.Name = "ScrollingEffects"

effectsTxtMine = Instance.new("TextLabel")
effectsTxtMine.Parent = sfeffectsMine
effectsTxtMine.Size = UDim2.new(0,207,0,0)
effectsTxtMine.AutomaticSize = Enum.AutomaticSize.Y
effectsTxtMine.Position = UDim2.new(0,0,0,0)
effectsTxtMine.BackgroundTransparency = 1
effectsTxtMine.TextColor3 = Color3.fromRGB(255,255,255)
effectsTxtMine.Font = Enum.Font.Jura
effectsTxtMine.RichText = true
effectsTxtMine.TextWrapped = true
effectsTxtMine.TextYAlignment = "Top"
effectsTxtMine.TextSize = 15
effectsTxtMine.Text = "Placeholder"

drawbackstabMine = Instance.new("TextLabel")
drawbackstabMine.Parent = masterscrollMine
drawbackstabMine.Size = UDim2.new(0,214,0,27)
drawbackstabMine.Position = UDim2.new(0.085,0,0.411,0)
drawbackstabMine.BackgroundColor3 = Color3.fromRGB(14,14,14)
drawbackstabMine.TextColor3 = Color3.fromRGB(255,255,255)
drawbackstabMine.Font = Enum.Font.Jura
drawbackstabMine.TextSize = 18
drawbackstabMine.Text = "Drawbacks"

drawbackscorn = Instance.new("UICorner")
drawbackscorn.Parent = drawbackstabMine

sfdrawbacksMine = Instance.new("ScrollingFrame")
sfdrawbacksMine.BackgroundColor3 = Color3.fromRGB(24,24,24)
sfdrawbacksMine.BorderSizePixel = 0
sfdrawbacksMine.Parent = masterscrollMine
sfdrawbacksMine.Position = UDim2.new(0.085,0,0.504,0)
sfdrawbacksMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfdrawbacksMine.ScrollBarImageColor3 = Color3.fromRGB(14,14,14)
sfdrawbacksMine.ScrollingDirection = "Y"
sfdrawbacksMine.ScrollBarThickness = 3
sfdrawbacksMine.AutomaticSize = Enum.AutomaticSize.Y
sfdrawbacksMine.Size = UDim2.new(0,214,0,60)
sfdrawbacksMine.CanvasSize = UDim2.new(0,0,0,0)
sfdrawbacksMine.Name = "Scrollingdrawbacks"

drawbacksTxtMine = Instance.new("TextLabel")
drawbacksTxtMine.Parent = sfdrawbacksMine
drawbacksTxtMine.Size = UDim2.new(0,207,0,0)
drawbacksTxtMine.AutomaticSize = Enum.AutomaticSize.Y
drawbacksTxtMine.Position = UDim2.new(0,0,0,0)
drawbacksTxtMine.BackgroundTransparency = 1
drawbacksTxtMine.TextColor3 = Color3.fromRGB(255,255,255)
drawbacksTxtMine.Font = Enum.Font.Jura
drawbacksTxtMine.RichText = true
drawbacksTxtMine.TextWrapped = true
drawbacksTxtMine.TextYAlignment = "Top"
drawbacksTxtMine.TextSize = 15
drawbacksTxtMine.Text = "Placeholder"

sourcetabMine = Instance.new("TextLabel")
sourcetabMine.Parent = masterscrollMine
sourcetabMine.Size = UDim2.new(0,214,0,27)
sourcetabMine.Position = UDim2.new(0.085,0,0.694,0)
sourcetabMine.BackgroundColor3 = Color3.fromRGB(14,14,14)
sourcetabMine.TextColor3 = Color3.fromRGB(255,255,255)
sourcetabMine.Font = Enum.Font.Jura
sourcetabMine.TextSize = 18
sourcetabMine.Text = "Source"

sourcecornMine = Instance.new("UICorner")
sourcecornMine.Parent = sourcetabMine

sfsourceMine = Instance.new("ScrollingFrame")
sfsourceMine.BackgroundColor3 = Color3.fromRGB(24,24,24)
sfsourceMine.BorderSizePixel = 0
sfsourceMine.Parent = masterscrollMine
sfsourceMine.Position = UDim2.new(0.085,0,0.788,0)
sfsourceMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfsourceMine.ScrollBarImageColor3 = Color3.fromRGB(14,14,14)
sfsourceMine.ScrollingDirection = "Y"
sfsourceMine.ScrollBarThickness = 3
sfsourceMine.AutomaticSize = Enum.AutomaticSize.Y
sfsourceMine.Size = UDim2.new(0,214,0,51)
sfsourceMine.CanvasSize = UDim2.new(0,0,0,0)
sfsourceMine.Name = "Scrollingsource"

sourceTxtMine = Instance.new("TextLabel")
sourceTxtMine.Parent = sfsourceMine
sourceTxtMine.Size = UDim2.new(0,207,0,0)
sourceTxtMine.AutomaticSize = Enum.AutomaticSize.Y
sourceTxtMine.Position = UDim2.new(0,0,0,0)
sourceTxtMine.BackgroundTransparency = 1
sourceTxtMine.TextColor3 = Color3.fromRGB(255,255,255)
sourceTxtMine.Font = Enum.Font.Jura
sourceTxtMine.RichText = true
sourceTxtMine.TextWrapped = true
sourceTxtMine.TextYAlignment = "Top"
sourceTxtMine.TextSize = 15
sourceTxtMine.Text = "Placeholder"

sfvaluesMine = Instance.new("Frame")
sfvaluesMine.BackgroundColor3 = Color3.fromRGB(14,14,14)
sfvaluesMine.BackgroundTransparency = 0
sfvaluesMine.BorderSizePixel = 0
sfvaluesMine.Parent = masterscrollMine
sfvaluesMine.Position = UDim2.new(0.085,0,0.946,0)
sfvaluesMine.AutomaticSize = Enum.AutomaticSize.Y
sfvaluesMine.Size = UDim2.new(0,214,0,0)
sfvaluesMine.Name = "Values"

valueslayoutMine = Instance.new("UIListLayout")
valueslayoutMine.Parent = sfvaluesMine
valueslayoutMine.Padding = UDim.new(0,0)
valueslayoutMine.SortOrder = "LayoutOrder"

valuescornMine = Instance.new("UICorner")
valuescornMine.Parent = sfvaluesMine

function addValueLabelMine(name, order, text)
    local valuestab = Instance.new("TextLabel")
    valuestab.Parent = sfvaluesMine
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

function newMine(name) 
    topbarwikitextMine.Text = name
    masterscrollMine.CanvasSize = UDim2.new(0,0,0,0)
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
for i,v in pairs(viewportMine:GetChildren()) do
    if v:IsA("Model") then
        v:Destroy()
    end
end
for i,v in pairs(wikiframe:GetChildren()) do
    if v:isA("Model") then
        v:Destroy()
    end
end
for i,v in pairs(wikiscreenGui.Mines.masterscroll.Values:GetChildren()) do
    if v:isA("TextLabel") then
        v:Destroy()
    end
end
local item = game:GetService("ReplicatedStorage").Items[name]
itemportMine = item:Clone()
itemportMine.Parent = viewportMine
itemportMine.PrimaryPart = itemportMine.Hitbox
local target = itemportMine.Hitbox 
local camera = viewcam
camera.CameraType = Enum.CameraType.Scriptable

local rotationAngle = Instance.new("NumberValue")
local tweenComplete = false
--local modelCF, modelSize = itemportMine:GetBoundingBox()
local modelSize = itemportMine.Hitbox.Size
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
 
_G.cam = RunService.RenderStepped:Connect(function()
	if tweenComplete == false then
		updateCamera()
	end
end)
local HttpService = game:GetService("HttpService")
local itemdata = game:HttpGet("https://raw.githubusercontent.com/slendercreeper/MinersHaven/main/wiki%20reference%20mines")

local alldata = HttpService:JSONDecode(itemdata)
local rimd
for i,v in pairs(alldata) do
	if i == name then
        rimd = v
    end
end
local tier = itemportMine.Tier.Value
tier = game:GetService("ReplicatedStorage").Tiers[tier].TierName.Value
tierlabelMine.Text = tier
sfeffectsMine.Size = UDim2.new(0,214,0,102)
sfdrawbacksMine.Size = UDim2.new(0,214,0,60)
sfsourceMine.Size = UDim2.new(0,214,0,51)
sforevalueMine.Size = UDim2.new(0,214,0,102)
sforesizeMine.Size = UDim2.new(0,214,0,102)
sfdroprateMine.Size = UDim2.new(0,214,0,102)
effectsTxtMine.Text = rimd.effects
drawbacksTxtMine.Text = rimd.drawbacks
orevalueTxtMine.Text = rimd.value
droprateTxtMine.Text = rimd.droprate
oresizeTxtMine.Text = rimd.size
if itemportMine:FindFirstChild("RebirthRequirement") then
    sourceTxtMine.Text = rimd.source .. " (Life " .. itemportMine.RebirthRequirement.Value .."+)"
elseif itemportMine:FindFirstChild("UnlockAt") then
    sourceTxtMine.Text = rimd.source .. " (Life " .. itemportMine.UnlockAt.Value .."+)"
else   
    sourceTxtMine.Text = rimd.source
end
if itemportMine:FindFirstChild("EnchantCost") then
    for i,v in pairs(itemportMine.EnchantCost:GetChildren()) do
        if tonumber(v.Name) ~= nil then
            for o,r in pairs(game.ReplicatedStorage.Items:GetChildren()) do
                if r.ItemId.Value == tonumber(v.Name) then
                    sourceTxtMine.Text = sourceTxtMine.Text .. "x" .. v.Value .. " " .. r.Name
                end
            end
        elseif v.Name == "Shards" then
            sourceTxtMine.Text = sourceTxtMine.Text .. v.Value .. " Shards"
        end

        if i ~= #itemportMine.EnchantCost:GetChildren() then
            sourceTxtMine.Text = sourceTxtMine.Text .. "\n"
        end
    end
end
if tier == "Evolved Reborn" or tier == "Adv. Evolution" then
    for i,v in pairs(game.ReplicatedStorage.Items:GetChildren()) do
        if v:FindFirstChild("RequiredEvo") then
            if v.RequiredEvo.Value == itemportMine.ItemId.Value then
                local evoshiny = Instance.new("IntValue")
                evoshiny.Parent = itemportMine
                evoshiny.Value = v.ItemId.Value
                evoshiny.Name = "ShinyId"
            end
        end
    end
end
if tier == "Reborn" or tier == "Adv. Reborn" then
    sourceTxtMine.Text = rimd.source .. " (Life " .. itemportMine.ReqLife.Value .."+)"
    addValueLabelMine("Rarity", 0, "Rarity: " .. itemportMine.RebornChance.Value)
    if itemportMine:FindFirstChild("ShardSalvagePrice") then
        addValueLabelMine("Salvage", 0, "Salvage Yield: " .. itemportMine.ShardSalvagePrice.Value)
    end
    if itemportMine:FindFirstChild("RebornShopPrice") then
        addValueLabelMine("rebshop", 0, "Craftsman Cost: " .. itemportMine.RebornShopPrice.Value)
    end
end
if tier == "Common" or tier == "Uncommon" or tier == "Rare" or tier == "Super Rare" or tier == "Unique" or tier == "Epic" or tier == "Legendary" or tier == "Mythic" or tier == "Divine" or tier == "Almighty" then
    addValueLabelMine("Cost", 0, "Cost: " .. MoneyLib.HandleMoney(itemportMine.Cost.Value))
end
if tier == "Refined" or tier == "Premium" then
    if itemportMine:FindFirstChild("Crystals") then
    addValueLabelMine("Cost", 0, "Cost: " .. itemportMine.Crystals.Value .."uC")
    end
end
if itemportMine:FindFirstChild("BlueprintPrice") then
    addValueLabelMine("blueprint", 0, "Blueprint: " .. string.gsub(MoneyLib.HandleMoney(itemportMine.BlueprintPrice.Value), "%$", "") .. " RP")
end
if tier == "Contraband" then
    addValueLabelMine("Cost", 0, rimd.cost)
end
addValueLabelMine("CellFurn",1, rimd.cell)
addValueLabelMine("RebProof", 1, rimd.reb)
addValueLabelMine("SacbProof", 2, rimd.sac)
addValueLabelMine("ItemId", 3, "Item Id: " .. itemportMine.ItemId.Value)
if itemportMine:FindFirstChild("ShinyId") then
    addValueLabelMine("ShinyId", 3, "Shiny Id: " .. itemportMine.ShinyId.Value)
end
if tier == "Common" or tier == "Uncommon" or tier == "Rare" or tier == "Super Rare" or tier == "Unique" or tier == "Epic" or tier == "Legendary" or tier == "Mythic" or tier == "Divine" or tier == "Almighty" then
addValueLabelMine("RP Required", 7, "RP Required: " .. string.gsub(MoneyLib.HandleMoney(itemportMine.ReqPoints.Value), "%$", ""))
end
local oneconv = false
for i,v in pairs(itemportMine:GetDescendants()) do
    if v.Name == "ConveyorSpeed" and oneconv == false then
        oneconv = true
        addValueLabelMine("ConvSpeed", 8, "Conveyor Speed: " .. math.round(v.Value*10) .. "%")
    end
end
if drawbacksTxtMine.AbsoluteSize.Y < 60 then
    sfdrawbacksMine.Size = UDim2.new(0,sfdrawbacksMine.Size.X.Offset,0,drawbacksTxtMine.AbsoluteSize.Y+1)
end
if effectsTxtMine.AbsoluteSize.Y < 102 then
    sfeffectsMine.Size = UDim2.new(0,sfeffectsMine.Size.X.Offset,0,effectsTxtMine.AbsoluteSize.Y+1)
end
if sourceTxtMine.AbsoluteSize.Y < 51 then
    sfsourceMine.Size = UDim2.new(0,sfsourceMine.Size.X.Offset,0,sourceTxtMine.AbsoluteSize.Y+1)
end
sforesizeMine.Size = UDim2.new(0,sforesizeMine.Size.X.Offset,0,0)
sfdroprateMine.Size = UDim2.new(0,sfdroprateMine.Size.X.Offset,0,0)
sforevalueMine.Size = UDim2.new(0,sforevalueMine.Size.X.Offset,0,0)
sfeffectsMine.Visible = true
effectstabMine.Visible = true
sfdrawbacksMine.Visible = true
drawbackstabMine.Visible = true
if rimd.effects == "N/A" then
    sfeffectsMine.Visible = false
    effectstabMine.Visible = false
end
if rimd.drawbacks == "N/A" then
    sfdrawbacksMine.Visible = false
    drawbackstabMine.Visible = false
end
masterscrollMine.CanvasSize = UDim2.new(0,0,0,masterlayoutMine.AbsoluteContentSize.Y)
end
