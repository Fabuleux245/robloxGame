-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:16
-- Luau version 6, Types version 3
-- Time taken: 0.007826 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Foundation_upvr = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("CaptureServiceContentObjectEnabled")
local View_upvr = Foundation_upvr.View
local Checkbox_upvr = Foundation_upvr.Checkbox
local getCropSize_upvr = require(Parent.CapturesCommon).Utils.getCropSize
return function(arg1) -- Line 22
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: game_GetEngineFeature_result1_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: Foundation_upvr (readonly)
		[5]: Checkbox_upvr (readonly)
		[6]: getCropSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_2, any_useState_result2_upvr_4 = React_upvr.useState(Vector2.new(0, 0))
	local any_useCallback_result1_3 = React_upvr.useCallback(function() -- Line 26
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateSelected(not arg1.isSelected)
	end, {arg1.isSelected, arg1.updateSelected})
	local var58
	if game_GetEngineFeature_result1_upvr then
		if typeof(arg1.content) == "Content" then
			if arg1.content.Object ~= nil then
				local children = arg1.content.Object:IsA("VideoCapture")
			end
		end
	end
	local module_5 = {}
	if arg1.showCheckbox then
		var58 = React_upvr.createElement
		var58 = var58(View_upvr, {
			tag = "size-full padding-small";
			onActivated = any_useCallback_result1_3;
			stateLayer = {
				affordance = Foundation_upvr.Enums.StateLayerAffordance.None;
			};
			ZIndex = 2;
		}, {
			Checkbox = React_upvr.createElement(Checkbox_upvr, {
				AnchorPoint = Vector2.new(1, 0);
				isChecked = arg1.isSelected;
				label = "";
				onActivated = any_useCallback_result1_3;
				Position = UDim2.fromScale(1, 0);
			});
		})
	else
		var58 = nil
	end
	module_5.CheckboxOverlay = var58
	if not children then
		var58 = React_upvr.createElement
		local tbl_8 = {
			AnchorPoint = Vector2.new(0.5, 0.5);
		}
		local var67 = 1
		tbl_8.BackgroundTransparency = var67
		if game_GetEngineFeature_result1_upvr then
			var67 = nil
		else
			var67 = arg1.content
		end
		tbl_8.Image = var67
		if game_GetEngineFeature_result1_upvr then
		else
		end
		tbl_8.ImageContent = nil
		tbl_8.Position = UDim2.fromScale(0.5, 0.5)
		tbl_8.ScaleType = Enum.ScaleType.Crop
		tbl_8.Size = UDim2.fromScale(1, 1)
		var58 = var58("ImageLabel", tbl_8)
	else
		var58 = nil
	end
	module_5.Image = var58
	if children then
		var58 = React_upvr.createElement
		var58 = var58("VideoFrame", {
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			Looped = true;
			Playing = true;
			Position = UDim2.fromScale(0.5, 0.5);
			Size = getCropSize_upvr(any_useState_result1, any_useState_result1_2);
			VideoContent = arg1.content;
			Volume = 0;
			[React_upvr.Event.Loaded] = React_upvr.useCallback(function(arg1_7) -- Line 34
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr_4 (readonly)
				]]
				any_useState_result2_upvr_4(arg1_7.Resolution)
			end, {});
		})
	else
		var58 = nil
	end
	module_5.Video = var58
	return React_upvr.createElement(View_upvr, {
		tag = "clip size-full";
		onAbsoluteSizeChanged = React_upvr.useCallback(function(arg1_6) -- Line 30
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (readonly)
			]]
			any_useState_result2_upvr_2(arg1_6.AbsoluteSize)
		end, {});
	}, module_5)
end