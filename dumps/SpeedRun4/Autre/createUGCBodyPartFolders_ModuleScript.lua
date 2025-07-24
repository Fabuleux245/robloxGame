-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:25
-- Luau version 6, Types version 3
-- Time taken: 0.003916 seconds

local Constants_upvr = require(script.Parent.Parent.Constants)
local function getUGCBodyPartsAssetTypeMap_upvr(arg1, arg2, arg3) -- Line 43, Named "getUGCBodyPartsAssetTypeMap"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	assert(arg1:IsA("Model"))
	local var17 = arg2[arg3]
	if var17 == nil then
		return {}
	end
	local module_2 = {}
	for _, v in Constants_upvr.UGC_BODY_PARTS do
		local SOME_2 = arg1:FindFirstChild(v)
		if SOME_2 ~= nil then
			local var20 = Constants_upvr
			local var21 = var20.UGC_BODY_PART_NAMES_TO_ASSET_TYPE[v]
			if var21 == nil then
				var20 = false
			else
				var20 = true
			end
			assert(var20, "Body part doesn't map to an asset type")
			if var17.allowedAssetTypeSettings[var21.Name] ~= nil then
				if module_2[var21] == nil then
					module_2[var21] = {SOME_2}
				else
					table.insert(module_2[var21], SOME_2)
				end
			end
		end
	end
	return module_2
end
return function(arg1, arg2, arg3, arg4) -- Line 97, Named "createUGCBodyPartFolders"
	--[[ Upvalues[2]:
		[1]: getUGCBodyPartsAssetTypeMap_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	assert(arg1:IsA("Model"), "Invalid root instance, must be a model")
	local module_3 = {}
	for i_2, v_2 in getUGCBodyPartsAssetTypeMap_upvr(arg1, arg2, arg3), nil do
		local var32
		if table.find(Constants_upvr.ASSET_TYPES_THAT_SKIP_FOLDER, i_2) ~= nil then
			var32 = false
		else
			var32 = true
		end
		if not var32 then
			module_3[i_2] = v_2
		else
			local Folder = Instance.new("Folder")
			Folder.Name = Constants_upvr.FOLDER_NAMES.R15ArtistIntent
			for i_3, v_3 in v_2 do
				v_3.Parent = Folder
				local var34
			end
			module_3[i_2] = {var34}
			if arg4 then
				local clone = var34:Clone()
				i_3 = Constants_upvr
				clone.Name = i_3.FOLDER_NAMES.R15Fixed
				i_3 = clone
				table.insert(module_3[i_2], i_3)
				local Folder_2 = Instance.new("Folder")
				v_3 = Constants_upvr
				i_3 = v_3.FOLDER_NAMES
				Folder_2.Name = i_3.R6
				i_3 = module_3[i_2]
				v_3 = Folder_2
				table.insert(i_3, v_3)
			end
		end
	end
	return module_3
end