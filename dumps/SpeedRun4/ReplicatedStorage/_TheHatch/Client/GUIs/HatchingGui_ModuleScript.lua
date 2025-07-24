-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:05
-- Luau version 6, Types version 3
-- Time taken: 0.010746 seconds

local Sounds_upvr = require(script.Parent.Sounds)
local EggData_upvr = require(script.Parent.EggData)
local Tween_upvr = require(script.Parent.Tween)
local spr_upvw = require(script.Parent.spr)
local module_upvr = {}
local Sine_upvr = Enum.EasingStyle.Sine
local Quint_upvr = Enum.EasingStyle.Quint
local Out_upvr = Enum.EasingDirection.Out
local InOut_upvr = Enum.EasingDirection.InOut
local var10_upvw
local var11_upvw = 1
local function _(arg1) -- Line 58, Named "setSpeed"
	--[[ Upvalues[2]:
		[1]: var11_upvw (read and write)
		[2]: Sounds_upvr (readonly)
	]]
	var11_upvw = 1 / arg1
	local var12 = Sounds_upvr
	local tbl_2 = {}
	tbl_2.speed = arg1
	if arg1 == 1 then
		var12 = 0.5
	else
		var12 = 0.2
	end
	tbl_2.volume = var12
	Sounds_upvr.configure(var12.assets.eggPlusOne, tbl_2)
end
local function _() -- Line 66, Named "randomSign"
	if 0.5 < math.random() then
		return 1
	end
	return -1
end
function module_upvr.playAnimation(arg1, arg2, arg3) -- Line 72
	--[[ Upvalues[2]:
		[1]: EggData_upvr (readonly)
		[2]: var10_upvw (read and write)
	]]
	assert(EggData_upvr.eggs[arg1], `Invalid category index {arg1}`)
	assert(EggData_upvr.eggs[arg1][arg2], `Invalid egg index {arg2}`)
	if not var10_upvw then
		return false
	end
	local tbl_3 = {}
	tbl_3.categoryIndex = arg1
	tbl_3.eggIndex = arg2
	tbl_3.amount = arg3 or 1
	table.insert(var10_upvw.queue, tbl_3)
	var10_upvw:play()
	return not var10_upvw.locked
end
function module_upvr.cancelAnimation() -- Line 94
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	if var10_upvw then
		var10_upvw:clear()
	end
end
function module_upvr.overrideAnimation(arg1) -- Line 102
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	if var10_upvw then
		var10_upvw.override = true
		task.delay(arg1 or 0.2, function() -- Line 106
			--[[ Upvalues[1]:
				[1]: var10_upvw (copied, read and write)
			]]
			var10_upvw.override = false
			var10_upvw:clear()
		end)
		var10_upvw:clear()
	end
