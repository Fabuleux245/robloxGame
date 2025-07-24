-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:17
-- Luau version 6, Types version 3
-- Time taken: 0.000470 seconds

local Parent = script:FindFirstAncestor("Foundation").Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local any_createContext_result1_upvr = React_upvr.createContext(Cryo_upvr.None)
return {
	Provider = any_createContext_result1_upvr.Provider;
	useStyleSheet = function() -- Line 10, Named "useStyleSheet"
		--[[ Upvalues[3]:
			[1]: React_upvr (readonly)
			[2]: any_createContext_result1_upvr (readonly)
			[3]: Cryo_upvr (readonly)
		]]
		local any_useContext_result1 = React_upvr.useContext(any_createContext_result1_upvr)
		if any_useContext_result1 == Cryo_upvr.None then
			return nil
		end
		return any_useContext_result1
	end;
}