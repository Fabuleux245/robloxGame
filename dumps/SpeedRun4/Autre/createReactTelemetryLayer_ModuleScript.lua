-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:55
-- Luau version 6, Types version 3
-- Time taken: 0.000922 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1, arg2) -- Line 11, Named "createReactTelemetryLayer"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local any_createContext_result1_upvr = React_upvr.createContext(function() -- Line 16
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		return Cryo_upvr.Dictionary.union({}, arg2)
	end)
	return {
		Context = any_createContext_result1_upvr;
		Provider = function(arg1_2) -- Line 21, Named "Provider"
			--[[ Upvalues[4]:
				[1]: React_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: Cryo_upvr (copied, readonly)
				[4]: any_createContext_result1_upvr (readonly)
			]]
			local any_useContext_result1_upvr = React_upvr.useContext(arg1)
			return React_upvr.createElement(any_createContext_result1_upvr.Provider, {
				value = React_upvr.useCallback(function() -- Line 23
					--[[ Upvalues[3]:
						[1]: arg1_2 (readonly)
						[2]: Cryo_upvr (copied, readonly)
						[3]: any_useContext_result1_upvr (readonly)
					]]
					local value = arg1_2.value
					if typeof(value) == "function" then
						value = value()
					end
					return Cryo_upvr.Dictionary.union(any_useContext_result1_upvr(), value)
				end, {any_useContext_result1_upvr, arg1_2.value});
			}, arg1_2.children)
		end;
	}
end