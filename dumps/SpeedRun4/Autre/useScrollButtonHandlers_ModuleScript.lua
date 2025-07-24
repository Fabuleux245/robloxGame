-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:39
-- Luau version 6, Types version 3
-- Time taken: 0.005584 seconds

local Parent = script:FindFirstAncestor("CollectionViews").Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
local React_upvr = require(Parent.React)
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local TweenService_upvr = game:GetService("TweenService")
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 10, Named "useScrollButtonHandlers"
	--[[ Upvalues[4]:
		[1]: ArgCheck_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: UserGameSettings_upvr (readonly)
		[4]: TweenService_upvr (readonly)
	]]
	local var6 = ArgCheck_upvr
	if 1 > arg4 then
		var6 = false
	else
		var6 = true
	end
	var6.assert(var6)
	var6 = ArgCheck_upvr
	if 0 > arg2 then
		var6 = false
	else
		var6 = true
	end
	var6.assert(var6)
	var6 = React_upvr
	var6 = false
	local any_useState_result1_2, any_useState_result2_upvr_2 = var6.useState(var6)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(arg3)
	local any_useRef_result1_upvr_2 = React_upvr.useRef(0)
	local maximum_upvr = math.max(0, arg2 - arg4)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2) -- Line 31
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: maximum_upvr (readonly)
		]]
		any_useRef_result1_upvr_2.current = math.max(0, math.min(maximum_upvr, arg1_2))
		return any_useRef_result1_upvr_2.current
	end, {maximum_upvr, any_useRef_result1_upvr_2})
	local tbl_3 = {}
	tbl_3[1] = arg3
	tbl_3[2] = maximum_upvr
	tbl_3[3] = any_useRef_result1_upvr_2
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function() -- Line 38
		--[[ Upvalues[5]:
			[1]: arg3 (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: any_useRef_result1_upvr_2 (readonly)
			[5]: maximum_upvr (readonly)
		]]
		local var18
		if not arg3 then
			var18 = false
			any_useState_result2_upvr_2(var18)
			var18 = false
			any_useState_result2_upvr(var18)
		else
			if 0 >= any_useRef_result1_upvr_2.current then
				var18 = false
			else
				var18 = true
			end
			any_useState_result2_upvr_2(var18)
			if any_useRef_result1_upvr_2.current >= maximum_upvr then
				var18 = false
			else
				var18 = true
			end
			any_useState_result2_upvr(var18)
		end
	end, tbl_3)
	local tbl_2 = {any_useCallback_result1_upvr_3}
	tbl_2[2] = arg5
	tbl_2[3] = arg6
	tbl_2[4] = any_useRef_result1_upvr
	tbl_2[5] = arg7
	tbl_2[6] = arg1
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_3, arg2_2) -- Line 56
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: arg5 (readonly)
			[3]: arg6 (readonly)
			[4]: UserGameSettings_upvr (copied, readonly)
			[5]: any_useRef_result1_upvr (readonly)
			[6]: TweenService_upvr (copied, readonly)
			[7]: arg7 (readonly)
			[8]: any_useCallback_result1_upvr_3 (readonly)
		]]
		local current_2 = arg1.current
		if current_2 ~= nil then
			local vector2 = Vector2.new(arg1_3 * (arg5:getValue().X + arg6), current_2.CanvasPosition.Y)
			if arg2_2 and not UserGameSettings_upvr.ReducedMotion then
				if any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current:Cancel()
				end
				any_useRef_result1_upvr.current = TweenService_upvr:Create(current_2, TweenInfo.new(arg7 or 0.75, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
					CanvasPosition = vector2;
				}):Play()
				return
			end
			current_2.CanvasPosition = vector2
			any_useCallback_result1_upvr_3()
		end
	end, tbl_2)
	local module = {any_useCallback_result1_upvr_2, any_useCallback_result1_upvr}
	module[3] = arg4
	module[4] = any_useRef_result1_upvr_2
	local module_2 = {any_useCallback_result1_upvr_2, any_useCallback_result1_upvr}
	module_2[3] = arg4
	module_2[4] = any_useRef_result1_upvr_2
	local tbl_4 = {any_useCallback_result1_upvr, any_useCallback_result1_upvr_2}
	tbl_4[3] = arg3
	React_upvr.useEffect(function() -- Line 99
		--[[ Upvalues[5]:
			[1]: any_useCallback_result1_upvr (readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: arg3 (readonly)
			[4]: any_useCallback_result1_upvr_2 (readonly)
			[5]: any_useCallback_result1_upvr_3 (readonly)
		]]
		any_useCallback_result1_upvr(any_useRef_result1_upvr_2.current)
		if arg3 then
			any_useCallback_result1_upvr_2(any_useRef_result1_upvr_2.current)
		end
		any_useCallback_result1_upvr_3()
	end, tbl_4)
	local tbl = {any_useCallback_result1_upvr_2, any_useRef_result1_upvr_2}
	tbl[3] = arg1
	tbl[4] = arg3
	tbl[5] = any_useCallback_result1_upvr
	React_upvr.useEffect(function() -- Line 115
		--[[ Upvalues[6]:
			[1]: arg3 (readonly)
			[2]: arg1 (readonly)
			[3]: any_useCallback_result1_upvr (readonly)
			[4]: any_useRef_result1_upvr_2 (readonly)
			[5]: any_useCallback_result1_upvr_2 (readonly)
			[6]: any_useCallback_result1_upvr_3 (readonly)
		]]
		if not arg3 then
			return nil
		end
		local tbl_upvr = {}
		if arg1.current ~= nil then
			local current = arg1.current
			table.insert(tbl_upvr, current:GetPropertyChangedSignal("CanvasSize"):Connect(function() -- Line 125
				--[[ Upvalues[4]:
					[1]: any_useCallback_result1_upvr (copied, readonly)
					[2]: any_useRef_result1_upvr_2 (copied, readonly)
					[3]: any_useCallback_result1_upvr_2 (copied, readonly)
					[4]: any_useCallback_result1_upvr_3 (copied, readonly)
				]]
				any_useCallback_result1_upvr(any_useRef_result1_upvr_2.current)
				any_useCallback_result1_upvr_2(any_useRef_result1_upvr_2.current)
				any_useCallback_result1_upvr_3()
			end))
			table.insert(tbl_upvr, current:GetPropertyChangedSignal("CanvasPosition"):Connect(function() -- Line 134
				--[[ Upvalues[3]:
					[1]: any_useCallback_result1_upvr (copied, readonly)
					[2]: any_useRef_result1_upvr_2 (copied, readonly)
					[3]: any_useCallback_result1_upvr_3 (copied, readonly)
				]]
				any_useCallback_result1_upvr(any_useRef_result1_upvr_2.current)
				any_useCallback_result1_upvr_3()
			end))
		end
		return function() -- Line 141
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			for _, v in tbl_upvr do
				v:Disconnect()
			end
		end
	end, tbl)
	return React_upvr.useCallback(function() -- Line 86
		--[[ Upvalues[4]:
			[1]: any_useCallback_result1_upvr (readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: arg4 (readonly)
			[4]: any_useCallback_result1_upvr_2 (readonly)
		]]
		any_useCallback_result1_upvr_2(any_useCallback_result1_upvr(any_useRef_result1_upvr_2.current - arg4), true)
	end, module), React_upvr.useCallback(function() -- Line 91
		--[[ Upvalues[4]:
			[1]: any_useCallback_result1_upvr (readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: arg4 (readonly)
			[4]: any_useCallback_result1_upvr_2 (readonly)
		]]
		any_useCallback_result1_upvr_2(any_useCallback_result1_upvr(any_useRef_result1_upvr_2.current + arg4), true)
	end, module_2), any_useState_result1_2, any_useState_result1
end