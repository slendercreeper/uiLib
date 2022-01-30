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
wikiframe.ImageColor3 = stringtocolor(SettingsT.Background)
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
wikiglow.ImageColor3 = stringtocolor(SettingsT.Glow)
wikiglow.ScaleType = Enum.ScaleType.Slice
wikiglow.SliceCenter = Rect.new(24, 24, 276, 276)
wikiglow.Parent = wikiframe
wikiglow.ZIndex = 1

wikitopbar = Instance.new("ImageLabel")
wikitopbar.Image = "rbxassetid://4595286933"
wikitopbar.Size = UDim2.new(1,0,0,38)
wikitopbar.Position = UDim2.new(0,0,0,0)
wikitopbar.ImageColor3 = stringtocolor(SettingsT.DarkContrast)
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
topbarwikitext.TextColor3 = stringtocolor(SettingsT.TextColor)
topbarwikitext.TextSize = 18

viewcam = Instance.new("Camera")
viewcam.Parent = wikiscreenGui

viewport = Instance.new("ViewportFrame")
viewport.Parent = wikiframe
viewport.Size = UDim2.new(0,375,0,300)
viewport.Position = UDim2.new(0,4,0,38)
viewport.BackgroundColor3 = stringtocolor(SettingsT.Background)
viewport.BorderSizePixel = 4
viewport.BorderColor3 = stringtocolor(SettingsT.DarkContrast)
viewport.BackgroundTransparency = 0
viewport.CurrentCamera = wikiscreenGui.Camera

backwiki = Instance.new("TextButton")
backwiki.Parent = viewport
backwiki.Text = "Back"
backwiki.TextSize = 14
backwiki.TextColor3 = stringtocolor(SettingsT.TextColor)
backwiki.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
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
shinywiki.TextColor3 = stringtocolor(SettingsT.TextColor)
shinywiki.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
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
tierlabel.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
tierlabel.TextColor3 = stringtocolor(SettingsT.TextColor)
tierlabel.Font = Enum.Font.Jura
tierlabel.TextSize = 18
tierlabel.Text = "placeholder"

tiercorner = Instance.new("UICorner")
tiercorner.Parent = tierlabel

masterscroll = Instance.new("ScrollingFrame")
masterscroll.BackgroundColor3 = stringtocolor(SettingsT.Background)
masterscroll.BackgroundTransparency = 1
masterscroll.BorderSizePixel = 0
masterscroll.Parent = wikiframe
masterscroll.Position = UDim2.new(0.574,-4,0.116,0)
masterscroll.Size = UDim2.new(0,284,0,353)
--masterscroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
masterscroll.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
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
effectstab.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
effectstab.TextColor3 = stringtocolor(SettingsT.TextColor)
effectstab.Font = Enum.Font.Jura
effectstab.TextSize = 18
effectstab.LayoutOrder = 0
effectstab.Text = "Effects"

effectscorn = Instance.new("UICorner")
effectscorn.Parent = effectstab

sfeffects = Instance.new("ScrollingFrame")
sfeffects.BackgroundColor3 = stringtocolor(SettingsT.Background)
sfeffects.BorderSizePixel = 0
sfeffects.Parent = masterscroll
sfeffects.Position = UDim2.new(0.085,0,0.098,0)
sfeffects.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfeffects.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
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
effectsTxt.TextColor3 = stringtocolor(SettingsT.TextColor)
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
drawbackstab.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
drawbackstab.TextColor3 = stringtocolor(SettingsT.TextColor)
drawbackstab.Font = Enum.Font.Jura
drawbackstab.TextSize = 18
drawbackstab.Text = "Drawbacks"

drawbackscorn = Instance.new("UICorner")
drawbackscorn.Parent = drawbackstab

sfdrawbacks = Instance.new("ScrollingFrame")
sfdrawbacks.BackgroundColor3 = stringtocolor(SettingsT.Background)
sfdrawbacks.BorderSizePixel = 0
sfdrawbacks.Parent = masterscroll
sfdrawbacks.Position = UDim2.new(0.085,0,0.504,0)
sfdrawbacks.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfdrawbacks.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
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
drawbacksTxt.TextColor3 = stringtocolor(SettingsT.TextColor)
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
sourcetab.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
sourcetab.TextColor3 = stringtocolor(SettingsT.TextColor)
sourcetab.Font = Enum.Font.Jura
sourcetab.TextSize = 18
sourcetab.Text = "Source"

sourcecorn = Instance.new("UICorner")
sourcecorn.Parent = sourcetab

sfsource = Instance.new("ScrollingFrame")
sfsource.BackgroundColor3 = stringtocolor(SettingsT.Background)
sfsource.BorderSizePixel = 0
sfsource.Parent = masterscroll
sfsource.Position = UDim2.new(0.085,0,0.788,0)
sfsource.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfsource.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
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
sourceTxt.TextColor3 = stringtocolor(SettingsT.TextColor)
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
upgradetab.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
upgradetab.TextColor3 = stringtocolor(SettingsT.TextColor)
upgradetab.Font = Enum.Font.Jura
upgradetab.TextSize = 18
upgradetab.Text = "Upgrade Cap"

