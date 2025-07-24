-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:35
-- Luau version 6, Types version 3
-- Time taken: 0.008806 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local GuiService_upvr = game:GetService("GuiService")
local Color3_fromRGB_result1_upvr_2 = Color3.fromRGB(0, 162, 255)
local Color3_fromRGB_result1_upvr = Color3.fromRGB(0, 0, 0)
local var5_upvw
local var6_upvw
local var7_upvw
local module_upvw = {}
local tbl_upvw = {}
local function getSortedCarouselButtons_upvr() -- Line 34, Named "getSortedCarouselButtons"
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	local module = {}
	for i, v in ipairs(var5_upvw:GetChildren()) do
		if v:IsA("GuiObject") and v.Name ~= "_CarouselDivider" then
			table.insert(module, v)
			;({})[v] = i
		end
	end
	local tbl_upvr = {}
	table.sort(module, function(arg1, arg2) -- Line 43
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		local LayoutOrder = arg1.LayoutOrder
		if LayoutOrder == arg2.LayoutOrder then
			if tbl_upvr[arg1] >= tbl_upvr[arg2] then
				LayoutOrder = false
			else
				LayoutOrder = true
			end
			return LayoutOrder
		end
		if arg1.LayoutOrder >= arg2.LayoutOrder then
			LayoutOrder = false
		else
			LayoutOrder = true
		end
		return LayoutOrder
	end)
	return module