end
local Maid_upvr = require(script.Parent.Maid)
local trackPreferredInput_upvr = require(script.Parent.trackPreferredInput)
local UserInputService_upvr = game:GetService("UserInputService")
function module_upvr.new(arg1) -- Line 115
	--[[ Upvalues[11]:
		[1]: Maid_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: spr_upvw (read and write)
		[4]: trackPreferredInput_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
		[6]: var11_upvw (read and write)
		[7]: Sounds_upvr (readonly)
		[8]: Tween_upvr (readonly)
		[9]: Sine_upvr (readonly)
		[10]: InOut_upvr (readonly)
		[11]: var10_upvw (read and write)
	]]
	local tbl = {}
	tbl.instance = arg1
	tbl.queue = {}
	tbl.locked = false
	tbl.override = false
	tbl.maid = Maid_upvr.new()
	local setmetatable_result1_upvr = setmetatable(tbl, {
		__index = module_upvr;
	})
	if not spr_upvw.setVelocity then
		warn("[HatchingGui] spr module is missing 'setVelocity' function")
		spr_upvw = table.clone(spr_upvw)
		function spr_upvw.setVelocity() -- Line 129
		end
	end
	setmetatable_result1_upvr.maid:GiveTask(trackPreferredInput_upvr(function(arg1_2) -- Line 132
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_2 == Enum.PreferredInput.Touch then
			arg1.SpeedUp.Text = "Tap anywhere to speed up"
		else
			if arg1_2 == Enum.PreferredInput.Gamepad then
				arg1.SpeedUp.Text = "Press A on your controller to speed up"
				return
			end
			if arg1_2 == Enum.PreferredInput.KeyboardAndMouse then
				arg1.SpeedUp.Text = "Press SPACE or click to speed up"
			end
		end
	end))
	setmetatable_result1_upvr.maid:GiveTask(UserInputService_upvr.InputBegan:Connect(function(arg1_3, arg2) -- Line 142
		--[[ Upvalues[7]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: var11_upvw (copied, read and write)
			[3]: Sounds_upvr (copied, readonly)
			[4]: Tween_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: Sine_upvr (copied, readonly)
			[7]: InOut_upvr (copied, readonly)
		]]
		if not setmetatable_result1_upvr.locked then
		elseif arg1_3.KeyCode ~= Enum.KeyCode.Space or arg2 or arg1_3.UserInputType ~= Enum.UserInputType.MouseButton1 or arg2 or arg1_3.UserInputType == Enum.UserInputType.Touch and not arg2 or arg1_3.KeyCode == Enum.KeyCode.ButtonA then
			var11_upvw = 0.25
			Sounds_upvr.configure(Sounds_upvr.assets.eggPlusOne, {
				speed = 4;
				volume = 0.2;
			})
			Tween_upvr(arg1.SpeedUp, {"TextTransparency"}, {1}, 0.5, Sine_upvr, InOut_upvr)
		end
	end))
	arg1.Enabled = false
	var10_upvw = setmetatable_result1_upvr
	return setmetatable_result1_upvr
end
local RunService_upvr = game:GetService("RunService")
function module_upvr.play(arg1) -- Line 165
	--[[ Upvalues[3]:
		[1]: var11_upvw (read and write)
		[2]: Sounds_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	if not arg1.queue[1] then
		var11_upvw = 1
		Sounds_upvr.configure(Sounds_upvr.assets.eggPlusOne, {
			speed = 1;
			volume = 0.5;
		})
	else
		if arg1.locked or arg1.override then return end
		arg1.locked = true
		arg1:prepare()
		arg1.maid.heartbeat = RunService_upvr.Heartbeat:Connect(function(arg1_4) -- Line 178
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local SunRays = arg1.instance.SunRays
			SunRays.Rotation += arg1_4 * 45
			arg1.instance.HalftoneGradient.Rotation = math.sin(os.clock() / 3) * 8
		end)
		arg1.maid.thread = task.spawn(function() -- Line 183
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: var11_upvw (copied, read and write)
			]]
			local pcall_result1, pcall_result2 = pcall(function() -- Line 184
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: var11_upvw (copied, read and write)
				]]
				arg1:transitionIn()
				task.wait(var11_upvw * 0.75)
				arg1:transitionSubtleVisuals()
				task.wait(var11_upvw * 0.5)
				arg1:explode()
				arg1:showPlusOne()
				task.wait(var11_upvw * 0.75)
				arg1:showTitle()
				task.wait(var11_upvw * 0.25)
				arg1:showRarity()
				task.wait(var11_upvw * 1.25)
				arg1:transitionOut()
				task.wait(var11_upvw * 0.75)
			end)
			arg1:stop()
			if not pcall_result1 then
				warn(`[HatchingGui] Error during animation: {pcall_result2}`)
			end
		end)
		table.remove(arg1.queue, 1)
		Sounds_upvr.playStoppable(Sounds_upvr.assets.eggPlusOne)
	end
