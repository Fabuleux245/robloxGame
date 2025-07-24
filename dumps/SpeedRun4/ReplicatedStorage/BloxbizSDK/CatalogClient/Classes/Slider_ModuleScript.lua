-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:09
-- Luau version 6, Types version 3
-- Time taken: 0.006825 seconds

local module_upvr = {
	Sliders = {};
}
local UserInputService_upvr = game:GetService("UserInputService")
assert(game:GetService("RunService"):IsClient(), "Slider module can only be used on the Client!")
local Utils = script.Utils
local SliderFuncs_upvr = require(Utils.SliderFuncs)
function module_upvr.__index(arg1, arg2) -- Line 28
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v in ipairs({{".OnChange", ".Changed", rawget(arg1, "Changed")}}) do
		if string.sub(v[1], 2) == arg2 then
			warn(string.format("%s is deprecated, please use %s instead", v[1], v[2]))
			return v[3]
		end
	end
	return module_upvr[arg2]
end
local Signal_upvr = require(Utils.Signal)
function module_upvr.new(arg1, arg2) -- Line 54
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: SliderFuncs_upvr (readonly)
		[3]: Signal_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	assert(pcall(function() -- Line 56
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.AbsoluteSize, arg1.AbsolutePosition
	end), "Holder argument does not have an AbsoluteSize/AbsolutePosition")
	local ipairs_result1_2, ipairs_result2_4, ipairs_result3_3 = ipairs(module_upvr.Sliders)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 60 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [25.8]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [25.2147483650]
	if nil == arg1 then
		assert(not false, "Cannot set two sliders with same frame!")
		if arg2.SliderData.Increment == nil then
			-- KONSTANTWARNING: GOTO [42] #30
		end
		-- KONSTANTWARNING: GOTO [41] #29
	end
	-- KONSTANTERROR: [19] 15. Error Block 60 end (CF ANALYSIS FAILED)
end
function module_upvr.Track(arg1) -- Line 168
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	for _, v_2 in ipairs(arg1._data._clickConnections) do
		v_2:Disconnect()
	end
	table.insert(arg1._data._clickConnections, arg1._data.Button.MouseButton1Down:Connect(function() -- Line 175
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.IsHeld = true
	end))
	table.insert(arg1._data._clickConnections, arg1._data.Button.MouseButton1Up:Connect(function() -- Line 182
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.IsHeld then
			arg1.Released:Fire(arg1._data._value)
		end
		arg1.IsHeld = false
	end))
	if arg1._data._allowBackgroundClick then
		table.insert(arg1._data._clickConnections, arg1._data.HolderButton.Activated:Connect(function(arg1_2) -- Line 193
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_2.UserInputType == Enum.UserInputType.MouseButton1 or arg1_2.UserInputType == Enum.UserInputType.Touch then
				arg1._data._inputPos = arg1_2.Position
				arg1._data._clickOverride = true
				arg1:Update()
				arg1._data._clickOverride = false
			end
		end))
	end
	if arg1.Changed then
		arg1.Changed:Fire(arg1._data._value)
	end
	if arg1._data._mainConnection then
		arg1._data._mainConnection:Disconnect()
	end
	arg1._data._mainConnection = UserInputService_upvr.InputChanged:Connect(function(arg1_3, arg2) -- Line 215
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_3.UserInputType == Enum.UserInputType.MouseMovement or arg1_3.UserInputType == Enum.UserInputType.Touch then
			arg1._data._inputPos = arg1_3.Position
			arg1:Update()
		end
	end)
end
function module_upvr.Update(arg1) -- Line 226
	--[[ Upvalues[1]:
		[1]: SliderFuncs_upvr (readonly)
	]]
	if arg1.IsHeld or arg1._data._clickOverride then
		if arg1._data._inputPos then
			local var28 = arg1._data._inputPos[arg1._config.Axis]
			if var28 then
				arg1._data._percent = math.clamp(SliderFuncs_upvr.snapToScale((var28 - arg1._holder.AbsolutePosition[arg1._config.Axis]) / arg1._holder.AbsoluteSize[arg1._config.Axis], arg1._data._scaleIncrement), 0, 1)
				arg1.Dragged:Fire(arg1._data._value)
				arg1:Move()
			end
		end
	end
end
function module_upvr.Untrack(arg1) -- Line 245
	for _, v_3 in ipairs(arg1._data._clickConnections) do
		v_3:Disconnect()
	end
	if arg1._data._mainConnection then
		arg1._data._mainConnection:Disconnect()
	end
	arg1.IsHeld = false