end
local UserInputService_upvr = game:GetService("UserInputService")
local function CreateMenuCarousel_upvr(arg1) -- Line 52, Named "CreateMenuCarousel"
	--[[ Upvalues[9]:
		[1]: var5_upvw (read and write)
		[2]: var6_upvw (read and write)
		[3]: var7_upvw (read and write)
		[4]: getSortedCarouselButtons_upvr (readonly)
		[5]: Color3_fromRGB_result1_upvr (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: Color3_fromRGB_result1_upvr_2 (readonly)
		[8]: module_upvw (read and write)
		[9]: UserInputService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Frame_4 = Instance.new("Frame")
	Frame_4.Name = "PlayerCarousel"
	Frame_4.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_4.BackgroundTransparency = 1
	Frame_4.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame_4.Size = UDim2.new(1, 0, 0.28, 0)
	Frame_4.ClipsDescendants = true
	local Frame = Instance.new("Frame")
	Frame.Name = "InnerFrame"
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundTransparency = 1
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(0.8, 0, 1, 0)
	Frame.ClipsDescendants = true
	Frame.Active = true
	Frame.Parent = Frame_4
	var5_upvw = Instance.new("Frame")
	var5_upvw.Name = "SelectedPlayer"
	var5_upvw.AnchorPoint = Vector2.new(0.5, 0.5)
	var5_upvw.BackgroundTransparency = 1
	var5_upvw.Position = UDim2.new(0.5, 0, 0.5, 0)
	var5_upvw.Size = UDim2.new(0, 100, 1, -10)
	var5_upvw.Parent = Frame
	var6_upvw = Instance.new("UIPageLayout")
	var6_upvw.EasingDirection = Enum.EasingDirection.Out
	var6_upvw.EasingStyle = Enum.EasingStyle.Quad
	var6_upvw.Padding = UDim.new(0, 5)
	var6_upvw.TweenTime = 0.25
	var6_upvw.HorizontalAlignment = Enum.HorizontalAlignment.Center
	var6_upvw.VerticalAlignment = Enum.VerticalAlignment.Center
	var6_upvw.TouchInputEnabled = false
	var6_upvw.Circular = true
	var6_upvw.SortOrder = Enum.SortOrder.LayoutOrder
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height
	UIAspectRatioConstraint.Parent = var5_upvw
	var7_upvw = Instance.new("BindableEvent")
	var7_upvw.Name = "PlayerChanged"
	local var24_upvw
	var6_upvw:GetPropertyChangedSignal("CurrentPage"):Connect(function() -- Line 98
		--[[ Upvalues[8]:
			[1]: var6_upvw (copied, read and write)
			[2]: getSortedCarouselButtons_upvr (copied, readonly)
			[3]: var24_upvw (read and write)
			[4]: Color3_fromRGB_result1_upvr (copied, readonly)
			[5]: GuiService_upvr (copied, readonly)
			[6]: Color3_fromRGB_result1_upvr_2 (copied, readonly)
			[7]: var7_upvw (copied, read and write)
			[8]: module_upvw (copied, read and write)
		]]
		if var6_upvw.CurrentPage then
			if var6_upvw.CurrentPage.Name == "_CarouselDivider" then
				if var24_upvw == getSortedCarouselButtons_upvr()[1] then
					var6_upvw:Previous()
				else
					var6_upvw:Next()
				end
			else
				var6_upvw.CurrentPage.BackgroundColor3 = Color3_fromRGB_result1_upvr
				var24_upvw = var6_upvw.CurrentPage
			end
		end
		if GuiService_upvr.SelectedCoreObject and GuiService_upvr.SelectedCoreObject.Parent == var6_upvw.Parent then
			GuiService_upvr.SelectedCoreObject.BackgroundColor3 = Color3_fromRGB_result1_upvr_2
		end
		GuiService_upvr.SelectedCoreObject = var6_upvw.CurrentPage
		if var6_upvw.CurrentPage then
			var7_upvw:Fire(module_upvw[var6_upvw.CurrentPage])
		end
	end)
	var6_upvw.Parent = var5_upvw
	local ImageButton_upvr_2 = Instance.new("ImageButton")
	ImageButton_upvr_2.Name = "NextButton"
	ImageButton_upvr_2.Image = arg1.ScrollRightImage
	ImageButton_upvr_2.BackgroundTransparency = 1
	ImageButton_upvr_2.AnchorPoint = Vector2.new(1, 0.5)
	ImageButton_upvr_2.Position = UDim2.new(1, -5, 0.5, 0)
	ImageButton_upvr_2.Size = UDim2.new(0.3, 0, 0.3, 0)
	ImageButton_upvr_2.Selectable = false
	ImageButton_upvr_2.Parent = Frame_4
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	UIAspectRatioConstraint_2.DominantAxis = Enum.DominantAxis.Width
	UIAspectRatioConstraint_2.Parent = ImageButton_upvr_2
	local clone_2_upvr = ImageButton_upvr_2:Clone()
	clone_2_upvr.Name = "PrevButton"
	local var28
	if arg1.ScrollLeftImage ~= "" then
		clone_2_upvr.Image = arg1.ScrollLeftImage
	else
		clone_2_upvr.Rotation = 180
	end
	var28 = 0.5
	clone_2_upvr.AnchorPoint = Vector2.new(0, var28)
	var28 = 5
	clone_2_upvr.Position = UDim2.new(0, var28, 0.5, 0)
	clone_2_upvr.Selectable = false
	clone_2_upvr.Parent = Frame_4
	local function _(arg1_2) -- Line 146, Named "moveChangePage"
		--[[ Upvalues[1]:
			[1]: var6_upvw (copied, read and write)
		]]
		if arg1_2 then
			var6_upvw:Next()
		else
			var6_upvw:Previous()
		end
	end
	ImageButton_upvr_2.MouseButton1Click:Connect(function() -- Line 154
		--[[ Upvalues[1]:
			[1]: var6_upvw (copied, read and write)
		]]
		var6_upvw:Next()
	end)
	clone_2_upvr.MouseButton1Click:Connect(function() -- Line 155
		--[[ Upvalues[1]:
			[1]: var6_upvw (copied, read and write)
		]]
		var6_upvw:Previous()
	end)
	if UserInputService_upvr:GetLastInputType() ~= Enum.UserInputType.Touch then
		var28 = false
	else
		var28 = true
	end
	if not var28 then
		if 3 >= #var5_upvw:GetChildren() then
		else
		end
	end
	clone_2_upvr.Visible = true
	if not var28 then
		if 3 >= #var5_upvw:GetChildren() then
		else
		end
	end
	ImageButton_upvr_2.Visible = true
	var28 = UserInputService_upvr.LastInputTypeChanged:Connect
	var28(function() -- Line 159, Named "checkButtonVisibility"
		--[[ Upvalues[4]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: clone_2_upvr (readonly)
			[3]: var5_upvw (copied, read and write)
			[4]: ImageButton_upvr_2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var31
		if UserInputService_upvr:GetLastInputType() ~= Enum.UserInputType.Touch then
			var31 = false
		else
			var31 = true
		end
		if not var31 then
			if 3 >= #var5_upvw:GetChildren() then
			else
			end
		end
		clone_2_upvr.Visible = true
		if not var31 then
			if 3 >= #var5_upvw:GetChildren() then
			else
			end
		end
		ImageButton_upvr_2.Visible = true
	end)
	return Frame_4
end
function module_2_upvr.UpdateGuiTheme(arg1, arg2) -- Line 170
	arg1.rbxGui.NextButton.Image = arg2.ScrollRightImage
	if arg2.ScrollLeftImage ~= "" then
		arg1.rbxGui.PrevButton.Image = arg2.ScrollLeftImage
	else
		arg1.rbxGui.PrevButton.Image = arg2.ScrollRightImage
		arg1.rbxGui.PrevButton.Rotation = 180
	end
end
function module_2_upvr.FadeTowardsEdges(arg1) -- Line 181
	--[[ Upvalues[2]:
		[1]: var6_upvw (read and write)
		[2]: getSortedCarouselButtons_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	if not var6_upvw.CurrentPage then return end
	local getSortedCarouselButtons_upvr_result1 = getSortedCarouselButtons_upvr()
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(getSortedCarouselButtons_upvr_result1)
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 17. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 17. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 12. Error Block 24 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [20.7]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [20.2147483650]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [20.8]
	if nil == nil then
		local _, _, _ = ipairs(getSortedCarouselButtons_upvr_result1)
		-- KONSTANTWARNING: GOTO [27] #22
	end
	-- KONSTANTERROR: [13] 12. Error Block 24 end (CF ANALYSIS FAILED)
end
function module_2_upvr.AddCarouselDivider(arg1) -- Line 209
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	local _CarouselDivider = var5_upvw:FindFirstChild("_CarouselDivider")
	if _CarouselDivider then
		_CarouselDivider:Destroy()
	end
	if #var5_upvw:GetChildren() - 1 < 5 then
	else
		local Frame_2 = Instance.new("Frame")
		Frame_2.Name = "_CarouselDivider"
		Frame_2.Size = UDim2.new(1, 0, 1, 0)
		Frame_2.BackgroundTransparency = 1
		Frame_2.Parent = var5_upvw
		Frame_2.LayoutOrder = 1000000
		local Frame_3 = Instance.new("Frame")
		Frame_3.Name = "line"
		Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame_3.BorderSizePixel = 0
		Frame_3.Position = UDim2.new(0.25, 0, 0, -3)
		Frame_3.Size = UDim2.new(0, 2, 1, 6)
		Frame_3.Parent = Frame_2
		local clone = Frame_3:Clone()
		clone.Position = UDim2.new(0.5, 0, 0, -3)
		clone.Parent = Frame_2
		local clone_3 = Frame_3:Clone()
		clone_3.Position = UDim2.new(0.75, 0, 0, -3)
		clone_3.Parent = Frame_2
	end
end
function module_2_upvr.RemovePlayerEntry(arg1, arg2) -- Line 244
	--[[ Upvalues[3]:
		[1]: tbl_upvw (read and write)
		[2]: module_upvw (read and write)
		[3]: var6_upvw (read and write)
	]]
	local var44 = tbl_upvw[arg2]
	if var44 then
		tbl_upvw[arg2] = nil
		module_upvw[var44] = nil
		var44:Destroy()
		if var6_upvw then
			var6_upvw:ApplyLayout()
		end
		arg1:FadeTowardsEdges()
	end
end
function module_2_upvr.ClearPlayerEntries(arg1) -- Line 259
	--[[ Upvalues[2]:
		[1]: module_upvw (read and write)
		[2]: tbl_upvw (read and write)
	]]
	for i_2 in pairs(module_upvw) do
		i_2:Destroy()
	end
	module_upvw = {}
	tbl_upvw = {}
end
local TweenService_upvr = game:GetService("TweenService")
local AvatarContextMenu_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("Modules"):WaitForChild("AvatarContextMenu")
function module_2_upvr.CreatePlayerEntry(arg1, arg2, arg3) -- Line 268
	--[[ Upvalues[9]:
		[1]: tbl_upvw (read and write)
		[2]: Color3_fromRGB_result1_upvr (readonly)
		[3]: Color3_fromRGB_result1_upvr_2 (readonly)
		[4]: TweenService_upvr (readonly)
		[5]: module_upvw (read and write)
		[6]: var6_upvw (read and write)
		[7]: var5_upvw (read and write)
		[8]: AvatarContextMenu_upvr (readonly)
		[9]: GuiService_upvr (readonly)
	]]
	local var51 = tbl_upvw[arg2]
	if var51 then
		var51.LayoutOrder = arg3
	else
		local ImageButton_upvr = Instance.new("ImageButton")
		ImageButton_upvr.Name = arg2.Name
		ImageButton_upvr.BorderSizePixel = 0
		ImageButton_upvr.LayoutOrder = arg3
		ImageButton_upvr.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		ImageButton_upvr.BackgroundTransparency = 0
		ImageButton_upvr.Size = UDim2.new(1, 0, 1, 0)
		ImageButton_upvr.SelectionLost:connect(function() -- Line 283
			--[[ Upvalues[2]:
				[1]: ImageButton_upvr (readonly)
				[2]: Color3_fromRGB_result1_upvr (copied, readonly)
			]]
			ImageButton_upvr.BackgroundColor3 = Color3_fromRGB_result1_upvr
		end)
		ImageButton_upvr.SelectionGained:connect(function() -- Line 284
			--[[ Upvalues[2]:
				[1]: ImageButton_upvr (readonly)
				[2]: Color3_fromRGB_result1_upvr_2 (copied, readonly)
			]]
			ImageButton_upvr.BackgroundColor3 = Color3_fromRGB_result1_upvr_2
		end)
		local any_Create_result1_upvw = TweenService_upvr:Create(ImageButton_upvr, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true), {
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		})
		any_Create_result1_upvw:Play()
		module_upvw[ImageButton_upvr] = arg2
		tbl_upvw[arg2] = ImageButton_upvr
		ImageButton_upvr.MouseButton1Click:Connect(function() -- Line 298
			--[[ Upvalues[2]:
				[1]: var6_upvw (copied, read and write)
				[2]: ImageButton_upvr (readonly)
			]]
			var6_upvw:JumpTo(ImageButton_upvr)
		end)
		ImageButton_upvr.Parent = var5_upvw
		spawn(function() -- Line 304
			--[[ Upvalues[7]:
				[1]: AvatarContextMenu_upvr (copied, readonly)
				[2]: ImageButton_upvr (readonly)
				[3]: arg2 (readonly)
				[4]: any_Create_result1_upvw (read and write)
				[5]: GuiService_upvr (copied, readonly)
				[6]: Color3_fromRGB_result1_upvr_2 (copied, readonly)
				[7]: Color3_fromRGB_result1_upvr (copied, readonly)
			]]
			ImageButton_upvr.Image = require(AvatarContextMenu_upvr:WaitForChild("ContextMenuUtil")):GetHeadshotForPlayer(arg2)
			any_Create_result1_upvw:Cancel()
			any_Create_result1_upvw = nil
			if ImageButton_upvr == GuiService_upvr.SelectedCoreObject then
				ImageButton_upvr.BackgroundColor3 = Color3_fromRGB_result1_upvr_2
			else
				ImageButton_upvr.BackgroundColor3 = Color3_fromRGB_result1_upvr
			end
		end)
	end
end
function module_2_upvr.SwitchToPlayerEntry(arg1, arg2, arg3) -- Line 317
	--[[ Upvalues[2]:
		[1]: tbl_upvw (read and write)
		[2]: var6_upvw (read and write)
	]]
	if not arg2 then
	else
		local var59 = tbl_upvw[arg2]
		if not var59 then
			arg1:CreatePlayerEntry(arg2, 0)
			var59 = tbl_upvw[arg2]
		end
		if arg3 then
			var6_upvw.TweenTime = 0
		end
		var6_upvw:JumpTo(var59)
		spawn(function() -- Line 330
			--[[ Upvalues[1]:
				[1]: var6_upvw (copied, read and write)
			]]
			var6_upvw.TweenTime = 0.25
		end)
	end
end
function module_2_upvr.OffsetPlayerEntry(arg1, arg2) -- Line 335
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	if arg2 == 0 then
	else
		if 0 < arg2 then
			var6_upvw:Next()
			return
		end
		var6_upvw:Previous()
	end
end
function module_2_upvr.GetSelectedPlayer(arg1) -- Line 345
	--[[ Upvalues[2]:
		[1]: module_upvw (read and write)
		[2]: var6_upvw (read and write)
	]]
	return module_upvw[var6_upvw.CurrentPage]
end
function module_2_upvr.new(arg1) -- Line 349
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: CreateMenuCarousel_upvr (readonly)
		[3]: var7_upvw (read and write)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_2_upvr)
	setmetatable_result1_upvr.rbxGui = CreateMenuCarousel_upvr(arg1)
	setmetatable_result1_upvr.PlayerChanged = var7_upvw.Event
	var7_upvw.Event:Connect(function() -- Line 355
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:FadeTowardsEdges()
	end)
	return setmetatable_result1_upvr
end
return module_2_upvr