end
function module_upvr.stop(arg1) -- Line 218
	--[[ Upvalues[2]:
		[1]: spr_upvw (read and write)
		[2]: Sounds_upvr (readonly)
	]]
	arg1.locked = false
	arg1.instance.Enabled = false
	arg1.maid.thread = nil
	arg1.maid.heartbeat = nil
	spr_upvw.stop(arg1.instance.Egg)
	Sounds_upvr.stop(Sounds_upvr.assets.eggPlusOne)
	arg1:play()
end
function module_upvr.clear(arg1) -- Line 232
	table.clear(arg1.queue)
	arg1:stop()
end
function module_upvr.prepare(arg1) -- Line 237
	local instance_3 = arg1.instance
	local _1 = arg1.queue[1]
	local Animated_2 = instance_3.Egg.Animated
	arg1:prepareEgg()
	Animated_2.BloomBacklight.ImageTransparency = 1
	Animated_2.BloomProgressive.ImageTransparency = 1
	Animated_2.BloomStar.ImageTransparency = 1
	Animated_2.Icon.Visible = false
	Animated_2.Placeholder.Visible = true
	Animated_2.UIScale.Scale = 1
	instance_3.Title.TextTransparency = 1
	instance_3.Title.Fill.TextTransparency = 1
	instance_3.Title.Shading.ImageTransparency = 1
	instance_3.Title.UIStroke.Transparency = 1
	instance_3.Rarity.TextTransparency = 1
	instance_3.Rarity.Fill.TextTransparency = 1
	instance_3.Rarity.UIStroke.Transparency = 1
	instance_3.PlusOne.Text = `+{_1.amount}`
	instance_3.PlusOne.TextTransparency = 1
	instance_3.PlusOne.Fill.Text = `+{_1.amount}`
	instance_3.PlusOne.Fill.TextTransparency = 1
	instance_3.PlusOne.Shading.ImageTransparency = 1
	instance_3.PlusOne.UIStroke.Transparency = 1
	instance_3.SunRays.ImageTransparency = 1
	instance_3.Vignette.ImageTransparency = 1
	instance_3.HalftoneGradient.ImageTransparency = 1
	instance_3.SpeedUp.TextTransparency = 1
	instance_3.Enabled = true
end
local Theme_upvr = require(script.Parent.Theme)
function module_upvr.prepareEgg(arg1) -- Line 280
	--[[ Upvalues[2]:
		[1]: EggData_upvr (readonly)
		[2]: Theme_upvr (readonly)
	]]
	local instance_6 = arg1.instance
	local _1_2 = arg1.queue[1]
	local Animated = instance_6.Egg.Animated
	local var43 = EggData_upvr.eggs[_1_2.categoryIndex][_1_2.eggIndex]
	local var44 = Theme_upvr.rarities[var43.rarity]
	instance_6.Egg:SetAttribute("EggIndex", _1_2.eggIndex)
	instance_6.Egg:SetAttribute("CategoryIndex", _1_2.categoryIndex)
	Animated.Placeholder.ImageColor3 = Theme_upvr.plusDarker(var44, 0.2)
	Animated.BloomBacklight.ImageColor3 = Theme_upvr.plusLighter(var44, 0.2)
	Animated.BloomProgressive.ImageColor3 = Theme_upvr.plusLighter(var44, 0.2)
	Animated.BloomStar.ImageColor3 = Theme_upvr.plusLighter(var44, 0.2)
	instance_6.Title.Text = var43.name
	instance_6.Title.Fill.Text = instance_6.Title.Text
	instance_6.Rarity.Text = string.upper(EggData_upvr.rarities[var43.rarity])
	instance_6.Rarity.Fill.Text = instance_6.Rarity.Text
	instance_6.Rarity.Fill.TextColor3 = var44
