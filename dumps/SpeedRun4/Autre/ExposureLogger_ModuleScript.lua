-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:47
-- Luau version 6, Types version 3
-- Time taken: 0.000695 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local React_upvr = require(VirtualEvents.Parent.React)
local useIXPService_upvr = require(VirtualEvents.Parent.RoactAppExperiment).useIXPService
local useRefImpression_upvr = require(VirtualEvents.Hooks.useRefImpression)
return function(arg1) -- Line 14, Named "ExposureLogger"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: useIXPService_upvr (readonly)
		[3]: useRefImpression_upvr (readonly)
	]]
	local any_useRef_result1 = React_upvr.useRef(nil)
	local useIXPService_upvr_result1_upvr = useIXPService_upvr()
	useRefImpression_upvr(any_useRef_result1, function() -- Line 18
		--[[ Upvalues[2]:
			[1]: useIXPService_upvr_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		useIXPService_upvr_result1_upvr:LogUserLayerExposure(arg1.exposureLayer)
		if arg1.onExposure then
			arg1.onExposure()
		end
	end)
	return React_upvr.createElement("Frame", {
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromOffset(0, 0);
		BackgroundTransparency = 1;
		ref = any_useRef_result1;
	})
end