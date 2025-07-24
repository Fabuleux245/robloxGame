-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:21
-- Luau version 6, Types version 3
-- Time taken: 0.001771 seconds

local Parent = script.Parent.Parent
local React_upvr = require(Parent.React)
local Roact_upvr = require(Parent.Roact)
local SharedFlags = require(Parent.SharedFlags)
local useIsFPSAtTarget_upvr = require(Parent.SplashScreenManager).useIsFPSAtTarget
local Object_upvr = require(Parent.LuauPolyfill).Object
local useIsSpatial_upvr = require(Parent.Responsive).useIsSpatial
if SharedFlags.GetFFlagAdjustVRFloor() then
	local AppPanel3D_upvr = require(script.Parent.AppPanel3D)
	return function(arg1) -- Line 40
		--[[ Upvalues[6]:
			[1]: useIsFPSAtTarget_upvr (readonly)
			[2]: Object_upvr (readonly)
			[3]: useIsSpatial_upvr (readonly)
			[4]: React_upvr (readonly)
			[5]: AppPanel3D_upvr (readonly)
			[6]: Roact_upvr (readonly)
		]]
		local module = {}
		local hidden = arg1.vrProps.hidden
		if not hidden then
			hidden = not useIsFPSAtTarget_upvr()
		end
		module.hidden = hidden
		if useIsSpatial_upvr() then
			return React_upvr.createElement(AppPanel3D_upvr, Object_upvr.assign({}, arg1.vrProps, module), arg1[Roact_upvr.Children])
		end
		return React_upvr.createElement(arg1.component, arg1.props, arg1[Roact_upvr.Children])
	end
end
local RoundedCornersFrame_upvr = require(script.Parent.RoundedCornersFrame)
local ROUNDED_CORNER_RADIUS_upvr = require(script.Parent.Constants).ROUNDED_CORNER_RADIUS
local GetFFlagEnableVRWrapperTransparency_upvr = SharedFlags.GetFFlagEnableVRWrapperTransparency
local Panel3D_upvr = require(Parent.UIBlox).Core.VR.Panel3D
return function(arg1) -- Line 51
	--[[ Upvalues[9]:
		[1]: useIsFPSAtTarget_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: useIsSpatial_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: RoundedCornersFrame_upvr (readonly)
		[6]: ROUNDED_CORNER_RADIUS_upvr (readonly)
		[7]: GetFFlagEnableVRWrapperTransparency_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: Panel3D_upvr (readonly)
	]]
	local tbl_3 = {}
	local hidden_2 = arg1.vrProps.hidden
	if not hidden_2 then
		hidden_2 = not useIsFPSAtTarget_upvr()
	end
	tbl_3.hidden = hidden_2
	local any_assign_result1 = Object_upvr.assign({}, arg1.vrProps, tbl_3)
	if useIsSpatial_upvr() then
		local var20
		if any_assign_result1.roundedCornersFrameColor then
			local tbl_2 = {}
			local tbl = {
				cornerRadius = (ROUNDED_CORNER_RADIUS_upvr) / ((384) / (any_assign_result1.virtualScreenSize.X / any_assign_result1.partSize.X));
			}
			local roundedCornersFrameColor = any_assign_result1.roundedCornersFrameColor
			tbl.backgroundColor = roundedCornersFrameColor
			if GetFFlagEnableVRWrapperTransparency_upvr() then
				roundedCornersFrameColor = any_assign_result1.backgroundTransparency or 0
			else
				roundedCornersFrameColor = 0
			end
			tbl.backgroundTransparency = roundedCornersFrameColor
			tbl_2.RoundedFrame = Roact_upvr.createElement(RoundedCornersFrame_upvr, tbl, arg1[Roact_upvr.Children])
			var20 = tbl_2
		else
			var20 = arg1[Roact_upvr.Children]
		end
		return React_upvr.createElement(Panel3D_upvr, any_assign_result1, var20)
	end
	return React_upvr.createElement(arg1.component, arg1.props, arg1[Roact_upvr.Children])
end