-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:09
-- Luau version 6, Types version 3
-- Time taken: 0.001065 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local GuiService_upvr = game:GetService("GuiService")
local React_upvr = require(Songbird.Parent.React)
local function _() -- Line 14, Named "getGuiInset"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	local any_GetGuiInset_result1_2, any_GetGuiInset_result2 = GuiService_upvr:GetGuiInset()
	return {
		bottom = any_GetGuiInset_result2.Y;
		left = any_GetGuiInset_result1_2.X;
		right = any_GetGuiInset_result2.X;
		top = any_GetGuiInset_result1_2.Y;
	}
end
local useCallback_upvr = React_upvr.useCallback
local useEventConnection_upvr = require(Songbird.Parent.ReactUtils).useEventConnection
local UserInputService_upvr = game:GetService("UserInputService")
return function() -- Line 25, Named "useGuiInset"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: useCallback_upvr (readonly)
		[4]: useEventConnection_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(function() -- Line 26
		--[[ Upvalues[1]:
			[1]: GuiService_upvr (copied, readonly)
		]]
		local any_GetGuiInset_result1, any_GetGuiInset_result2_3 = GuiService_upvr:GetGuiInset()
		return {
			bottom = any_GetGuiInset_result2_3.Y;
			left = any_GetGuiInset_result1.X;
			right = any_GetGuiInset_result2_3.X;
			top = any_GetGuiInset_result1.Y;
		}
	end)
	local var7_result1 = useCallback_upvr(function() -- Line 30
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		local any_GetGuiInset_result1_3, any_GetGuiInset_result2_2 = GuiService_upvr:GetGuiInset()
		any_useState_result2_upvr({
			bottom = any_GetGuiInset_result2_2.Y;
			left = any_GetGuiInset_result1_3.X;
			right = any_GetGuiInset_result2_2.X;
			top = any_GetGuiInset_result1_3.Y;
		})
	end, {})
	useEventConnection_upvr(GuiService_upvr.SafeZoneOffsetsChanged, var7_result1)
	useEventConnection_upvr(UserInputService_upvr:GetPropertyChangedSignal("BottomBarSize"), var7_result1)
	useEventConnection_upvr(UserInputService_upvr:GetPropertyChangedSignal("RightBarSize"), var7_result1)
	return any_useState_result1
end