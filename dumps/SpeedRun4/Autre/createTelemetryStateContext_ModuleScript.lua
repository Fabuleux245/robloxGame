-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:37
-- Luau version 6, Types version 3
-- Time taken: 0.001376 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 18, Named "createStateContext"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local any_createContext_result1_upvr = React_upvr.createContext({
		get = function() -- Line 20, Named "get"
			--[[ Upvalues[2]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return Cryo_upvr.Dictionary.union({}, arg1)
		end;
		set = function() -- Line 23, Named "set"
		end;
	})
	return {
		Provider = any_createContext_result1_upvr.Provider;
		useClearState = function() -- Line 28, Named "useClearState"
			--[[ Upvalues[3]:
				[1]: React_upvr (copied, readonly)
				[2]: any_createContext_result1_upvr (readonly)
				[3]: arg1 (readonly)
			]]
			local set_upvr = React_upvr.useContext(any_createContext_result1_upvr).set
			return React_upvr.useCallback(function() -- Line 30
				--[[ Upvalues[2]:
					[1]: set_upvr (readonly)
					[2]: arg1 (copied, readonly)
				]]
				set_upvr(arg1)
			end, {set_upvr})
		end;
		useGetState = function() -- Line 34, Named "useGetState"
			--[[ Upvalues[2]:
				[1]: React_upvr (copied, readonly)
				[2]: any_createContext_result1_upvr (readonly)
			]]
			return React_upvr.useContext(any_createContext_result1_upvr).get
		end;
		useMergeState = function() -- Line 37, Named "useMergeState"
			--[[ Upvalues[3]:
				[1]: React_upvr (copied, readonly)
				[2]: any_createContext_result1_upvr (readonly)
				[3]: Cryo_upvr (copied, readonly)
			]]
			local set_upvr_2 = React_upvr.useContext(any_createContext_result1_upvr).set
			return React_upvr.useCallback(function(arg1_2) -- Line 39
				--[[ Upvalues[2]:
					[1]: set_upvr_2 (readonly)
					[2]: Cryo_upvr (copied, readonly)
				]]
				set_upvr_2(function(arg1_3) -- Line 40
					--[[ Upvalues[2]:
						[1]: Cryo_upvr (copied, readonly)
						[2]: arg1_2 (readonly)
					]]
					return Cryo_upvr.Dictionary.join(arg1_3, arg1_2)
				end)
			end, {set_upvr_2})
		end;
		useSetState = function() -- Line 45, Named "useSetState"
			--[[ Upvalues[2]:
				[1]: React_upvr (copied, readonly)
				[2]: any_createContext_result1_upvr (readonly)
			]]
			return React_upvr.useContext(any_createContext_result1_upvr).set
		end;
	}
end