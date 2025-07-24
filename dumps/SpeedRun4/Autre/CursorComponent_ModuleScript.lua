-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:26
-- Luau version 6, Types version 3
-- Time taken: 0.002387 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local React_upvr = require(Parent_2.React)
local useStyle_upvr = require(Parent.Core.Style.useStyle)
local EventConnection_upvr = require(Parent_2.ReactUtils).EventConnection
local RunService_upvr = game:GetService("RunService")
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 22
	--[[ Upvalues[4]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: EventConnection_upvr (readonly)
		[4]: RunService_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local SelectionCursor = useStyle_upvr_result1.Tokens.Component.SelectionCursor
	local ColorSequence_new_result1_upvr = ColorSequence.new({ColorSequenceKeypoint.new(0, SelectionCursor.Gradient.Start.Color3), ColorSequenceKeypoint.new(1, SelectionCursor.Gradient.End.Color3)})
	local NumberSequence_new_result1_upvr = NumberSequence.new({NumberSequenceKeypoint.new(0, SelectionCursor.Gradient.Start.Transparency), NumberSequenceKeypoint.new(1, SelectionCursor.Gradient.End.Transparency)})
	local any_useBinding_result1_2_upvr, any_useBinding_result2_upvr_2 = React_upvr.useBinding(0)
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(ColorSequence_new_result1_upvr)
	local any_useBinding_result1_3, any_useBinding_result2_upvr_3 = React_upvr.useBinding(NumberSequence_new_result1_upvr)
	local module_2 = {
		BackgroundTransparency = 1;
		Position = UDim2.fromOffset(-arg1.offset, -arg1.offset);
		Size = UDim2.new(1, arg1.offset * 2, 1, arg1.offset * 2);
	}
	module_2.ref = arg2
	local module = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = arg1.cornerRadius;
		});
		UIStroke = React_upvr.createElement("UIStroke", {
			Color = Color3.new(1, 1, 1);
			Transparency = 0;
			Thickness = arg1.borderWidth;
		}, {
			UIGradient = React_upvr.createElement("UIGradient", {
				Rotation = any_useBinding_result1_2_upvr;
				Color = any_useBinding_result1;
				Transparency = any_useBinding_result1_3;
			});
		});
	}
	local isVisible = arg1.isVisible
	if isVisible then
		isVisible = React_upvr.createElement
		local tbl = {
			event = RunService_upvr.Heartbeat;
		}
		local ReducedMotion_upvr = useStyle_upvr_result1.Settings.ReducedMotion
		function tbl.callback(arg1_2) -- Line 60
			--[[ Upvalues[7]:
				[1]: any_useBinding_result1_2_upvr (readonly)
				[2]: ColorSequence_new_result1_upvr (readonly)
				[3]: NumberSequence_new_result1_upvr (readonly)
				[4]: ReducedMotion_upvr (readonly)
				[5]: any_useBinding_result2_upvr_2 (readonly)
				[6]: any_useBinding_result2_upvr (readonly)
				[7]: any_useBinding_result2_upvr_3 (readonly)
			]]
			local var29 = any_useBinding_result1_2_upvr:getValue() + 2
			local var30 = ColorSequence_new_result1_upvr
			local var31 = NumberSequence_new_result1_upvr
			if ReducedMotion_upvr then
				local var32 = (math.sin(math.rad(var29)) + 1) / 2
				var30 = ColorSequence.new(var30.Keypoints[1].Value:Lerp(var30.Keypoints[#var30.Keypoints].Value, var32))
				local Value = var31.Keypoints[1].Value
				var31 = NumberSequence.new(Value + (var31.Keypoints[#var31.Keypoints].Value - Value) * var32)
			end
			any_useBinding_result2_upvr_2(var29)
			any_useBinding_result2_upvr(var30)
			any_useBinding_result2_upvr_3(var31)
		end
		isVisible = isVisible(EventConnection_upvr, tbl)
	end
	module.HeartbeatConnection = isVisible
	return React_upvr.createElement("Frame", module_2, module)
end))