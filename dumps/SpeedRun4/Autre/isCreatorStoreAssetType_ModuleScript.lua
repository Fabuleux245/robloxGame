-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:19
-- Luau version 6, Types version 3
-- Time taken: 0.000502 seconds

function isCreatorStoreAssetType(arg1) -- Line 3
	if arg1 == nil or type(arg1) ~= "string" then
		return false
	end
	for _, v in {"Model", "Plugin", "Audio", "Decal", "FontFamily", "MeshPart", "Video"} do
		if arg1 == v then
			return true
		end
	end
	return false
end
return isCreatorStoreAssetType