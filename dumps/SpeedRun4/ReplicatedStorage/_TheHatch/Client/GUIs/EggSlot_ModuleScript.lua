-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:07
-- Luau version 6, Types version 3
-- Time taken: 0.008581 seconds

local module_upvr = {}
local Maid_upvr = require(script.Parent.Maid)
function module_upvr.new(arg1) -- Line 33
	--[[ Upvalues[2]:
		[1]: Maid_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local tbl = {}
	tbl.instance = arg1
	tbl.maid = Maid_upvr.new()
	local setmetatable_result1_upvr = setmetatable(tbl, {
		__index = module_upvr;
	})
	setmetatable_result1_upvr.maid:Add(arg1.AttributeChanged:Connect(function() -- Line 39
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:updateAppearance()
		setmetatable_result1_upvr:updateStatus()
		setmetatable_result1_upvr:updateBounce()
	end))
	setmetatable_result1_upvr:deactivateOnHold()
	setmetatable_result1_upvr:updateAppearance()
	setmetatable_result1_upvr:updateStatus()
	setmetatable_result1_upvr:updateBounce()
	return setmetatable_result1_upvr
end
function module_upvr.updateStatus(arg1) -- Line 54
	local instance_3 = arg1.instance
	local Locked = instance_3:GetAttribute("Locked")
	if Locked then
		if instance_3:GetAttribute("LockedIcon") ~= true then
			Locked = false
		else
			Locked = true
		end
		instance_3.Animated.Status.Amount.Visible = false
		instance_3.Animated.Status.Lock.Visible = true
		instance_3.Animated.Status.Visible = Locked
		instance_3.Animated.Icon.Question.Visible = not Locked
	else
		local var9 = tonumber(instance_3:GetAttribute("Amount")) or 0
		if 1 < var9 then
			instance_3.Animated.Status.Lock.Visible = false
			instance_3.Animated.Status.Amount.Text = `{var9}`
			instance_3.Animated.Status.Amount.Visible = true
			instance_3.Animated.Status.Visible = true
			return
		end
		instance_3.Animated.Status.Visible = false
	end
end
local EggData_upvr = require(script.Parent.EggData)
local Theme_upvr = require(script.Parent.Theme)
function module_upvr.updateAppearance(arg1) -- Line 78
	--[[ Upvalues[2]:
		[1]: EggData_upvr (readonly)
		[2]: Theme_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local instance_2 = arg1.instance
	local tonumber_result1_2 = tonumber(instance_2:GetAttribute("CategoryIndex"))
	local var26
	if instance_2:GetAttribute("Locked") then
		var26 = instance_2:GetAttribute("LockedIcon")
		local var27 = not var26
	end
	var26 = EggData_upvr.eggs[tonumber_result1_2]
	if var26 then
		var26 = EggData_upvr.eggs[tonumber_result1_2][tonumber(instance_2:GetAttribute("EggIndex"))]
	end
	if var26 then
	else
	end
	if var26 then
		local _ = var26.thumbnail
	else
	end
	if var26 then
		local _ = var26.rarity
	else
	end
	local var30 = EggData_upvr.rarities[instance_2:GetAttribute("Rarity") or 0]
	if not var30 then
		var30 = instance_2:GetAttribute("RarityText")
		if not var30 then
			var30 = "Unknown"
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var31 = Theme_upvr.rarities[instance_2:GetAttribute("Rarity") or 0]
	if not var31 then
		var31 = Theme_upvr.rarities[0]
	end
	if instance_2:GetAttribute("Locked") then
		local _0 = Theme_upvr.rarities[0]
	else
	end
	local any_plusDarker_result1 = Theme_upvr.plusDarker(var31, 0.25)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	instance_2.Animated.Icon.Question.TextColor3 = Theme_upvr.plusLighter(var31, 0.25)
	instance_2.Animated.Icon.Question.Visible = var27
	if (instance_2:GetAttribute("Thumbnail") or "") ~= "" then
		-- KONSTANTWARNING: GOTO [135] #102
	end
	instance_2.Animated.Icon.Image = "rbxassetid://71269200872007"
	if var27 then
		-- KONSTANTWARNING: GOTO [152] #114
	end
	instance_2.Animated.Icon.ImageColor3 = Color3.new(1, 1, 1)
	local Animated = instance_2.Animated
	if var27 then
		Animated = 0.65
	else
		Animated = 0
	end
	Animated.Icon.ImageTransparency = Animated
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if (instance_2:GetAttribute("Rarity") or 0) == 2 then
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if (instance_2:GetAttribute("Rarity") or 0) == 3 then
		else
		end
	end
	instance_2.Animated.Dots.Image = ""
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	instance_2.Animated.Dots.ImageColor3 = Theme_upvr.plusLighter(var31, 0.25)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	instance_2.Animated.Box.BackgroundColor3 = var31
	instance_2.Animated.Outline.BackgroundColor3 = any_plusDarker_result1
	instance_2.Animated.Outline.UIStroke.Color = any_plusDarker_result1
	instance_2.Animated.BorderDark.UIStroke.Color = any_plusDarker_result1
	if var27 then
		instance_2.Animated:SetAttribute("Tooltip", `<font color="#{Theme_upvr.plusDarker(var31, 0.25):ToHex()}">{var30}</font> ???`)
	else
		instance_2.Animated:SetAttribute("Tooltip", `<font color="#{Theme_upvr.plusDarker(var31, 0.25):ToHex()}">{var30}</font> {instance_2:GetAttribute("Name") or ""}`)
	end
end
local spr_upvr = require(script.Parent.spr)
function module_upvr.updateBounce(arg1) -- Line 125
	--[[ Upvalues[1]:
		[1]: spr_upvr (readonly)
	]]
	local Bounce = arg1.instance:GetAttribute("Bounce")
	if type(Bounce) ~= "number" then
	else
		arg1.instance:SetAttribute("Bounce", nil)
		spr_upvr.target(arg1.instance.Animated, 0.7, 5, {
			Position = UDim2.fromScale(0.5, 0.5);
		})
		spr_upvr.setVelocity(arg1.instance.Animated, {
			Position = UDim2.fromScale(0, Bounce * 80);
		})
	end
end
function module_upvr.deactivateOnHold(arg1) -- Line 138
	if not arg1.instance.Active or not arg1.instance.Selectable then
	else
		arg1.maid:Add(arg1.instance.InputBegan:Connect(function(arg1_2) -- Line 143
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_2.UserInputType == Enum.UserInputType.Touch then
				arg1.maid.deactivate = task.delay(0.5, function() -- Line 145
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1.instance.Active = false
				end)
			end
		end))
		arg1.maid:Add(arg1.instance.InputEnded:Connect(function(arg1_3) -- Line 151
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_3.UserInputType == Enum.UserInputType.Touch then
				arg1.maid.deactivate = nil
				arg1.instance.Active = true
			end
		end))
	end
end
function module_upvr.Destroy(arg1) -- Line 159
	arg1.maid:DoCleaning()
end
return module_upvr