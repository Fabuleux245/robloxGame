-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:44
-- Luau version 6, Types version 3
-- Time taken: 0.000930 seconds

local Parent = script:FindFirstAncestor("Style").Parent
local React_upvr = require(Parent.React)
local DesignTokenContext_upvr = require(script.Parent.DesignTokenContext)
local Dash_upvr = require(Parent.Dash)
local ArgCheck_upvr = require(Parent.ArgCheck)
return function(arg1) -- Line 11, Named "useDesignTokens"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: DesignTokenContext_upvr (readonly)
		[3]: Dash_upvr (readonly)
		[4]: ArgCheck_upvr (readonly)
	]]
	local any_useContext_result1 = React_upvr.useContext(DesignTokenContext_upvr)
	local var7 = arg1
	if not var7 then
		var7 = Dash_upvr.identity
	end
	ArgCheck_upvr.assert(any_useContext_result1, "Design Tokens not found, ensure AppStyleProvider has been configured correctly.")
	return var7(any_useContext_result1)
end