end
function module_upvr.explode(arg1) -- Line 304
	--[[ Upvalues[3]:
		[1]: spr_upvw (read and write)
		[2]: var11_upvw (read and write)
		[3]: Tween_upvr (readonly)
	]]
	local Animated_upvr = arg1.instance.Egg.Animated
	spr_upvw.target(Animated_upvr.UIScale, 0.2, 0.8 / var11_upvw, {
		Scale = 0.75;
	})
	task.wait(var11_upvw * 0.25)
	spr_upvw.target(Animated_upvr.UIScale, 0.6, 1.5 / var11_upvw, {
		Scale = 1;
	})
	spr_upvw.target(Animated_upvr.BloomBacklight, 1, 1 / var11_upvw, {
		ImageTransparency = 1;
	})
	spr_upvw.target(Animated_upvr.BloomProgressive, 1, 1.5 / var11_upvw, {
		ImageTransparency = 1;
	})
	spr_upvw.target(Animated_upvr.BloomStar, 1, 1.5 / var11_upvw, {
		ImageTransparency = 1;
	})
	spr_upvw.setVelocity(Animated_upvr.UIScale, {
		Scale = 4;
	})
	spr_upvw.setVelocity(Animated_upvr.BloomBacklight, {
		ImageTransparency = -20;
	})
	spr_upvw.setVelocity(Animated_upvr.BloomProgressive, {
		ImageTransparency = -45;
	})
	spr_upvw.setVelocity(Animated_upvr.BloomStar, {
		ImageTransparency = -9.000000000000002;
	})
	Tween_upvr(Animated_upvr.Overlay, {"Transparency"}, 1, var11_upvw * 0.3)
	task.defer(function() -- Line 324
		--[[ Upvalues[1]:
			[1]: Animated_upvr (readonly)
		]]
		Animated_upvr.Icon.Visible = true
		Animated_upvr.Placeholder.Visible = false
	end)
end
function module_upvr.transitionIn(arg1) -- Line 330
	--[[ Upvalues[5]:
		[1]: spr_upvw (read and write)
		[2]: var11_upvw (read and write)
		[3]: Tween_upvr (readonly)
		[4]: Sine_upvr (readonly)
		[5]: InOut_upvr (readonly)
	]]
	local instance_8 = arg1.instance
	local var58
	if 0.5 < math.random() then
		var58 = 1
	else
		var58 = -1
	end
	instance_8.Egg.Position = UDim2.fromScale(0.5 - 0.05 * var58, 1.25)
	instance_8.Egg.Rotation = 15 * var58
	instance_8.Egg.Animated.Overlay.BackgroundTransparency = 0.5
	spr_upvw.target(instance_8.Egg, 0.6, 0.6 / var11_upvw, {
		Position = UDim2.fromScale(0.5, 0.5);
		Rotation = 0;
	})
	spr_upvw.setVelocity(instance_8.Egg, {
		Position = UDim2.fromScale(0.5 * var58, 0);
		Rotation = 100;
	})
	Tween_upvr(instance_8.Vignette, {"ImageTransparency"}, {0.1}, var11_upvw * 2.5, Sine_upvr, InOut_upvr)
	if var11_upvw == 1 then
		Tween_upvr(instance_8.SpeedUp, {"TextTransparency"}, {0.5}, var11_upvw * 0.5, Sine_upvr, InOut_upvr)
	end
end
function module_upvr.transitionSubtleVisuals(arg1) -- Line 355
	--[[ Upvalues[4]:
		[1]: Tween_upvr (readonly)
		[2]: var11_upvw (read and write)
		[3]: Sine_upvr (readonly)
		[4]: InOut_upvr (readonly)
	]]
	local instance = arg1.instance
	Tween_upvr(instance.HalftoneGradient, {"ImageTransparency"}, {0.7}, var11_upvw * 4, Sine_upvr, InOut_upvr)
	Tween_upvr(instance.SunRays, {"ImageTransparency"}, {0.7}, var11_upvw * 3, Sine_upvr, InOut_upvr)
