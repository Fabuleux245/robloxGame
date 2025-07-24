-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:56
-- Luau version 6, Types version 3
-- Time taken: 0.000689 seconds

local t = require(script:FindFirstAncestor("CrossExperience").dependencies).t
local module_upvr = {}
function module_upvr.new(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	assert(module_upvr.isValid(arg1))
	module_upvr.__index = module_upvr
	setmetatable(arg1, module_upvr)
	return arg1
end
function module_upvr.format(arg1) -- Line 20
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.new({
		userId = arg1.userId;
		isLocalUser = arg1.isLocalUser;
		username = arg1.username;
		displayname = arg1.displayname;
		isMuted = arg1.isMuted;
		isMutedLocally = arg1.isMutedLocally;
	})
end
module_upvr.isValid = t.strictInterface({
	userId = t.number;
	isLocalUser = t.boolean;
	username = t.string;
	displayname = t.string;
	isMuted = t.boolean;
	isMutedLocally = t.boolean;
})
return module_upvr