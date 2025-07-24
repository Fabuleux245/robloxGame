-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:03:17
-- Luau version 6, Types version 3
-- Time taken: 0.001544 seconds

local RoduxGames = script:FindFirstAncestor("RoduxGames")
local t = require(RoduxGames.Parent.t)
local CreatorType_upvr = require(RoduxGames.Enums).CreatorType
local module_upvr = {}
function module_upvr.new(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	assert(module_upvr.isValid(arg1))
	module_upvr.__index = module_upvr
	setmetatable(arg1, module_upvr)
	return arg1
end
function module_upvr.mock(arg1) -- Line 27
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: CreatorType_upvr (readonly)
	]]
	local var5 = arg1
	if not var5 then
		var5 = {}
	end
	local var6 = var5
	local module = {
		creatorId = var6.creatorId or "creatorId";
		creatorName = var6.creatorName or "creatorName";
	}
	local creatorType = var6.creatorType
	if not creatorType then
		creatorType = CreatorType_upvr.User
	end
	module.creatorType = creatorType
	return module_upvr.new(module)
end
function module_upvr.format(arg1) -- Line 39
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: CreatorType_upvr (readonly)
	]]
	return module_upvr.new({
		creatorId = tostring(arg1.id);
		creatorName = arg1.name;
		creatorType = CreatorType_upvr.fromRawValue(arg1.type);
	})
end
module_upvr.isValid = t.strictInterface({
	creatorId = t.string;
	creatorName = t.string;
	creatorType = t.userdata;
})
return module_upvr