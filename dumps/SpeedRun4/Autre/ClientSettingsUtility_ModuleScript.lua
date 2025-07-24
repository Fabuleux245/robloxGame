-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:22
-- Luau version 6, Types version 3
-- Time taken: 0.000853 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local module = {}
local ChatWindowBackgroundColor3_upvr = require(ExpChat.Config).ChatWindowBackgroundColor3
local Colors_upvr = require(ExpChat.Parent.UIBlox).App.Style.Colors
function module.getBackgroundColor(arg1, arg2) -- Line 14
	--[[ Upvalues[2]:
		[1]: ChatWindowBackgroundColor3_upvr (readonly)
		[2]: Colors_upvr (readonly)
	]]
	if arg1.BackgroundColor3 == ChatWindowBackgroundColor3_upvr then
		return Colors_upvr.Flint:Lerp(arg1.BackgroundColor3, arg2.preferredTransparency)
	end
	return arg1.BackgroundColor3
end
function module.getBackgroundTransparency(arg1, arg2) -- Line 22
	return arg1.BackgroundTransparency * arg2.preferredTransparency
end
return module