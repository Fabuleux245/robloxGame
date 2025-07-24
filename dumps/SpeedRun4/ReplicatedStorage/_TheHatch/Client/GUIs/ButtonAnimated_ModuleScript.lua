-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:05
-- Luau version 6, Types version 3
-- Time taken: 0.005124 seconds

local spr_upvr = require(script.Parent.spr)
local module_upvr = {}
local function _(arg1) -- Line 28, Named "floorEven"
	return arg1 // 2 * 2
end
local Maid_upvr = require(script.Parent.Maid)
local Sounds_upvr = require(script.Parent.Sounds)
function module_upvr.new(arg1) -- Line 32
	--[[ Upvalues[4]:
		[1]: Maid_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Sounds_upvr (readonly)
		[4]: spr_upvr (readonly)
	]]
	local tbl = {}
	tbl.instance = arg1
	tbl.highlight = arg1.Animated.Box:Clone()
	tbl.hovered = false
	tbl.selected = false
	tbl.maid = Maid_upvr.new()
	local setmetatable_result1_upvr = setmetatable(tbl, {
		__index = module_upvr;
	})
	setmetatable_result1_upvr.maid:Add(arg1.MouseEnter:Connect(function() -- Line 41
		--[[ Upvalues[2]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: Sounds_upvr (copied, readonly)
		]]
		setmetatable_result1_upvr.hovered = true
		setmetatable_result1_upvr:update()
		Sounds_upvr.play(Sounds_upvr.assets.hover)
	end))
	setmetatable_result1_upvr.maid:Add(arg1.MouseLeave:Connect(function() -- Line 47
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr.hovered = false
		setmetatable_result1_upvr:update()
	end))
	setmetatable_result1_upvr.maid:Add(arg1.SelectionGained:Connect(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: Sounds_upvr (copied, readonly)
		]]
		setmetatable_result1_upvr.selected = true
		setmetatable_result1_upvr:update()
		Sounds_upvr.play(Sounds_upvr.assets.hover)
	end))
	setmetatable_result1_upvr.maid:Add(arg1.SelectionLost:Connect(function() -- Line 58
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr.selected = false
		setmetatable_result1_upvr:update()
	end))
	setmetatable_result1_upvr.maid:Add(arg1.Activated:Connect(function() -- Line 63
		--[[ Upvalues[3]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: Sounds_upvr (copied, readonly)
		]]
		setmetatable_result1_upvr:update(true)
		if string.find(string.lower(arg1.Name), "egg") then
			Sounds_upvr.play(Sounds_upvr.assets.eggButton)
		else
			local ClickSound = arg1:GetAttribute("ClickSound")
			if not ClickSound then
				ClickSound = Sounds_upvr.assets.click
			end
			Sounds_upvr.play(ClickSound)
		end
	end))
	setmetatable_result1_upvr.maid:Add(arg1:GetAttributeChangedSignal("Pressed"):Connect(function() -- Line 73
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: setmetatable_result1_upvr (readonly)
			[3]: Sounds_upvr (copied, readonly)
		]]
		if arg1:GetAttribute("Pressed") then
			arg1:SetAttribute("Pressed", nil)
			setmetatable_result1_upvr:update(true)
			Sounds_upvr.play(Sounds_upvr.assets.click)
		end
	end))
	setmetatable_result1_upvr.maid:Add(function() -- Line 81
		--[[ Upvalues[2]:
			[1]: spr_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		spr_upvr.stop(arg1)
	end)
	setmetatable_result1_upvr.maid:Add(setmetatable_result1_upvr.highlight)
	setmetatable_result1_upvr:prepareHighlight()
	setmetatable_result1_upvr:update()
	return setmetatable_result1_upvr
end
local AutoScale_upvr = require(script.Parent.AutoScale)
function module_upvr.update(arg1, arg2) -- Line 93
	--[[ Upvalues[2]:
		[1]: AutoScale_upvr (readonly)
		[2]: spr_upvr (readonly)
	]]
	local hovered = arg1.hovered
	if not hovered then
		hovered = arg1.selected
	end
	local var18 = arg1.instance.AbsoluteSize / AutoScale_upvr.scale
	local X = var18.X
	if hovered then
		X = math.min(X, var18.Y) * 0.15 // 2 * 2
	else
		X = 0
	end
	spr_upvr.target(arg1.instance.Animated, 0.7, 6, {
		Size = UDim2.new(1, X, 1, X);
	})
	if hovered then
		spr_upvr.target(arg1.highlight, 1, 4, {
			BackgroundTransparency = 1;
		})
		spr_upvr.setVelocity(arg1.highlight, {
			BackgroundTransparency = -50;
		})
	end
	if arg2 then
		spr_upvr.setVelocity(arg1.instance.Animated, {
			Size = UDim2.fromOffset(-100 * X, -100 * X);
		})
	end
end
local Theme_upvr = require(script.Parent.Theme)
function module_upvr.prepareHighlight(arg1) -- Line 121
	--[[ Upvalues[1]:
		[1]: Theme_upvr (readonly)
	]]
	if arg1.highlight:FindFirstChild("UIStroke") then
		arg1.highlight:FindFirstChild("UIStroke"):Destroy()
	end
	local Box_upvr = arg1.instance.Animated.Box
	arg1.highlight.BackgroundColor3 = Theme_upvr.plusLighter(Box_upvr.BackgroundColor3, 0.25)
	arg1.highlight.BackgroundTransparency = 1
	arg1.highlight.Size = UDim2.fromScale(1, 1)
	arg1.highlight.Parent = Box_upvr
	arg1.maid:Add(Box_upvr:GetPropertyChangedSignal("BackgroundColor3"):Connect(function() -- Line 133
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Theme_upvr (copied, readonly)
			[3]: Box_upvr (readonly)
		]]
		arg1.highlight.BackgroundColor3 = Theme_upvr.plusLighter(Box_upvr.BackgroundColor3, 0.25)
	end))
end
function module_upvr.Destroy(arg1) -- Line 138
	arg1.maid:DoCleaning()
end
return module_upvr