-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:55
-- Luau version 6, Types version 3
-- Time taken: 0.000770 seconds

local Parent = script.Parent.Parent.Parent
local React_upvr = require(Parent.React)
local GuiService_upvr = game:GetService("GuiService")
local useExternalEvent_upvr = require(Parent.UIBlox).Core.Hooks.useExternalEvent
return function() -- Line 11
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: useExternalEvent_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(GuiService_upvr.TopbarInset)
	useExternalEvent_upvr(GuiService_upvr:GetPropertyChangedSignal("TopbarInset"), function() -- Line 14
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		any_useState_result2_upvr(GuiService_upvr.TopbarInset)
	end)
	return any_useState_result1
end