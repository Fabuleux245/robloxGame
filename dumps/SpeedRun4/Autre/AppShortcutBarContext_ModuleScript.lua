-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:05
-- Luau version 6, Types version 3
-- Time taken: 0.001989 seconds

local React_upvr = require(script:FindFirstAncestor("AppShortcutBar").Parent.React)
local tbl_2_upvr = {
	ButtonHoldStarted = "ButtonHoldStarted";
	ButtonHoldEnded = "ButtonHoldEnded";
}
local tbl_6_upvr = {
	[tbl_2_upvr.ButtonHoldStarted] = function(arg1, arg2) -- Line 33
		local clone = table.clone(arg1)
		clone.heldProgress[arg2.eventName] = arg2.progress
		return clone
	end;
	[tbl_2_upvr.ButtonHoldEnded] = function(arg1, arg2) -- Line 38
		local clone_2 = table.clone(arg1)
		clone_2.heldProgress[arg2.eventName] = nil
		return clone_2
	end;
}
local function registryReducer_upvr(arg1, arg2) -- Line 45, Named "registryReducer"
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	local var9 = tbl_6_upvr[arg2.type]
	if var9 then
		return var9(arg1, arg2.payload)
	end
	error("Unknown action: "..arg2.type)
end
local any_createContext_result1_upvr = React_upvr.createContext(nil)
return {
	Context = any_createContext_result1_upvr;
	Provider = function(arg1) -- Line 55, Named "AppShortcutBarStateProvider"
		--[[ Upvalues[3]:
			[1]: React_upvr (readonly)
			[2]: registryReducer_upvr (readonly)
			[3]: any_createContext_result1_upvr (readonly)
		]]
		local any_useReducer_result1, any_useReducer_result2 = React_upvr.useReducer(registryReducer_upvr, {
			heldProgress = {};
		})
		return React_upvr.createElement(any_createContext_result1_upvr.Provider, {
			value = {
				state = any_useReducer_result1;
				dispatch = any_useReducer_result2;
			};
		}, arg1.children)
	end;
	useDispatchButtonHoldStarted = function() -- Line 70, Named "useDispatchButtonHoldStarted"
		--[[ Upvalues[3]:
			[1]: React_upvr (readonly)
			[2]: any_createContext_result1_upvr (readonly)
			[3]: tbl_2_upvr (readonly)
		]]
		local var17_upvr = any_createContext_result1_upvr
		local any_useContext_result1_3 = React_upvr.useContext(var17_upvr)
		if any_useContext_result1_3 then
			var17_upvr = any_useContext_result1_3.dispatch
		else
			var17_upvr = nil
		end
		return React_upvr.useCallback(function(arg1, arg2) -- Line 73
			--[[ Upvalues[2]:
				[1]: var17_upvr (readonly)
				[2]: tbl_2_upvr (copied, readonly)
			]]
			if var17_upvr then
				local tbl_5 = {
					type = tbl_2_upvr.ButtonHoldStarted;
				}
				local tbl_4 = {}
				tbl_4.eventName = arg1
				tbl_4.progress = arg2
				tbl_5.payload = tbl_4
				var17_upvr(tbl_5)
			end
		end, {var17_upvr})
	end;
	useDispatchButtonHoldEnded = function() -- Line 87, Named "useDispatchButtonHoldEnded"
		--[[ Upvalues[3]:
			[1]: React_upvr (readonly)
			[2]: any_createContext_result1_upvr (readonly)
			[3]: tbl_2_upvr (readonly)
		]]
		local var23_upvr = any_createContext_result1_upvr
		local any_useContext_result1_2 = React_upvr.useContext(var23_upvr)
		if any_useContext_result1_2 then
			var23_upvr = any_useContext_result1_2.dispatch
		else
			var23_upvr = nil
		end
		return React_upvr.useCallback(function(arg1) -- Line 90
			--[[ Upvalues[2]:
				[1]: var23_upvr (readonly)
				[2]: tbl_2_upvr (copied, readonly)
			]]
			if var23_upvr then
				local tbl = {
					type = tbl_2_upvr.ButtonHoldEnded;
				}
				local tbl_3 = {}
				tbl_3.eventName = arg1
				tbl.payload = tbl_3
				var23_upvr(tbl)
			end
		end, {var23_upvr})
	end;
	useHeldProgressByEvent = function() -- Line 62, Named "useHeldProgressByEvent"
		--[[ Upvalues[2]:
			[1]: React_upvr (readonly)
			[2]: any_createContext_result1_upvr (readonly)
		]]
		local any_useContext_result1 = React_upvr.useContext(any_createContext_result1_upvr)
		if any_useContext_result1 then
			return any_useContext_result1.state.heldProgress
		end
		return {}
	end;
	AppShortcutBarStateActionEnum = tbl_2_upvr;
}