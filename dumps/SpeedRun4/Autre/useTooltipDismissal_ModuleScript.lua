-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:10
-- Luau version 6, Types version 3
-- Time taken: 0.002727 seconds

local Packages = game:GetService("CorePackages").Packages
local LuauPolyfill = require(Packages.LuauPolyfill)
local function _(arg1) -- Line 12, Named "isClickOrTap"
	local var3 = true
	if arg1.UserInputType ~= Enum.UserInputType.MouseButton1 then
		if arg1.UserInputType ~= Enum.UserInputType.Touch then
			var3 = false
		else
			var3 = true
		end
	end
	return var3
end
local React_upvr = require(Packages.React)
local clearTimeout_upvr = LuauPolyfill.clearTimeout
local setTimeout_upvr = LuauPolyfill.setTimeout
local UserInputService_upvr = game:GetService("UserInputService")
return function(arg1) -- Line 17
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: clearTimeout_upvr (readonly)
		[3]: setTimeout_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
	]]
	local any_useState_result1_3, any_useState_result2_upvr = React_upvr.useState("")
	local any_useState_result1, any_useState_result2_upvr_3 = React_upvr.useState("")
	local any_useState_result1_2, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 23
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: clearTimeout_upvr (copied, readonly)
			[3]: any_useRef_result1_upvr_2 (readonly)
		]]
		if any_useRef_result1_upvr.current then
			clearTimeout_upvr(any_useRef_result1_upvr.current)
		end
		if any_useRef_result1_upvr_2.current then
			any_useRef_result1_upvr_2.current:Disconnect()
			any_useRef_result1_upvr_2.current = nil
		end
	end, {any_useRef_result1_upvr, any_useRef_result1_upvr_2})
	React_upvr.useEffect(function() -- Line 54
		--[[ Upvalues[1]:
			[1]: any_useCallback_result1_upvr (readonly)
		]]
		return any_useCallback_result1_upvr
	end, {})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 32
		--[[ Upvalues[7]:
			[1]: any_useCallback_result1_upvr (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: any_useRef_result1_upvr (readonly)
			[4]: setTimeout_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: any_useRef_result1_upvr_2 (readonly)
			[7]: UserInputService_upvr (copied, readonly)
		]]
		any_useCallback_result1_upvr()
		any_useState_result2_upvr_2(true)
		any_useRef_result1_upvr.current = setTimeout_upvr(function() -- Line 39
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr (copied, readonly)
				[2]: any_useState_result2_upvr_2 (copied, readonly)
			]]
			any_useCallback_result1_upvr()
			any_useState_result2_upvr_2(false)
		end, arg1)
		any_useRef_result1_upvr_2.current = UserInputService_upvr.InputBegan:Connect(function(arg1_2, arg2) -- Line 44
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr (copied, readonly)
				[2]: any_useState_result2_upvr_2 (copied, readonly)
			]]
			local var23 = true
			if arg1_2.UserInputType ~= Enum.UserInputType.MouseButton1 then
				if arg1_2.UserInputType ~= Enum.UserInputType.Touch then
					var23 = false
				else
					var23 = true
				end
			end
			if not var23 then
			else
				any_useCallback_result1_upvr()
				any_useState_result2_upvr_2(false)
			end
		end)
	end, {any_useRef_result1_upvr, any_useRef_result1_upvr_2})
	return any_useState_result1_3, any_useState_result1, any_useState_result1_2, React_upvr.useCallback(function(arg1_3, arg2) -- Line 58
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: any_useState_result2_upvr_3 (readonly)
			[3]: any_useCallback_result1_upvr_2 (readonly)
		]]
		any_useState_result2_upvr(arg1_3)
		any_useState_result2_upvr_3(arg2)
		any_useCallback_result1_upvr_2()
	end, {})
end