-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:38
-- Luau version 6, Types version 3
-- Time taken: 0.000846 seconds

local isSpatial_upvr = require(script.Parent.isSpatial)
local VRService_upvr = require(script:FindFirstAncestor("AppCommonLib").Parent.MockableProxyServices).VRService
return function(arg1, arg2) -- Line 8, Named "connectToIsSpatialChanged"
	--[[ Upvalues[2]:
		[1]: isSpatial_upvr (readonly)
		[2]: VRService_upvr (readonly)
	]]
	local isSpatial_upvr_result1_2_upvw = isSpatial_upvr()
	if arg2 then
		arg1(isSpatial_upvr_result1_2_upvw)
	end
	return VRService_upvr:GetPropertyChangedSignal("VREnabled"):Connect(function() -- Line 14
		--[[ Upvalues[3]:
			[1]: isSpatial_upvr (copied, readonly)
			[2]: isSpatial_upvr_result1_2_upvw (read and write)
			[3]: arg1 (readonly)
		]]
		local isSpatial_upvr_result1 = isSpatial_upvr()
		if isSpatial_upvr_result1 == isSpatial_upvr_result1_2_upvw then
		else
			isSpatial_upvr_result1_2_upvw = isSpatial_upvr_result1
			arg1(isSpatial_upvr_result1)
		end
	end)
end