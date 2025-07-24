-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:53
-- Luau version 6, Types version 3
-- Time taken: 0.001794 seconds

local Motion = script:FindFirstAncestor("Motion")
local useIdFallback_upvr = require(Motion.AnimatePresence.utils).useIdFallback
local React_upvr = require(Motion.Parent.React)
local PresenceContext_upvr = require(Motion.AnimatePresence.PresenceContext)
return function(arg1) -- Line 30, Named "PresenceProvider"
	--[[ Upvalues[3]:
		[1]: useIdFallback_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: PresenceContext_upvr (readonly)
	]]
	if arg1 == nil then
		error("PresenceProvider: props cannot be nil")
	end
	local children_upvr = arg1.children
	local isPresent = arg1.isPresent
	if isPresent == nil then
		isPresent = true
	end
	local var7_upvw
	local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 53
		--[[ Upvalues[2]:
			[1]: var7_upvw (read and write)
			[2]: useIdFallback_upvr (copied, readonly)
		]]
		var7_upvw = useIdFallback_upvr()
	end)
	if not pcall_result1_3 then
		warn("PresenceProvider: Error generating ID:", pcall_result2_2)
		var7_upvw = "presence-"..useIdFallback_upvr()
	end
	local var11_upvw
	local pcall_result1, pcall_result2_3 = pcall(function() -- Line 64
		--[[ Upvalues[2]:
			[1]: var11_upvw (read and write)
			[2]: React_upvr (copied, readonly)
		]]
		var11_upvw = React_upvr.useRef({})
	end)
	if not pcall_result1 then
		warn("PresenceProvider: Error creating childrenPresence ref:", pcall_result2_3)
		var11_upvw = {
			current = {};
		}
	end
	local tbl_upvr = {
		id = var7_upvw;
		isPresent = isPresent;
		register = function(arg1_3) -- Line 95, Named "register"
			--[[ Upvalues[1]:
				[1]: var11_upvw (read and write)
			]]
			var11_upvw.current[arg1_3] = false
			return function() -- Line 99
				--[[ Upvalues[2]:
					[1]: var11_upvw (copied, read and write)
					[2]: arg1_3 (readonly)
				]]
				var11_upvw.current[arg1_3] = nil
			end
		end;
		onExitComplete = function(arg1_2) -- Line 74, Named "onExitComplete"
			--[[ Upvalues[2]:
				[1]: var11_upvw (read and write)
				[2]: arg1 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
			if var11_upvw.current then
				var11_upvw.current[arg1_2] = true
			end
			local pairs_result1, pairs_result2, pairs_result3 = pairs(var11_upvw.current)
			-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [20] 17. Error Block 6 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [20] 17. Error Block 6 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [17] 14. Error Block 4 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [20.6]
			-- KONSTANTERROR: [17] 14. Error Block 4 end (CF ANALYSIS FAILED)
		end;
		passThroughData = arg1.passThroughData;
	}
	local var21_upvw
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 114
		--[[ Upvalues[5]:
			[1]: var21_upvw (read and write)
			[2]: React_upvr (copied, readonly)
			[3]: PresenceContext_upvr (copied, readonly)
			[4]: tbl_upvr (readonly)
			[5]: children_upvr (readonly)
		]]
		var21_upvw = React_upvr.createElement(PresenceContext_upvr.Provider, {
			value = tbl_upvr;
		}, children_upvr)
	end)
	if not pcall_result1_2 then
		warn("PresenceProvider: Error creating PresenceContext.Provider:", pcall_result2)
	end
	local var26 = var21_upvw
	if not var26 then
		var26 = React_upvr.createElement(React_upvr.Fragment, {}, children_upvr)
	end
	return var26
end