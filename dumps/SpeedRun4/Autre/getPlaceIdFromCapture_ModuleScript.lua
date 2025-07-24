-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:23
-- Luau version 6, Types version 3
-- Time taken: 0.000360 seconds

local getCaptureMetadata_upvr = require(script.Parent.Parent.Utils.getCaptureMetadata)
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: getCaptureMetadata_upvr (readonly)
	]]
	local getCaptureMetadata_upvr_result1 = getCaptureMetadata_upvr(arg1)
	if getCaptureMetadata_upvr_result1 then
		return getCaptureMetadata_upvr_result1.placeId
	end
	return nil
end