upgradecorn = Instance.new("UICorner")
upgradecorn.Parent = upgradetab

sfupgrade = Instance.new("ScrollingFrame")
sfupgrade.BackgroundColor3 = stringtocolor(SettingsT.Background)
sfupgrade.BorderSizePixel = 0
sfupgrade.Parent = masterscroll
sfupgrade.Position = UDim2.new(0.085,0,0.788,0)
sfupgrade.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfupgrade.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
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
upgradeTxt.TextColor3 = stringtocolor(SettingsT.TextColor)
upgradeTxt.Font = Enum.Font.Jura
upgradeTxt.RichText = true
upgradeTxt.TextWrapped = true
upgradeTxt.TextYAlignment = "Top"
upgradeTxt.TextSize = 15
upgradeTxt.Text = "Placeholder"

sfvalues = Instance.new("Frame")
sfvalues.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
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
    valuestab.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
    valuestab.BackgroundTransparency = 1
    valuestab.TextColor3 = stringtocolor(SettingsT.TextColor)
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
wikiframeMine.ImageColor3 = stringtocolor(SettingsT.Background)
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
wikiglowMine.ImageColor3 = stringtocolor(SettingsT.Glow)
wikiglowMine.ScaleType = Enum.ScaleType.Slice
wikiglowMine.SliceCenter = Rect.new(24, 24, 276, 276)
wikiglowMine.Parent = wikiframeMine
wikiglowMine.ZIndex = 1

wikitopbarMine = Instance.new("ImageLabel")
wikitopbarMine.Image = "rbxassetid://4595286933"
wikitopbarMine.Size = UDim2.new(1,0,0,38)
wikitopbarMine.Position = UDim2.new(0,0,0,0)
wikitopbarMine.ImageColor3 = stringtocolor(SettingsT.DarkContrast)
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
topbarwikitextMine.TextColor3 = stringtocolor(SettingsT.TextColor)
topbarwikitextMine.TextSize = 18

viewportMine = Instance.new("ViewportFrame")
viewportMine.Parent = wikiframeMine
viewportMine.Size = UDim2.new(0,375,0,300)
viewportMine.Position = UDim2.new(0,4,0,38)
viewportMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
viewportMine.BorderSizePixel = 4
viewportMine.BorderColor3 = stringtocolor(SettingsT.DarkContrast)
viewportMine.BackgroundTransparency = 0
viewportMine.CurrentCamera = wikiscreenGui.Camera

backwikiMine = Instance.new("TextButton")
backwikiMine.Parent = viewportMine
backwikiMine.Text = "Back"
backwikiMine.TextSize = 14
backwikiMine.TextColor3 = stringtocolor(SettingsT.TextColor)
backwikiMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
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
shinywikiMine.TextColor3 = stringtocolor(SettingsT.TextColor)
shinywikiMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
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
tierlabelMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
tierlabelMine.TextColor3 = stringtocolor(SettingsT.TextColor)
tierlabelMine.Font = Enum.Font.Jura
tierlabelMine.TextSize = 18
tierlabelMine.Text = "placeholder"

tiercornerMine = Instance.new("UICorner")
tiercornerMine.Parent = tierlabelMine

masterscrollMine = Instance.new("ScrollingFrame")
masterscrollMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
masterscrollMine.BackgroundTransparency = 1
masterscrollMine.BorderSizePixel = 0
masterscrollMine.Parent = wikiframeMine
masterscrollMine.Position = UDim2.new(0.574,-4,0.116,0)
masterscrollMine.Size = UDim2.new(0,284,0,353)
--masterscrollMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
masterscrollMine.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
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
orevaluetabMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
orevaluetabMine.TextColor3 = stringtocolor(SettingsT.TextColor)
orevaluetabMine.Font = Enum.Font.Jura
orevaluetabMine.TextSize = 18
orevaluetabMine.LayoutOrder = 0
orevaluetabMine.Text = "Ore Value"

orevaluecornMine = Instance.new("UICorner")
orevaluecornMine.Parent = orevaluetabMine

sforevalueMine = Instance.new("ScrollingFrame")
sforevalueMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
sforevalueMine.BorderSizePixel = 0
sforevalueMine.Parent = masterscrollMine
sforevalueMine.Position = UDim2.new(0.085,0,0.098,0)
sforevalueMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
sforevalueMine.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
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
orevalueTxtMine.TextColor3 = stringtocolor(SettingsT.TextColor)
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
dropratetabMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
dropratetabMine.TextColor3 = stringtocolor(SettingsT.TextColor)
dropratetabMine.Font = Enum.Font.Jura
dropratetabMine.TextSize = 18
dropratetabMine.LayoutOrder = 0
dropratetabMine.Text = "Drop Rate"

