-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:45
-- Luau version 6, Types version 3
-- Time taken: 0.001404 seconds

local ReactSceneUnderstanding = script:FindFirstAncestor("ReactSceneUnderstanding")
local React = require(ReactSceneUnderstanding.Parent.React)
local useCurrentCamera_upvr = require(ReactSceneUnderstanding.useCurrentCamera)
local useState_upvr = React.useState
local enums_upvr = require(ReactSceneUnderstanding.enums)
local useRef_upvr = React.useRef
local useCallback_upvr = React.useCallback
local useEventConnection_upvr = require(ReactSceneUnderstanding.Parent.ReactUtils).useEventConnection
local UserInputService_upvr = game:GetService("UserInputService")
local useEffect_upvr = React.useEffect
return function(arg1) -- Line 20, Named "useCameraState"
	--[[ Upvalues[8]:
		[1]: useCurrentCamera_upvr (readonly)
		[2]: useState_upvr (readonly)
		[3]: enums_upvr (readonly)
		[4]: useRef_upvr (readonly)
		[5]: useCallback_upvr (readonly)
		[6]: useEventConnection_upvr (readonly)
		[7]: UserInputService_upvr (readonly)
		[8]: useEffect_upvr (readonly)
	]]
	local var4_result1, useState_upvr_result2_upvr = useState_upvr(enums_upvr.CameraState.Idle)
	local var13_upvr = arg1 or useCurrentCamera_upvr()
	local useRef_upvr_result1_upvr = useRef_upvr(nil)
	local var7_result1_upvr = useCallback_upvr(function() -- Line 27
		--[[ Upvalues[3]:
			[1]: useState_upvr_result2_upvr (readonly)
			[2]: enums_upvr (copied, readonly)
			[3]: useRef_upvr_result1_upvr (readonly)
		]]
		useState_upvr_result2_upvr(function(arg1_2) -- Line 28
			--[[ Upvalues[1]:
				[1]: enums_upvr (copied, readonly)
			]]
			if arg1_2 ~= enums_upvr.CameraState.Moving then
				return enums_upvr.CameraState.Moving
			end
			return arg1_2
		end)
		if useRef_upvr_result1_upvr.current then
			task.cancel(useRef_upvr_result1_upvr.current)
		end
		useRef_upvr_result1_upvr.current = task.delay(0.2, function() -- Line 36
			--[[ Upvalues[2]:
				[1]: useState_upvr_result2_upvr (copied, readonly)
				[2]: enums_upvr (copied, readonly)
			]]
			useState_upvr_result2_upvr(enums_upvr.CameraState.Idle)
		end)
	end, {})
	useEventConnection_upvr(UserInputService_upvr.InputChanged, function(arg1_3) -- Line 41
		--[[ Upvalues[1]:
			[1]: var7_result1_upvr (readonly)
		]]
		if arg1_3.UserInputType == Enum.UserInputType.MouseWheel then
			var7_result1_upvr()
		end
	end, {var7_result1_upvr})
	useEffect_upvr(function() -- Line 47
		--[[ Upvalues[2]:
			[1]: var13_upvr (readonly)
			[2]: var7_result1_upvr (readonly)
		]]
		local any_Connect_result1_upvr = var13_upvr:GetPropertyChangedSignal("CFrame"):Connect(var7_result1_upvr)
		return function() -- Line 50
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, {var13_upvr, var7_result1_upvr})
	return var4_result1
end