end
function module_upvr.showTitle(arg1) -- Line 362
	--[[ Upvalues[6]:
		[1]: Tween_upvr (readonly)
		[2]: var11_upvw (read and write)
		[3]: Quint_upvr (readonly)
		[4]: Out_upvr (readonly)
		[5]: Sine_upvr (readonly)
		[6]: InOut_upvr (readonly)
	]]
	local instance_2 = arg1.instance
	instance_2.Title.Position = UDim2.new(0.5, 0, 0.5, -90)
	Tween_upvr(instance_2.Title, {"TextTransparency", "Position"}, {0.9, UDim2.new(0.5, 0, 0.5, -130)}, var11_upvw * 0.5, Quint_upvr, Out_upvr)
	Tween_upvr(instance_2.Title.Fill, {"TextTransparency"}, {0.1}, var11_upvw * 0.5, Quint_upvr, Out_upvr)
	Tween_upvr(instance_2.Title.Shading, {"ImageTransparency"}, {0.5}, var11_upvw * 1, Sine_upvr, InOut_upvr)
	Tween_upvr(instance_2.Title.UIStroke, {"Transparency"}, {0.6}, var11_upvw * 0.5, Quint_upvr, Out_upvr)
end
function module_upvr.showRarity(arg1) -- Line 373
	--[[ Upvalues[4]:
		[1]: Tween_upvr (readonly)
		[2]: var11_upvw (read and write)
		[3]: Quint_upvr (readonly)
		[4]: Out_upvr (readonly)
	]]
	local instance_5 = arg1.instance
	instance_5.Rarity.Position = UDim2.new(0.5, 0, 0.5, -38)
	Tween_upvr(instance_5.Rarity, {"TextTransparency", "Position"}, {0.9, UDim2.new(0.5, 0, 0.5, -98)}, var11_upvw * 0.5, Quint_upvr, Out_upvr)
	Tween_upvr(instance_5.Rarity.Fill, {"TextTransparency"}, {0.1}, var11_upvw * 0.5, Quint_upvr, Out_upvr)
	Tween_upvr(instance_5.Rarity.UIStroke, {"Transparency"}, {0.6}, var11_upvw * 0.5, Quint_upvr, Out_upvr)
end
function module_upvr.showPlusOne(arg1) -- Line 383
	--[[ Upvalues[5]:
		[1]: Tween_upvr (readonly)
		[2]: var11_upvw (read and write)
		[3]: Quint_upvr (readonly)
		[4]: Out_upvr (readonly)
		[5]: spr_upvw (read and write)
	]]
	local instance_4 = arg1.instance
	instance_4.PlusOne.Rotation = -60
	instance_4.PlusOne.Position = UDim2.fromScale(0.5, 0.5)
	Tween_upvr(instance_4.PlusOne, {"TextTransparency", "Position"}, {0.1, UDim2.new(0.5, 0, 0.5, 90)}, var11_upvw * 0.5, Quint_upvr, Out_upvr)
	Tween_upvr(instance_4.PlusOne.Fill, {"TextTransparency"}, {0.1}, var11_upvw * 0.5, Quint_upvr, Out_upvr)
	Tween_upvr(instance_4.PlusOne.Shading, {"ImageTransparency"}, {0.5}, var11_upvw * 0.5, Quint_upvr, Out_upvr)
	Tween_upvr(instance_4.PlusOne.UIStroke, {"Transparency"}, {0.6}, var11_upvw * 0.5, Quint_upvr, Out_upvr)
	spr_upvw.target(instance_4.PlusOne, 0.4, 3 / var11_upvw, {
		Rotation = 0;
	})
	spr_upvw.target(instance_4.PlusOne.UIScale, 1, 2 / var11_upvw, {
		Scale = 1;
	})
	spr_upvw.setVelocity(instance_4.PlusOne, {
		Rotation = 2000;
	})
	spr_upvw.setVelocity(instance_4.PlusOne.UIScale, {
		Scale = 3;
	})