dropratecornMine = Instance.new("UICorner")
dropratecornMine.Parent = dropratetabMine

sfdroprateMine = Instance.new("ScrollingFrame")
sfdroprateMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
sfdroprateMine.BorderSizePixel = 0
sfdroprateMine.Parent = masterscrollMine
sfdroprateMine.Position = UDim2.new(0.085,0,0.098,0)
sfdroprateMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfdroprateMine.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
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
droprateTxtMine.TextColor3 = stringtocolor(SettingsT.TextColor)
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
oresizetabMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
oresizetabMine.TextColor3 = stringtocolor(SettingsT.TextColor)
oresizetabMine.Font = Enum.Font.Jura
oresizetabMine.TextSize = 18
oresizetabMine.LayoutOrder = 0
oresizetabMine.Text = "Ore Size"

oresizecornMine = Instance.new("UICorner")
oresizecornMine.Parent = oresizetabMine

sforesizeMine = Instance.new("ScrollingFrame")
sforesizeMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
sforesizeMine.BorderSizePixel = 0
sforesizeMine.Parent = masterscrollMine
sforesizeMine.Position = UDim2.new(0.085,0,0.098,0)
sforesizeMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
sforesizeMine.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
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
oresizeTxtMine.TextColor3 = stringtocolor(SettingsT.TextColor)
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
effectstabMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
effectstabMine.TextColor3 = stringtocolor(SettingsT.TextColor)
effectstabMine.Font = Enum.Font.Jura
effectstabMine.TextSize = 18
effectstabMine.LayoutOrder = 0
effectstabMine.Text = "Effects"

effectscornMine = Instance.new("UICorner")
effectscornMine.Parent = effectstabMine

sfeffectsMine = Instance.new("ScrollingFrame")
sfeffectsMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
sfeffectsMine.BorderSizePixel = 0
sfeffectsMine.Parent = masterscrollMine
sfeffectsMine.Position = UDim2.new(0.085,0,0.098,0)
sfeffectsMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfeffectsMine.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
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
effectsTxtMine.TextColor3 = stringtocolor(SettingsT.TextColor)
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
drawbackstabMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
drawbackstabMine.TextColor3 = stringtocolor(SettingsT.TextColor)
drawbackstabMine.Font = Enum.Font.Jura
drawbackstabMine.TextSize = 18
drawbackstabMine.Text = "Drawbacks"

drawbackscorn = Instance.new("UICorner")
drawbackscorn.Parent = drawbackstabMine

sfdrawbacksMine = Instance.new("ScrollingFrame")
sfdrawbacksMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
sfdrawbacksMine.BorderSizePixel = 0
sfdrawbacksMine.Parent = masterscrollMine
sfdrawbacksMine.Position = UDim2.new(0.085,0,0.504,0)
sfdrawbacksMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfdrawbacksMine.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
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
drawbacksTxtMine.TextColor3 = stringtocolor(SettingsT.TextColor)
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
sourcetabMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
sourcetabMine.TextColor3 = stringtocolor(SettingsT.TextColor)
sourcetabMine.Font = Enum.Font.Jura
sourcetabMine.TextSize = 18
sourcetabMine.Text = "Source"

sourcecornMine = Instance.new("UICorner")
sourcecornMine.Parent = sourcetabMine

sfsourceMine = Instance.new("ScrollingFrame")
sfsourceMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
sfsourceMine.BorderSizePixel = 0
sfsourceMine.Parent = masterscrollMine
sfsourceMine.Position = UDim2.new(0.085,0,0.788,0)
sfsourceMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfsourceMine.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
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
sourceTxtMine.TextColor3 = stringtocolor(SettingsT.TextColor)
sourceTxtMine.Font = Enum.Font.Jura
sourceTxtMine.RichText = true
sourceTxtMine.TextWrapped = true
sourceTxtMine.TextYAlignment = "Top"
sourceTxtMine.TextSize = 15
sourceTxtMine.Text = "Placeholder"

sfvaluesMine = Instance.new("Frame")
sfvaluesMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
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
    valuestab.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
    valuestab.BackgroundTransparency = 1
    valuestab.TextColor3 = stringtocolor(SettingsT.TextColor)
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

wikiframeFurn = Instance.new("ImageLabel")
wikiframeFurn.Image = "rbxassetid://4641149554"
wikiframeFurn.Size = UDim2.new(0,671.5,0,415)
wikiframeFurn.AnchorPoint = Vector2.new(0.5,0.5)
wikiframeFurn.Position = UDim2.new(0.5,0,0.5,0)
wikiframeFurn.ImageColor3 = stringtocolor(SettingsT.Background)
wikiframeFurn.BackgroundTransparency = 1
wikiframeFurn.ScaleType = "Slice"
wikiframeFurn.SliceCenter = Rect.new(4,4,296,296)
wikiframeFurn.BorderSizePixel = 0
wikiframeFurn.Parent = wikiscreenGui
wikiframeFurn.Name = "Furnaces"

