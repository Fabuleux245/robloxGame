-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:53
-- Luau version 6, Types version 3
-- Time taken: 0.000978 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
local GuiService_upvr = game:GetService("GuiService")
return function() -- Line 6
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(GuiService_upvr.TopbarInset.Height)
	React_upvr.useEffect(function() -- Line 9
		--[[ Upvalues[2]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		local any_Connect_result1_upvr = GuiService_upvr:GetPropertyChangedSignal("TopbarInset"):Connect(function() -- Line 10
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: GuiService_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(GuiService_upvr.TopbarInset.Height)
		end)
		return function() -- Line 14
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, {})
	return any_useState_result1
end