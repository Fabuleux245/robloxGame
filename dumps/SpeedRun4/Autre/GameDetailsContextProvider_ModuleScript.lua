-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:50
-- Luau version 6, Types version 3
-- Time taken: 0.000901 seconds

local Parent = script.Parent
local React_upvr = require(Parent.Parent.Parent.React)
local GameDetailsContext_upvr = require(Parent.GameDetailsContext)
return function(arg1) -- Line 17
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: GameDetailsContext_upvr (readonly)
	]]
	local module = {}
	local tbl = {}
	local gameDetails = arg1.gameDetails
	if not gameDetails then
		gameDetails = {}
	end
	tbl.gameDetails = gameDetails
	tbl.serverType = arg1.serverType or ""
	tbl.promptMessage = arg1.promptMessage or ""
	tbl.trigger = arg1.trigger or ""
	tbl.isCoreScript = arg1.isCoreScript or false
	module.value = tbl
	return React_upvr.createElement(GameDetailsContext_upvr.Provider, module, arg1.children)
end