wikiglowFurn = Instance.new("ImageLabel")
wikiglowFurn.Name = "Glow"
wikiglowFurn.BackgroundTransparency = 1
wikiglowFurn.Position = UDim2.new(0, -15, 0, -15)
wikiglowFurn.Size = UDim2.new(1, 30, 1, 30)
wikiglowFurn.ZIndex = 0
wikiglowFurn.Image = "rbxassetid://5028857084"
wikiglowFurn.ImageTransparency = 0
wikiglowFurn.ImageColor3 = stringtocolor(SettingsT.Glow)
wikiglowFurn.ScaleType = Enum.ScaleType.Slice
wikiglowFurn.SliceCenter = Rect.new(24, 24, 276, 276)
wikiglowFurn.Parent = wikiframeFurn
wikiglowFurn.ZIndex = 1

wikitopbarFurn = Instance.new("ImageLabel")
wikitopbarFurn.Image = "rbxassetid://4595286933"
wikitopbarFurn.Size = UDim2.new(1,0,0,38)
wikitopbarFurn.Position = UDim2.new(0,0,0,0)
wikitopbarFurn.ImageColor3 = stringtocolor(SettingsT.DarkContrast)
wikitopbarFurn.BackgroundTransparency = 1
wikitopbarFurn.ScaleType = "Slice"
wikitopbarFurn.SliceCenter = Rect.new(4,4,296,296)
wikitopbarFurn.BorderSizePixel = 0
wikitopbarFurn.Parent = wikiframeFurn

topbarwikitextFurn = Instance.new("TextLabel")
topbarwikitextFurn.Font = Enum.Font.Jura
topbarwikitextFurn.BackgroundTransparency = 1
topbarwikitextFurn.Size = UDim2.new(1,0,0,38)
topbarwikitextFurn.Position = UDim2.new(0,0,0,0)
topbarwikitextFurn.Parent = wikitopbarFurn
topbarwikitextFurn.Text = "Vulcan's Wrath"
topbarwikitextFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
topbarwikitextFurn.TextSize = 18

viewportFurn = Instance.new("ViewportFrame")
viewportFurn.Parent = wikiframeFurn
viewportFurn.Size = UDim2.new(0,375,0,300)
viewportFurn.Position = UDim2.new(0,4,0,38)
viewportFurn.BackgroundColor3 = stringtocolor(SettingsT.Background)
viewportFurn.BorderSizePixel = 4
viewportFurn.BorderColor3 = stringtocolor(SettingsT.DarkContrast)
viewportFurn.BackgroundTransparency = 0
viewportFurn.CurrentCamera = wikiscreenGui.Camera

backwikiFurn = Instance.new("TextButton")
backwikiFurn.Parent = viewportFurn
backwikiFurn.Text = "Back"
backwikiFurn.TextSize = 14
backwikiFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
backwikiFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
backwikiFurn.BackgroundTransparency = 1
backwikiFurn.TextTransparency = 1
backwikiFurn.AutoButtonColor = false
backwikiFurn.Position = UDim2.new(0.027,0,0.033,0)
backwikiFurn.Size = UDim2.new(0,60,0,26)
backwikiFurn.Font = Enum.Font.Jura

backwikicornFurn = Instance.new("UICorner")
backwikicornFurn.Parent = backwikiFurn

shinywikiFurn = Instance.new("TextButton")
shinywikiFurn.Parent = viewportFurn
shinywikiFurn.Text = "Shiny"
shinywikiFurn.TextSize = 14
shinywikiFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
shinywikiFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
shinywikiFurn.BackgroundTransparency = 1
shinywikiFurn.TextTransparency = 1
shinywikiFurn.AutoButtonColor = false
shinywikiFurn.Position = UDim2.new(0.815,0,0.033,0)
shinywikiFurn.Size = UDim2.new(0,60,0,26)
shinywikiFurn.Font = Enum.Font.Jura

shinywikicornFurn = Instance.new("UICorner")
shinywikicornFurn.Parent = shinywikiFurn

tierlabelFurn = Instance.new("TextLabel")
tierlabelFurn.Parent = wikiframeFurn
tierlabelFurn.Size = UDim2.new(0,375,0,49)
tierlabelFurn.Position = UDim2.new(0.009,0,0.848,0)
tierlabelFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
tierlabelFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
tierlabelFurn.Font = Enum.Font.Jura
tierlabelFurn.TextSize = 18
tierlabelFurn.Text = "placeholder"

tiercornerFurn = Instance.new("UICorner")
tiercornerFurn.Parent = tierlabelFurn

