-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:29
-- Luau version 6, Types version 3
-- Time taken: 0.000798 seconds

local VrSpatialUi = script:FindFirstAncestor("VrSpatialUi")
local React_upvr = require(VrSpatialUi.Parent.React)
local UIManager_upvr = require(VrSpatialUi.UIManager)
return function() -- Line 6, Named "useHeadScale"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: UIManager_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(function() -- Line 7
		--[[ Upvalues[1]:
			[1]: UIManager_upvr (copied, readonly)
		]]
		return UIManager_upvr.getInstance():getAdditionalCameraScaleIfNeeded()
	end)
	React_upvr.useEffect(function() -- Line 10
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: UIManager_upvr (copied, readonly)
		]]
		any_useState_result2_upvr(UIManager_upvr.getInstance():getAdditionalCameraScaleIfNeeded())
		local any_Connect_result1_upvr = workspace.CurrentCamera:GetPropertyChangedSignal("HeadScale"):Connect(function() -- Line 13
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: UIManager_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(UIManager_upvr.getInstance():getAdditionalCameraScaleIfNeeded())
		end)
		return function() -- Line 16
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, {})
	return any_useState_result1, any_useState_result2_upvr
end