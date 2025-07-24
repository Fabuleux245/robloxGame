-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:04
-- Luau version 6, Types version 3
-- Time taken: 0.002014 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local Components = Foundation.Components
local View_upvr = require(Components.View)
local useCursor_upvr = require(Foundation.Providers.Cursor.useCursor)
local function var6_upvr(arg1) -- Line 30
	--[[ Upvalues[4]:
		[1]: useTokens_upvr (readonly)
		[2]: useCursor_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: View_upvr (readonly)
	]]
	local var3_result1 = useTokens_upvr()
	local udim = UDim.new(0, var3_result1.Radius.Medium)
	return React_upvr.createElement(View_upvr, {
		onActivated = arg1.onActivated;
		Size = arg1.size;
		isDisabled = arg1.isDisabled;
		selection = {
			Selectable = not arg1.isDisabled;
			SelectionImageObject = useCursor_upvr({
				radius = udim;
				borderWidth = var3_result1.Stroke.Thicker;
			});
		};
		padding = arg1.padding;
		cornerRadius = udim;
		tag = arg1.tag;
	}, arg1.children)
end
local useNumberInputVariants_upvr = require(script.Parent.useNumberInputVariants)
local Image_upvr = require(Components.Image)
return function(arg1) -- Line 52, Named "NumberInputControls"
	--[[ Upvalues[6]:
		[1]: useTokens_upvr (readonly)
		[2]: useNumberInputVariants_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: View_upvr (readonly)
		[5]: var6_upvr (readonly)
		[6]: Image_upvr (readonly)
	]]
	local useNumberInputVariants_upvr_result1 = useNumberInputVariants_upvr(useTokens_upvr(), arg1.size)
	return React_upvr.createElement(View_upvr, {
		tag = "col";
		Size = UDim2.new(0, useNumberInputVariants_upvr_result1.button.width, 1, 0);
		LayoutOrder = arg1.LayoutOrder;
	}, {
		ControlUp = React_upvr.createElement(var6_upvr, {
			onActivated = arg1.up.onClick;
			isDisabled = arg1.up.isDisabled;
			padding = useNumberInputVariants_upvr_result1.button.padding;
			tag = useNumberInputVariants_upvr_result1.upButton.tag;
		}, {
			Icon = React_upvr.createElement(Image_upvr, {
				Image = "component_assets/triangleUp_16";
				tag = useNumberInputVariants_upvr_result1.icon.tag;
			});
		});
		ControlDown = React_upvr.createElement(var6_upvr, {
			tag = useNumberInputVariants_upvr_result1.downButton.tag;
			onActivated = arg1.down.onClick;
			isDisabled = arg1.down.isDisabled;
			padding = useNumberInputVariants_upvr_result1.button.padding;
		}, {
			Icon = React_upvr.createElement(Image_upvr, {
				Image = "component_assets/triangleDown_16";
				tag = useNumberInputVariants_upvr_result1.icon.tag;
			});
		});
	})
end