masterscrollFurn = Instance.new("ScrollingFrame")
masterscrollFurn.BackgroundColor3 = stringtocolor(SettingsT.Background)
masterscrollFurn.BackgroundTransparency = 1
masterscrollFurn.BorderSizePixel = 0
masterscrollFurn.Parent = wikiframeFurn
masterscrollFurn.Position = UDim2.new(0.574,-4,0.116,0)
masterscrollFurn.Size = UDim2.new(0,284,0,353)
--masterscrollFurn.AutomaticCanvasSize = Enum.AutomaticSize.Y
masterscrollFurn.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
masterscrollFurn.ScrollingDirection = "Y"
masterscrollFurn.ScrollBarThickness = 3
masterscrollFurn.CanvasSize = UDim2.new(0,0,0,0)
masterscrollFurn.Name = "masterscroll"

masterlayoutFurn = Instance.new("UIListLayout")
masterlayoutFurn.Parent = masterscrollFurn
masterlayoutFurn.Padding = UDim.new(0,7.5)
masterlayoutFurn.HorizontalAlignment = "Center"
masterlayoutFurn.SortOrder = "LayoutOrder"

effectstabFurn = Instance.new("TextLabel")
effectstabFurn.Parent = masterscrollFurn
effectstabFurn.Size = UDim2.new(0,214,0,27)
effectstabFurn.Position = UDim2.new(0.085,0,-0.001,0)
effectstabFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
effectstabFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
effectstabFurn.Font = Enum.Font.Jura
effectstabFurn.TextSize = 18
effectstabFurn.LayoutOrder = 0
effectstabFurn.Text = "Effects"

effectscornFurn = Instance.new("UICorner")
effectscornFurn.Parent = effectstabFurn

sfeffectsFurn = Instance.new("ScrollingFrame")
sfeffectsFurn.BackgroundColor3 = stringtocolor(SettingsT.Background)
sfeffectsFurn.BorderSizePixel = 0
sfeffectsFurn.Parent = masterscrollFurn
sfeffectsFurn.Position = UDim2.new(0.085,0,0.098,0)
sfeffectsFurn.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfeffectsFurn.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
sfeffectsFurn.ScrollingDirection = "Y"
sfeffectsFurn.ScrollBarThickness = 3
sfeffectsFurn.AutomaticSize = Enum.AutomaticSize.Y
sfeffectsFurn.Size = UDim2.new(0,214,0,102)
sfeffectsFurn.CanvasSize = UDim2.new(0,0,0,0)
sfeffectsFurn.Name = "ScrollingEffects"

effectsTxtFurn = Instance.new("TextLabel")
effectsTxtFurn.Parent = sfeffectsFurn
effectsTxtFurn.Size = UDim2.new(0,207,0,0)
effectsTxtFurn.AutomaticSize = Enum.AutomaticSize.Y
effectsTxtFurn.Position = UDim2.new(0,0,0,0)
effectsTxtFurn.BackgroundTransparency = 1
effectsTxtFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
effectsTxtFurn.Font = Enum.Font.Jura
effectsTxtFurn.RichText = true
effectsTxtFurn.TextWrapped = true
effectsTxtFurn.TextYAlignment = "Top"
effectsTxtFurn.TextSize = 15
effectsTxtFurn.Text = "Placeholder"

drawbackstabFurn = Instance.new("TextLabel")
drawbackstabFurn.Parent = masterscrollFurn
drawbackstabFurn.Size = UDim2.new(0,214,0,27)
drawbackstabFurn.Position = UDim2.new(0.085,0,0.411,0)
drawbackstabFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
drawbackstabFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
drawbackstabFurn.Font = Enum.Font.Jura
drawbackstabFurn.TextSize = 18
drawbackstabFurn.Text = "Drawbacks"

drawbackscorn = Instance.new("UICorner")
drawbackscorn.Parent = drawbackstabFurn

sfdrawbacksFurn = Instance.new("ScrollingFrame")
sfdrawbacksFurn.BackgroundColor3 = stringtocolor(SettingsT.Background)
sfdrawbacksFurn.BorderSizePixel = 0
sfdrawbacksFurn.Parent = masterscrollFurn
sfdrawbacksFurn.Position = UDim2.new(0.085,0,0.504,0)
sfdrawbacksFurn.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfdrawbacksFurn.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
sfdrawbacksFurn.ScrollingDirection = "Y"
sfdrawbacksFurn.ScrollBarThickness = 3
sfdrawbacksFurn.AutomaticSize = Enum.AutomaticSize.Y
sfdrawbacksFurn.Size = UDim2.new(0,214,0,60)
sfdrawbacksFurn.CanvasSize = UDim2.new(0,0,0,0)
sfdrawbacksFurn.Name = "Scrollingdrawbacks"

