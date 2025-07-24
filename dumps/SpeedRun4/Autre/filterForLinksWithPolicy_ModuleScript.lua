-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:02
-- Luau version 6, Types version 3
-- Time taken: 0.000680 seconds

local module_upvr = {"roblox.com", "sitetest%d%.robloxlabs.com", "gametest%d%.robloxlabs.com", "roblox.cn", "roblox.qq.com", "roblox%-cn.com"}
local ArgCheck_upvr = require(script:FindFirstAncestor("AppChat").Parent.ArgCheck)
local filterForLinks_upvr = require(script.Parent.filterForLinks)
return function(arg1) -- Line 18
	--[[ Upvalues[3]:
		[1]: ArgCheck_upvr (readonly)
		[2]: filterForLinks_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	ArgCheck_upvr.isType(arg1, "table", "filterForLinks.text")
	return filterForLinks_upvr(arg1, module_upvr)
end