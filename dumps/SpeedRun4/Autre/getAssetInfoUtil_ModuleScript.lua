-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:12
-- Luau version 6, Types version 3
-- Time taken: 0.000997 seconds

local module = {}
local isCreatorStoreAssetType_upvr = require(script.Parent.Parent.Utils.isCreatorStoreAssetType)
function module.isAssetValid(arg1) -- Line 17
	--[[ Upvalues[1]:
		[1]: isCreatorStoreAssetType_upvr (readonly)
	]]
	if isCreatorStoreAssetType_upvr(arg1.type) and (not arg1.id or not arg1.type or not arg1.typeId or not arg1.creator) then
		return false
	end
	return true
end
function module.fromAsset(arg1) -- Line 29
	return {
		id = arg1.id;
		type = arg1.type;
		typeId = arg1.typeId;
		creator = arg1.creator;
		description = arg1.description;
		isPublicDomainEnabled = arg1.isPublicDomainEnabled;
		name = arg1.name;
	}
end
return module