drawbacksTxtFurn = Instance.new("TextLabel")
drawbacksTxtFurn.Parent = sfdrawbacksFurn
drawbacksTxtFurn.Size = UDim2.new(0,207,0,0)
drawbacksTxtFurn.AutomaticSize = Enum.AutomaticSize.Y
drawbacksTxtFurn.Position = UDim2.new(0,0,0,0)
drawbacksTxtFurn.BackgroundTransparency = 1
drawbacksTxtFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
drawbacksTxtFurn.Font = Enum.Font.Jura
drawbacksTxtFurn.RichText = true
drawbacksTxtFurn.TextWrapped = true
drawbacksTxtFurn.TextYAlignment = "Top"
drawbacksTxtFurn.TextSize = 15
drawbacksTxtFurn.Text = "Placeholder"

RPtabFurn = Instance.new("TextLabel")
RPtabFurn.Parent = masterscrollFurn
RPtabFurn.Size = UDim2.new(0,214,0,27)
RPtabFurn.Position = UDim2.new(0.085,0,-0.001,0)
RPtabFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
RPtabFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
RPtabFurn.Font = Enum.Font.Jura
RPtabFurn.TextSize = 18
RPtabFurn.LayoutOrder = 0
RPtabFurn.Text = "RP Yield"

RPcornFurn = Instance.new("UICorner")
RPcornFurn.Parent = RPtabFurn

sfRPFurn = Instance.new("ScrollingFrame")
sfRPFurn.BackgroundColor3 = stringtocolor(SettingsT.Background)
sfRPFurn.BorderSizePixel = 0
sfRPFurn.Parent = masterscrollFurn
sfRPFurn.Position = UDim2.new(0.085,0,0.098,0)
sfRPFurn.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfRPFurn.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
sfRPFurn.ScrollingDirection = "Y"
sfRPFurn.ScrollBarThickness = 3
sfRPFurn.AutomaticSize = Enum.AutomaticSize.Y
sfRPFurn.Size = UDim2.new(0,214,0,102)
sfRPFurn.CanvasSize = UDim2.new(0,0,0,0)
sfRPFurn.Name = "ScrollingRP"

RPTxtFurn = Instance.new("TextLabel")
RPTxtFurn.Parent = sfRPFurn
RPTxtFurn.Size = UDim2.new(0,207,0,0)
RPTxtFurn.AutomaticSize = Enum.AutomaticSize.Y
RPTxtFurn.Position = UDim2.new(0,0,0,0)
RPTxtFurn.BackgroundTransparency = 1
RPTxtFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
RPTxtFurn.Font = Enum.Font.Jura
RPTxtFurn.RichText = true
RPTxtFurn.TextWrapped = true
RPTxtFurn.TextYAlignment = "Top"
RPTxtFurn.TextSize = 15
RPTxtFurn.Text = "Placeholder"

sourcetabFurn = Instance.new("TextLabel")
sourcetabFurn.Parent = masterscrollFurn
sourcetabFurn.Size = UDim2.new(0,214,0,27)
sourcetabFurn.Position = UDim2.new(0.085,0,0.694,0)
sourcetabFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
sourcetabFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
sourcetabFurn.Font = Enum.Font.Jura
sourcetabFurn.TextSize = 18
sourcetabFurn.Text = "Source"

sourcecornFurn = Instance.new("UICorner")
sourcecornFurn.Parent = sourcetabFurn

sfsourceFurn = Instance.new("ScrollingFrame")
sfsourceFurn.BackgroundColor3 = stringtocolor(SettingsT.Background)
sfsourceFurn.BorderSizePixel = 0
sfsourceFurn.Parent = masterscrollFurn
sfsourceFurn.Position = UDim2.new(0.085,0,0.788,0)
sfsourceFurn.AutomaticCanvasSize = Enum.AutomaticSize.Y
sfsourceFurn.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
sfsourceFurn.ScrollingDirection = "Y"
sfsourceFurn.ScrollBarThickness = 3
sfsourceFurn.AutomaticSize = Enum.AutomaticSize.Y
sfsourceFurn.Size = UDim2.new(0,214,0,51)
sfsourceFurn.CanvasSize = UDim2.new(0,0,0,0)
sfsourceFurn.Name = "Scrollingsource"

sourceTxtFurn = Instance.new("TextLabel")
sourceTxtFurn.Parent = sfsourceFurn
sourceTxtFurn.Size = UDim2.new(0,207,0,0)
sourceTxtFurn.AutomaticSize = Enum.AutomaticSize.Y
sourceTxtFurn.Position = UDim2.new(0,0,0,0)
sourceTxtFurn.BackgroundTransparency = 1
sourceTxtFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
sourceTxtFurn.Font = Enum.Font.Jura
sourceTxtFurn.RichText = true
sourceTxtFurn.TextWrapped = true
sourceTxtFurn.TextYAlignment = "Top"
sourceTxtFurn.TextSize = 15
sourceTxtFurn.Text = "Placeholder"

