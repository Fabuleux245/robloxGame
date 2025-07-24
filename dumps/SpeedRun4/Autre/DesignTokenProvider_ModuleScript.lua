-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:42
-- Luau version 6, Types version 3
-- Time taken: 0.001398 seconds

local Parent = script:FindFirstAncestor("Style").Parent
local React_upvr = require(Parent.React)
local Context_upvr = require(Parent.UIBlox).Style.Context
local useUiModeInfo_upvr = require(Parent.RobloxAppHooks).useUiModeInfo
local Cryo_upvr = require(Parent.Cryo)
local ArgCheck_upvr = require(Parent.ArgCheck)
local DesignTokenContext_upvr = require(script.Parent.DesignTokenContext)
return function(arg1) -- Line 27, Named "DesignTokenProvider"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: Context_upvr (readonly)
		[3]: useUiModeInfo_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: ArgCheck_upvr (readonly)
		[6]: DesignTokenContext_upvr (readonly)
	]]
	local tokenMappers_upvr = arg1.tokenMappers
	local Tokens_upvw = React_upvr.useContext(Context_upvr).style.Tokens
	ArgCheck_upvr.assert(Tokens_upvw, "Design Tokens not found, ensure AppStyleProvider has been configured correctly.")
	if not Tokens_upvw.LuaApps then
		Tokens_upvw = Cryo_upvr.Dictionary.join(Tokens_upvw, {
			LuaApps = {};
		})
	end
	local var12_upvw = arg1.uiModeInfo or useUiModeInfo_upvr()
	Tokens_upvw = Cryo_upvr.List.foldLeft(Cryo_upvr.Dictionary.keys(tokenMappers_upvr), function(arg1_2, arg2) -- Line 42
		--[[ Upvalues[4]:
			[1]: tokenMappers_upvr (readonly)
			[2]: var12_upvw (read and write)
			[3]: Tokens_upvw (read and write)
			[4]: Cryo_upvr (copied, readonly)
		]]
		local clone = table.clone(arg1_2.LuaApps)
		clone[arg2] = tokenMappers_upvr[arg2](var12_upvw, Tokens_upvw)
		return Cryo_upvr.Dictionary.join(arg1_2, {
			LuaApps = clone;
		})
	end, Tokens_upvw)
	return React_upvr.createElement(DesignTokenContext_upvr.Provider, {
		value = Tokens_upvw;
	}, arg1.children)
end