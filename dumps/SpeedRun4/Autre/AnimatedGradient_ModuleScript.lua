-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:40
-- Luau version 6, Types version 3
-- Time taken: 0.001455 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local useStyle_upvr = require(Parent_2.Core.Style.useStyle)
local React_upvr = require(Parent.React)
local EventConnection_upvr = require(Parent.ReactUtils).EventConnection
local RunService_upvr = game:GetService("RunService")
return function() -- Line 22
	--[[ Upvalues[4]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: EventConnection_upvr (readonly)
		[4]: RunService_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local SelectionCursor_upvr = useStyle_upvr_result1.Theme.SelectionCursor
	local any_useBinding_result1_upvr, any_useBinding_result2_upvr_3 = React_upvr.useBinding(0)
	local any_useBinding_result1_2, any_useBinding_result2_upvr_2 = React_upvr.useBinding(SelectionCursor_upvr.GradientColorSequence)
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(SelectionCursor_upvr.GradientTransparencySequence)
	local module = {
		GradientChild = React_upvr.createElement("UIGradient", {
			Rotation = any_useBinding_result1_upvr;
			Color = any_useBinding_result1_2;
			Transparency = any_useBinding_result1;
		});
	}
	local tbl = {
		event = RunService_upvr.RenderStepped;
	}
	local Settings_upvr = useStyle_upvr_result1.Settings
	function tbl.callback() -- Line 39
		--[[ Upvalues[6]:
			[1]: any_useBinding_result1_upvr (readonly)
			[2]: SelectionCursor_upvr (readonly)
			[3]: Settings_upvr (readonly)
			[4]: any_useBinding_result2_upvr_3 (readonly)
			[5]: any_useBinding_result2_upvr_2 (readonly)
			[6]: any_useBinding_result2_upvr (readonly)
		]]
		local var20 = any_useBinding_result1_upvr:getValue() + SelectionCursor_upvr.GradientRotationSpeed
		local GradientColorSequence = SelectionCursor_upvr.GradientColorSequence
		local GradientTransparencySequence = SelectionCursor_upvr.GradientTransparencySequence
		if Settings_upvr.ReducedMotion then
			local var23 = (math.sin(math.rad(var20)) + 1) / 2
			GradientColorSequence = ColorSequence.new(GradientColorSequence.Keypoints[1].Value:lerp(GradientColorSequence.Keypoints[#GradientColorSequence.Keypoints].Value, var23))
			local Value = GradientTransparencySequence.Keypoints[1].Value
			GradientTransparencySequence = NumberSequence.new(Value + (GradientTransparencySequence.Keypoints[#GradientTransparencySequence.Keypoints].Value - Value) * var23)
		end
		any_useBinding_result2_upvr_3(var20)
		any_useBinding_result2_upvr_2(GradientColorSequence)
		any_useBinding_result2_upvr(GradientTransparencySequence)
	end
	module.RenderSteppedConnection = React_upvr.createElement(EventConnection_upvr, tbl)
	return React_upvr.createElement(React_upvr.Fragment, {}, module)
end