sfvaluesFurn = Instance.new("Frame")
sfvaluesFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
sfvaluesFurn.BackgroundTransparency = 0
sfvaluesFurn.BorderSizePixel = 0
sfvaluesFurn.Parent = masterscrollFurn
sfvaluesFurn.Position = UDim2.new(0.085,0,0.946,0)
sfvaluesFurn.AutomaticSize = Enum.AutomaticSize.Y
sfvaluesFurn.Size = UDim2.new(0,214,0,0)
sfvaluesFurn.Name = "Values"

valueslayoutFurn = Instance.new("UIListLayout")
valueslayoutFurn.Parent = sfvaluesFurn
valueslayoutFurn.Padding = UDim.new(0,0)
valueslayoutFurn.SortOrder = "LayoutOrder"

valuescornFurn = Instance.new("UICorner")
valuescornFurn.Parent = sfvaluesFurn

function addValueLabelFurn(name, order, text)
    local valuestab = Instance.new("TextLabel")
    valuestab.Parent = sfvaluesFurn
    valuestab.Size = UDim2.new(0,214,0,27)
    valuestab.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
    valuestab.BackgroundTransparency = 1
    valuestab.TextColor3 = stringtocolor(SettingsT.TextColor)
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

function newFurn(name) 
    topbarwikitextFurn.Text = name
    masterscrollFurn.CanvasSize = UDim2.new(0,0,0,0)
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
for i,v in pairs(viewportFurn:GetChildren()) do
    if v:IsA("Model") then
        v:Destroy()
    end
end
for i,v in pairs(wikiframe:GetChildren()) do
    if v:isA("Model") then
        v:Destroy()
    end
end
for i,v in pairs(wikiscreenGui.Furnaces.masterscroll.Values:GetChildren()) do
    if v:isA("TextLabel") then
        v:Destroy()
    end
end
local item = game:GetService("ReplicatedStorage").Items[name]
itemportFurn = item:Clone()
itemportFurn.Parent = viewportFurn
itemportFurn.PrimaryPart = itemportFurn.Hitbox
local target = itemportFurn.Hitbox 
local camera = viewcam
camera.CameraType = Enum.CameraType.Scriptable

local rotationAngle = Instance.new("NumberValue")
local tweenComplete = false
--local modelCF, modelSize = itemportFurn:GetBoundingBox()
local modelSize = itemportFurn.Hitbox.Size
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
local itemdata = game:HttpGet("https://raw.githubusercontent.com/slendercreeper/MinersHaven/main/wiki%20reference%20furnaces")

local alldata = HttpService:JSONDecode(itemdata)
local rimd
for i,v in pairs(alldata) do
	if i == name then
        rimd = v
    end
end
local tier = itemportFurn.Tier.Value
tier = game:GetService("ReplicatedStorage").Tiers[tier].TierName.Value
tierlabelFurn.Text = tier
sfeffectsFurn.Size = UDim2.new(0,214,0,102)
sfdrawbacksFurn.Size = UDim2.new(0,214,0,60)
sfsourceFurn.Size = UDim2.new(0,214,0,51)
sfRPFurn.Size = UDim2.new(0,214,0,102)
effectsTxtFurn.Text = rimd.effects
drawbacksTxtFurn.Text = rimd.drawbacks
RPTxtFurn.Text = rimd.rp
if itemportFurn:FindFirstChild("RebirthRequirement") then
    sourceTxtFurn.Text = rimd.source .. " (Life " .. itemportFurn.RebirthRequirement.Value .."+)"
elseif itemportFurn:FindFirstChild("UnlockAt") then
    sourceTxtFurn.Text = rimd.source .. " (Life " .. itemportFurn.UnlockAt.Value .."+)"
else   
    sourceTxtFurn.Text = rimd.source
end
if itemportFurn:FindFirstChild("EnchantCost") then
    for i,v in pairs(itemportFurn.EnchantCost:GetChildren()) do
        if tonumber(v.Name) ~= nil then
            for o,r in pairs(game.ReplicatedStorage.Items:GetChildren()) do
                if r.ItemId.Value == tonumber(v.Name) then
                    sourceTxtFurn.Text = sourceTxtFurn.Text .. "x" .. v.Value .. " " .. r.Name
                end
            end
        elseif v.Name == "Shards" then
            sourceTxtFurn.Text = sourceTxtFurn.Text .. v.Value .. " Shards"
        end

        if i ~= #itemportFurn.EnchantCost:GetChildren() then
            sourceTxtFurn.Text = sourceTxtFurn.Text .. "\n"
        end
    end