end
function module_upvr.transitionOut(arg1) -- Line 401
	--[[ Upvalues[6]:
		[1]: Tween_upvr (readonly)
		[2]: var11_upvw (read and write)
		[3]: Sine_upvr (readonly)
		[4]: InOut_upvr (readonly)
		[5]: Quint_upvr (readonly)
		[6]: spr_upvw (read and write)
	]]
	local instance_7 = arg1.instance
	Tween_upvr(instance_7.SunRays, {"ImageTransparency"}, {1}, var11_upvw * 0.5, Sine_upvr, InOut_upvr)
	Tween_upvr(instance_7.Vignette, {"ImageTransparency"}, {1}, var11_upvw * 1, Sine_upvr, InOut_upvr)
	Tween_upvr(instance_7.HalftoneGradient, {"ImageTransparency"}, {1}, var11_upvw * 1, Sine_upvr, InOut_upvr)
	Tween_upvr(instance_7.SpeedUp, {"TextTransparency"}, {1}, var11_upvw * 1, Sine_upvr, InOut_upvr)
	Tween_upvr(instance_7.Title, {"Position"}, {UDim2.new(0.5, 0, 0.5, -90)}, var11_upvw * 0.5, Quint_upvr, InOut_upvr)
	Tween_upvr(instance_7.Title, {"TextTransparency"}, {1}, var11_upvw * 0.15, Sine_upvr, InOut_upvr)
	Tween_upvr(instance_7.Title.Fill, {"TextTransparency"}, {1}, var11_upvw * 0.3, Sine_upvr, InOut_upvr)
	Tween_upvr(instance_7.Title.Shading, {"ImageTransparency"}, {1}, var11_upvw * 0.3, Sine_upvr, InOut_upvr)
	Tween_upvr(instance_7.Title.UIStroke, {"Transparency"}, {1}, var11_upvw * 0.15, Sine_upvr, InOut_upvr)
	task.wait(var11_upvw * 0.1)
	Tween_upvr(instance_7.Rarity, {"Position"}, {UDim2.new(0.5, 0, 0.5, -48)}, var11_upvw * 0.5, Quint_upvr, InOut_upvr)
	Tween_upvr(instance_7.Rarity, {"TextTransparency"}, {1}, var11_upvw * 0.15, Sine_upvr, InOut_upvr)
	Tween_upvr(instance_7.Rarity.Fill, {"TextTransparency"}, {1}, var11_upvw * 0.3, Sine_upvr, InOut_upvr)
	Tween_upvr(instance_7.Rarity.UIStroke, {"Transparency"}, {1}, var11_upvw * 0.15, Sine_upvr, InOut_upvr)
	task.wait(var11_upvw * 0.1)
	spr_upvw.target(instance_7.Egg, 0.01, 0.35 / var11_upvw, {
		Position = UDim2.fromScale(0.5, 1.5);
		Rotation = 5;
	})
	Tween_upvr(instance_7.PlusOne, {"Position"}, {UDim2.new(0.5, 0, 0.5, 130)}, var11_upvw * 0.5, Quint_upvr, InOut_upvr)
	Tween_upvr(instance_7.PlusOne, {"TextTransparency"}, {1}, var11_upvw * 0.15, Sine_upvr, InOut_upvr)
	Tween_upvr(instance_7.PlusOne.Fill, {"TextTransparency"}, {1}, var11_upvw * 0.3, Sine_upvr, InOut_upvr)
	Tween_upvr(instance_7.PlusOne.Shading, {"ImageTransparency"}, {1}, var11_upvw * 0.3, Sine_upvr, InOut_upvr)
	Tween_upvr(instance_7.PlusOne.UIStroke, {"Transparency"}, {1}, var11_upvw * 0.15, Sine_upvr, InOut_upvr)
end
function module_upvr.Destroy(arg1) -- Line 436
	arg1.maid:DoCleaning()
end
return module_upvr