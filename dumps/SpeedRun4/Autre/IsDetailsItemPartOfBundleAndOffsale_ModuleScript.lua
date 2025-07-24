-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:23
-- Luau version 6, Types version 3
-- Time taken: 0.000685 seconds

return function(arg1) -- Line 4
	local assetId = arg1.detailsInformation.assetId
	if assetId == nil then
		return nil
	end
	local var3 = arg1.assets[assetId]
	local var4 = var3
	if var4 then
		if var3.parentBundleId == nil then
			var4 = false
		else
			var4 = true
		end
	end
	return var4
end