end
if tier == "Evolved Reborn" or tier == "Adv. Evolution" then
    for i,v in pairs(game.ReplicatedStorage.Items:GetChildren()) do
        if v:FindFirstChild("RequiredEvo") then
            if v.RequiredEvo.Value == itemportFurn.ItemId.Value then
                local evoshiny = Instance.new("IntValue")
                evoshiny.Parent = itemportFurn
                evoshiny.Value = v.ItemId.Value
                evoshiny.Name = "ShinyId"
            end
        end
    end
end
if tier == "Reborn" or tier == "Adv. Reborn" then
    sourceTxtFurn.Text = rimd.source .. " (Life " .. itemportFurn.ReqLife.Value .."+)"
    addValueLabelFurn("Rarity", 0, "Rarity: " .. itemportFurn.RebornChance.Value)
    if itemportFurn:FindFirstChild("ShardSalvagePrice") then
        addValueLabelFurn("Salvage", 0, "Salvage Yield: " .. itemportFurn.ShardSalvagePrice.Value)
    end
    if itemportFurn:FindFirstChild("RebornShopPrice") then
        addValueLabelFurn("rebshop", 0, "Craftsman Cost: " .. itemportFurn.RebornShopPrice.Value)
    end
end
if tier == "Common" or tier == "Uncommon" or tier == "Rare" or tier == "Super Rare" or tier == "Unique" or tier == "Epic" or tier == "Legendary" or tier == "Mythic" or tier == "Divine" or tier == "Almighty" then
    addValueLabelFurn("Cost", 0, "Cost: " .. MoneyLib.HandleMoney(itemportFurn.Cost.Value))
end
if tier == "Refined" or tier == "Premium" then
    if itemportFurn:FindFirstChild("Crystals") then
    addValueLabelFurn("Cost", 0, "Cost: " .. itemportFurn.Crystals.Value .."uC")
    end
end
if itemportFurn:FindFirstChild("BlueprintPrice") then
    addValueLabelFurn("blueprint", 0, "Blueprint: " .. string.gsub(MoneyLib.HandleMoney(itemportFurn.BlueprintPrice.Value), "%$", "") .. " RP")
end
if tier == "Contraband" then
    addValueLabelFurn("Cost", 0, rimd.cost)
end
addValueLabelFurn("FurnType",1, rimd.furntype)
addValueLabelFurn("RebProof", 1, rimd.reb)
addValueLabelFurn("SacbProof", 2, rimd.sac)
addValueLabelFurn("ItemId", 3, "Item Id: " .. itemportFurn.ItemId.Value)
if itemportFurn:FindFirstChild("ShinyId") then
    addValueLabelFurn("ShinyId", 3, "Shiny Id: " .. itemportFurn.ShinyId.Value)
end
if tier == "Common" or tier == "Uncommon" or tier == "Rare" or tier == "Super Rare" or tier == "Unique" or tier == "Epic" or tier == "Legendary" or tier == "Mythic" or tier == "Divine" or tier == "Almighty" then
addValueLabelFurn("RP Required", 7, "RP Required: " .. string.gsub(MoneyLib.HandleMoney(itemportFurn.ReqPoints.Value), "%$", ""))
end
local oneconv = false
for i,v in pairs(itemportFurn:GetDescendants()) do
    if v.Name == "ConveyorSpeed" and oneconv == false then
        oneconv = true
        addValueLabelFurn("ConvSpeed", 8, "Conveyor Speed: " .. math.round(v.Value*10) .. "%")
    end
end
if drawbacksTxtFurn.AbsoluteSize.Y < 60 then
    sfdrawbacksFurn.Size = UDim2.new(0,sfdrawbacksFurn.Size.X.Offset,0,drawbacksTxtFurn.AbsoluteSize.Y+1)
end
if effectsTxtFurn.AbsoluteSize.Y < 102 then
    sfeffectsFurn.Size = UDim2.new(0,sfeffectsFurn.Size.X.Offset,0,effectsTxtFurn.AbsoluteSize.Y+1)
end
if sourceTxtFurn.AbsoluteSize.Y < 51 then
    sfsourceFurn.Size = UDim2.new(0,sfsourceFurn.Size.X.Offset,0,sourceTxtFurn.AbsoluteSize.Y+1)
end
if RPTxtFurn.AbsoluteSize.Y < 102 then
    sfRPFurn.Size = UDim2.new(0,sfRPFurn.Size.X.Offset,0,RPTxtFurn.AbsoluteSize.Y+1)
end
sfeffectsFurn.Visible = true
effectstabFurn.Visible = true
sfdrawbacksFurn.Visible = true
drawbackstabFurn.Visible = true
if rimd.effects == "N/A" then
    sfeffectsFurn.Visible = false
    effectstabFurn.Visible = false
end
if rimd.drawbacks == "N/A" then
    sfdrawbacksFurn.Visible = false
    drawbackstabFurn.Visible = false
end
masterscrollFurn.CanvasSize = UDim2.new(0,0,0,masterlayoutFurn.AbsoluteContentSize.Y)
end
