-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:34
-- Luau version 6, Types version 3
-- Time taken: 0.000349 seconds

local Parent = script.Parent.Parent
local SetCurrentPage_upvr = require(Parent.Actions.SetCurrentPage)
local Pages_upvr = require(Parent.Components.Pages)
return function(arg1) -- Line 5
	--[[ Upvalues[2]:
		[1]: SetCurrentPage_upvr (readonly)
		[2]: Pages_upvr (readonly)
	]]
	arg1:dispatch(SetCurrentPage_upvr(Pages_upvr.pagesByKey[arg1:getState().menuPage].parentPage))
end