end
function module_upvr.Reset(arg1) -- Line 255
	--[[ Upvalues[1]:
		[1]: SliderFuncs_upvr (readonly)
	]]
	for i_4, v_4 in ipairs(arg1._data._clickConnections) do
		v_4:Disconnect()
	end
	if arg1._data._mainConnection then
		arg1._data._mainConnection:Disconnect()
	end
	arg1.IsHeld = false
	arg1._data._percent = 0
	if arg1._config.SliderData.DefaultValue then
		v_4 = arg1._config
		i_4 = v_4.SliderData
		v_4 = arg1._config.SliderData
		i_4 = v_4.End
		v_4 = arg1._config.SliderData.DefaultValue
		arg1._data._percent = SliderFuncs_upvr.getAlphaBetween(i_4.Start, i_4, v_4)
	end
	arg1._data._percent = math.clamp(arg1._data._percent, 0, 1)
	arg1:Move()
end
function module_upvr.OverrideValue(arg1, arg2) -- Line 277
	--[[ Upvalues[1]:
		[1]: SliderFuncs_upvr (readonly)
	]]
	arg1.IsHeld = false
	arg1._data._percent = SliderFuncs_upvr.getAlphaBetween(arg1._config.SliderData.Start, arg1._config.SliderData.End, arg2)
	arg1._data._percent = math.clamp(arg1._data._percent, 0, 1)
	arg1._data._percent = SliderFuncs_upvr.snapToScale(arg1._data._percent, arg1._data._scaleIncrement)
	arg1:Move()
end
local TweenService_upvr = game:GetService("TweenService")
function module_upvr.Move(arg1, arg2) -- Line 286
	--[[ Upvalues[2]:
		[1]: SliderFuncs_upvr (readonly)
		[2]: TweenService_upvr (readonly)
	]]
	local _data = arg1._data
	_data._value = SliderFuncs_upvr.getNewValue(arg1)
	if arg2 ~= nil then
		_data = arg2
	else
		_data = arg1._config.MoveType
	end
	if _data == "Tween" or _data == nil then
		if arg1._data._currentTween then
			arg1._data._currentTween:Cancel()
		end
		arg1._data._currentTween = TweenService_upvr:Create(arg1._data.Button, arg1._config.MoveInfo, {
			Position = SliderFuncs_upvr.getNewPosition(arg1);
		})
		arg1._data._currentTween:Play()
	elseif _data == "Instant" then
		arg1._data.Button.Position = SliderFuncs_upvr.getNewPosition(arg1)
	end
	arg1.Changed:Fire(arg1._data._value)
end
function module_upvr.OverrideIncrement(arg1, arg2) -- Line 304
	--[[ Upvalues[1]:
		[1]: SliderFuncs_upvr (readonly)
	]]
	arg1._config.SliderData.Increment = arg2
	arg1._data._increment = arg2
	arg1._data._scaleIncrement = SliderFuncs_upvr.getScaleIncrement(arg1)
	arg1._data._percent = math.clamp(arg1._data._percent, 0, 1)
	arg1._data._percent = SliderFuncs_upvr.snapToScale(arg1._data._percent, arg1._data._scaleIncrement)
	arg1:Move()
end
function module_upvr.GetValue(arg1) -- Line 313
	return arg1._data._value
end
function module_upvr.GetIncrement(arg1) -- Line 317
	return arg1._data._increment
end
function module_upvr.Destroy(arg1) -- Line 321
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v_5 in ipairs(arg1._data._clickConnections) do
		v_5:Disconnect()
	end
	for _, v_6 in ipairs(arg1._data._otherConnections) do
		v_6:Disconnect()
	end
	if arg1._data._mainConnection then
		arg1._data._mainConnection:Disconnect()
	end
	if arg1._data.HolderButton then
		arg1._data.HolderButton:Destroy()
		arg1._data.HolderButton = nil
	end
	arg1.Changed:Destroy()
	arg1.Dragged:Destroy()
	arg1.Released:Destroy()
	for i_7 = 1, #module_upvr.Sliders do
		if module_upvr.Sliders[i_7] == arg1 then
			table.remove(module_upvr.Sliders, i_7)
		end
	end
	setmetatable(arg1, nil)
end
UserInputService_upvr.InputEnded:Connect(function(arg1, arg2) -- Line 352
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg1.UserInputType == Enum.UserInputType.MouseButton1 or arg1.UserInputType == Enum.UserInputType.Touch then
		for _, v_7 in ipairs(module_upvr.Sliders) do
			if v_7.IsHeld then
				v_7.Released:Fire(v_7._data._value)
			end
			v_7.IsHeld = false
		end
	end
end)
return module_upvr