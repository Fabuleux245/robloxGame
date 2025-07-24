-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:17
-- Luau version 6, Types version 3
-- Time taken: 0.001134 seconds

local Parent = script.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local RoundedCornersFrame_upvr = require(script.Parent.RoundedCornersFrame)
local ROUNDED_CORNER_RADIUS_upvr = require(script.Parent.Constants).ROUNDED_CORNER_RADIUS
local useVRFloorOffset_upvr = require(script.Parent.useVRFloorOffset)
local React_upvr = require(Parent.React)
local Panel3D_upvr = require(Parent.UIBlox).Core.VR.Panel3D
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 28
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: RoundedCornersFrame_upvr (readonly)
		[3]: ROUNDED_CORNER_RADIUS_upvr (readonly)
		[4]: useVRFloorOffset_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: Panel3D_upvr (readonly)
		[7]: Cryo_upvr (readonly)
	]]
	local var10
	if arg1.roundedCornersFrameColor then
		var10 = {
			RoundedFrame = Roact_upvr.createElement(RoundedCornersFrame_upvr, {
				cornerRadius = (ROUNDED_CORNER_RADIUS_upvr) / ((384) / (arg1.virtualScreenSize.X / arg1.partSize.X));
				backgroundColor = arg1.roundedCornersFrameColor;
				backgroundTransparency = 0;
			}, arg1[Roact_upvr.Children]);
		}
	else
		var10 = arg1[Roact_upvr.Children]
	end
	local useVRFloorOffset_upvr_result1 = useVRFloorOffset_upvr()
	return React_upvr.createElement(Panel3D_upvr, Cryo_upvr.Dictionary.join(arg1, {
		offset = CFrame.lookAt(Vector3.new(arg1.offset.X, arg1.offset.Y - useVRFloorOffset_upvr_result1.Y, arg1.offset.Z), Vector3.new(0, arg1.offset.Y - useVRFloorOffset_upvr_result1.Y, 0));
	}), var10)
end