-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:06
-- Luau version 6, Types version 3
-- Time taken: 0.000699 seconds

local Parent = script:FindFirstAncestor("Responsive").Parent
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactServiceTags_upvr = require(Parent.RoactServiceTags)
local React_upvr = require(Parent.React)
return function() -- Line 6, Named "useIsInFullScreen"
	--[[ Upvalues[3]:
		[1]: useRoactService_upvr (readonly)
		[2]: RoactServiceTags_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(RoactServiceTags_upvr.AppUserGameSettings)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(useRoactService_upvr_result1_upvr:InFullScreen())
	React_upvr.useEffect(function() -- Line 10
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: useRoactService_upvr_result1_upvr (readonly)
		]]
		any_useState_result2_upvr(useRoactService_upvr_result1_upvr:InFullScreen())
		local any_Connect_result1_upvr = useRoactService_upvr_result1_upvr.FullscreenChanged:Connect(function(arg1) -- Line 12
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(arg1)
		end)
		return function() -- Line 16
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, {})
	return any_useState_result1
end