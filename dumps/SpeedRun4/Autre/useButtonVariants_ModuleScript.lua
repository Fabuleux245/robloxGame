-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:16
-- Luau version 6, Types version 3
-- Time taken: 0.003463 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local function _(arg1) -- Line 47, Named "toStroke"
	return {
		Color = arg1.Color3;
		Transparency = arg1.Transparency;
	}
end
local InputSize_upvr = require(Foundation.Enums.InputSize)
local Flags_upvr = require(Foundation.Utility.Flags)
local ButtonVariant_upvr = require(Foundation.Enums.ButtonVariant)
local StateLayerMode_upvr = require(Foundation.Enums.StateLayerMode)
local function var3_upvr(arg1) -- Line 54
	--[[ Upvalues[4]:
		[1]: InputSize_upvr (readonly)
		[2]: Flags_upvr (readonly)
		[3]: ButtonVariant_upvr (readonly)
		[4]: StateLayerMode_upvr (readonly)
	]]
	local tbl_8 = {
		[InputSize_upvr.XSmall] = {
			container = {
				tag = "gap-xsmall padding-small";
				radius = arg1.Radius.Small;
				height = arg1.Size.Size_600;
			};
			icon = {
				size = UDim2.fromOffset(arg1.Size.Size_300, arg1.Size.Size_300);
			};
			text = {
				tag = "text-title-small";
			};
		};
	}
	local tbl_10 = {
		container = {
			tag = "gap-xsmall padding-small";
			radius = arg1.Radius.Medium;
			height = arg1.Size.Size_800;
		};
	}
	local tbl_3 = {}
	local Size = arg1.Size
	tbl_3.size = UDim2.fromOffset(arg1.Size.Size_400, Size.Size_400)
	tbl_10.icon = tbl_3
	tbl_10.text = {
		tag = "text-title-small";
	}
	tbl_8[InputSize_upvr.Small] = tbl_10
	local tbl_6 = {}
	local tbl_5 = {}
	if Flags_upvr.FoundationAdjustButtonIconSizes then
		Size = "medium"
	else
		Size = "small"
	end
	tbl_5.tag = `gap-small padding-{Size}`
	tbl_5.radius = arg1.Radius.Medium
	tbl_5.height = arg1.Size.Size_1000
	tbl_6.container = tbl_5
	tbl_6.icon = {
		size = UDim2.fromOffset(arg1.Size.Size_500, arg1.Size.Size_500);
	}
	tbl_6.text = {
		tag = "text-title-medium";
	}
	tbl_8[InputSize_upvr.Medium] = tbl_6
	tbl_8[InputSize_upvr.Large] = {
		container = {
			tag = "gap-small padding-medium";
			radius = arg1.Radius.Medium;
			height = arg1.Size.Size_1200;
		};
		icon = {
			size = UDim2.fromOffset(arg1.Size.Size_600, arg1.Size.Size_600);
		};
		text = {
			tag = "text-title-large";
		};
	}
	local tbl_16 = {}
	local tbl_17 = {}
	local tbl_4 = {
		style = arg1.Color.ActionEmphasis.Background;
	}
	local Border_6 = arg1.Color.ActionEmphasis.Border
	tbl_4.stroke = {
		Color = Border_6.Color3;
		Transparency = Border_6.Transparency;
	}
	tbl_17.container = tbl_4
	tbl_17.content = {
		style = arg1.Color.ActionEmphasis.Foreground;
	}
	tbl_16[ButtonVariant_upvr.Emphasis] = tbl_17
	local tbl = {}
	local tbl_12 = {
		style = arg1.Color.ActionSubEmphasis.Background;
	}
	local Border_4 = arg1.Color.ActionSubEmphasis.Border
	tbl_12.stroke = {
		Color = Border_4.Color3;
		Transparency = Border_4.Transparency;
	}
	tbl_12.stateLayer = {
		mode = StateLayerMode_upvr.Inverse;
	}
	tbl.container = tbl_12
	tbl.content = {
		style = arg1.Color.ActionSubEmphasis.Foreground;
	}
	tbl_16[ButtonVariant_upvr.SubEmphasis] = tbl
	local tbl_13 = {}
	local tbl_9 = {
		style = arg1.Color.ActionSoftEmphasis.Background;
	}
	local Border_5 = arg1.Color.ActionSoftEmphasis.Border
	tbl_9.stroke = {
		Color = Border_5.Color3;
		Transparency = Border_5.Transparency;
	}
	tbl_13.container = tbl_9
	tbl_13.content = {
		style = arg1.Color.ActionSoftEmphasis.Foreground;
	}
	tbl_16[ButtonVariant_upvr.SoftEmphasis] = tbl_13
	local tbl_7 = {}
	local tbl_15 = {
		style = arg1.Color.ActionStandard.Background;
	}
	local Border_2 = arg1.Color.ActionStandard.Border
	tbl_15.stroke = {
		Color = Border_2.Color3;
		Transparency = Border_2.Transparency;
	}
	tbl_7.container = tbl_15
	tbl_7.content = {
		style = arg1.Color.ActionStandard.Foreground;
	}
	tbl_16[ButtonVariant_upvr.Standard] = tbl_7
	local tbl_2 = {}
	local tbl_11 = {
		style = arg1.Color.ActionSubtle.Background;
	}
	local Border_3 = arg1.Color.ActionSubtle.Border
	tbl_11.stroke = {
		Color = Border_3.Color3;
		Transparency = Border_3.Transparency;
	}
	tbl_2.container = tbl_11
	tbl_2.content = {
		style = arg1.Color.ActionSubtle.Foreground;
	}
	tbl_16[ButtonVariant_upvr.Subtle] = tbl_2
	local tbl_18 = {}
	local tbl_14 = {
		style = arg1.Color.ActionAlert.Background;
	}
	local Border = arg1.Color.ActionAlert.Border
	tbl_14.stroke = {
		Color = Border.Color3;
		Transparency = Border.Transparency;
	}
	tbl_18.container = tbl_14
	tbl_18.content = {
		style = arg1.Color.ActionAlert.Foreground;
	}
	tbl_16[ButtonVariant_upvr.Alert] = tbl_18
	tbl_16[ButtonVariant_upvr.Text] = {
		content = {
			style = arg1.Color.Content.Emphasis;
		};
	}
	tbl_16[ButtonVariant_upvr.Link] = {
		content = {
			style = arg1.Color.Content.Link;
		};
	}
	return {
		common = {
			container = {
				tag = "row align-y-center align-x-center clip";
			};
			text = {
				tag = "size-0-full auto-x text-truncate-end shrink";
			};
		};
		sizes = tbl_8;
		types = tbl_16;
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2, arg3) -- Line 192
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: var3_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("Button", var3_upvr, arg1)
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.sizes[arg2], any_useVariants_result1.types[arg3])
end