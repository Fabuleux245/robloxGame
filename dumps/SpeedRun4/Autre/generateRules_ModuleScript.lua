-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:25
-- Luau version 6, Types version 3
-- Time taken: 0.019879 seconds

local Cryo_upvr = require(script:FindFirstAncestor("Foundation").Parent.Cryo)
local tbl_4_upvr = {
	Content = {"content"};
	Stroke = {"stroke"};
	Shift = {"bg"};
	Surface = {"bg"};
	OverMedia = {"bg"};
	System = {"bg", "content", "stroke"};
	Extended = {};
	Common = {};
	Selection = {};
	State = {};
	None = {};
}
local tbl_5_upvr = {
	System = true;
}
function pascalToKebab(arg1) -- Line 78
	local string_gsub_result1 = string.gsub(arg1:gsub('_', '-'), "(%u)", function(arg1_2) -- Line 83
		return '-'..arg1_2:lower()
	end)
	if string_gsub_result1:sub(1, 1) == '-' then
		string_gsub_result1 = string_gsub_result1:sub(2, #string_gsub_result1)
	end
	return string_gsub_result1
end
local function createTokens_upvr(arg1) -- Line 95, Named "createTokens"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 57 start (CF ANALYSIS FAILED)
	local tbl_6 = {}
	if arg1 == nil then
		return {}, tbl_6, {}, {}, {}, {}, {}, {}, {}, {}
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [28.15]
	if nil.Background then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [33.14]
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_6[pascalToKebab(nil)] = nil
		-- KONSTANTWARNING: GOTO [28] #17
	end
	-- KONSTANTERROR: [0] 1. Error Block 57 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 24. Error Block 61 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [60.18]
	for _, _ in pascalToKebab(nil), nil do
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [60.22]
		if nil then
		else
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
	-- KONSTANTERROR: [37] 24. Error Block 61 end (CF ANALYSIS FAILED)
end
local function DefaultRules_upvr(arg1) -- Line 219, Named "DefaultRules"
	return {{
		tag = "gui-object-defaults";
		priority = 0;
		properties = {
			BackgroundTransparency = 1;
		};
	}, {
		tag = "text-defaults";
		priority = 0;
		properties = {
			Font = arg1.Typography.BodyLarge.Font;
		};
	}}
end
local function DefaultSizeRules_upvr(arg1) -- Line 238, Named "DefaultSizeRules"
	return {{
		tag = "text-size-defaults";
		priority = 0;
		properties = {
			TextSize = arg1.Typography.BodyLarge.FontSize;
			LineHeight = arg1.Typography.BodyLarge.LineHeight;
		};
	}}
end
local function DefaultColorRules_upvr(arg1) -- Line 251, Named "DefaultColorRules"
	return {{
		tag = "text-color-defaults";
		priority = 0;
		properties = {
			TextColor3 = arg1.Color.Content.Default.Color3;
			TextTransparency = arg1.Color.Content.Default.Transparency;
		};
	}}
end
local function EngineDefaultBypassRules_upvr() -- Line 264, Named "EngineDefaultBypassRules"
	return {{
		tag = "x-default-transparency";
		properties = {
			BackgroundTransparency = 0;
		};
	}}
end
local function ListLayoutRules_upvr(arg1, arg2) -- Line 275, Named "ListLayoutRules"
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_9 = {}
	local tbl_3 = {
		tag = "align-x-left";
		pseudo = "UIListLayout";
		properties = {
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
		};
	}
	module_9[1] = tbl_3
	module_9[2] = {
		tag = "align-x-center";
		pseudo = "UIListLayout";
		properties = {
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		};
	}
	module_9[3] = {
		tag = "align-x-right";
		pseudo = "UIListLayout";
		properties = {
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
		};
	}
	module_9[4] = {
		tag = "align-y-top";
		pseudo = "UIListLayout";
		properties = {
			VerticalAlignment = Enum.VerticalAlignment.Top;
		};
	}
	module_9[5] = {
		tag = "align-y-center";
		pseudo = "UIListLayout";
		properties = {
			VerticalAlignment = Enum.VerticalAlignment.Center;
		};
	}
	module_9[6] = {
		tag = "align-y-bottom";
		pseudo = "UIListLayout";
		properties = {
			VerticalAlignment = Enum.VerticalAlignment.Bottom;
		};
	}
	tbl_3 = {}
	local var83 = tbl_3
	for _, v_2 in arg1 do
		table.insert(var83, {
			tag = `gap-{v_2.name}`;
			pseudo = "UIListLayout";
			properties = {
				Padding = v_2.size;
			};
		})
	end
	for _, v_3 in arg2 do
		table.insert({}, {
			tag = `gutter-{v_3.name}`;
			pseudo = "UIListLayout";
			properties = {
				Padding = v_3.size;
			};
		})
		local var88
	end
	local tbl_2 = {}
	for i_4, v_4 in {
		none = Enum.UIFlexAlignment.None;
		fill = Enum.UIFlexAlignment.Fill;
		around = Enum.UIFlexAlignment.SpaceAround;
		between = Enum.UIFlexAlignment.SpaceBetween;
		evenly = Enum.UIFlexAlignment.SpaceEvenly;
	} do
		table.insert(tbl_2, {
			tag = `flex-{i_4}`;
			pseudo = "UIListLayout";
			properties = {
				HorizontalFlex = v_4;
				VerticalFlex = v_4;
			};
		})
		table.insert(tbl_2, {
			tag = `flex-x-{i_4}`;
			pseudo = "UIListLayout";
			properties = {
				HorizontalFlex = v_4;
			};
		})
		table.insert(tbl_2, {
			tag = `flex-y-{i_4}`;
			pseudo = "UIListLayout";
			properties = {
				VerticalFlex = v_4;
			};
		})
		local var102
	end
	for i_5, v_5 in {
		auto = Enum.ItemLineAlignment.Automatic;
		start = Enum.ItemLineAlignment.Start;
		center = Enum.ItemLineAlignment.Center;
		["end"] = Enum.ItemLineAlignment.End;
		stretch = Enum.ItemLineAlignment.Stretch;
	} do
		table.insert({}, {
			tag = `items-{i_5}`;
			pseudo = "UIListLayout";
			properties = {
				ItemLineAlignment = v_5;
			};
		})
		local var107
	end
	return Cryo_upvr.List.join({{
		tag = "row";
		pseudo = "UIListLayout";
		properties = {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
		};
	}, {
		tag = "col";
		pseudo = "UIListLayout";
		properties = {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
		};
	}}, module_9, var83, {{
		tag = "wrap";
		pseudo = "UIListLayout";
		properties = {
			Wraps = true;
		};
	}, {
		tag = "no-wrap";
		pseudo = "UIListLayout";
		properties = {
			Wraps = false;
		};
	}}, var102, var107, var88)
end
local function FlexItemRules_upvr() -- Line 443, Named "FlexItemRules"
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_10 = {}
	local module = {}
	for i_6 in {1, 2, 3, 4, 5} do
		table.insert(module_10, {
			tag = `grow-{i_6}`;
			pseudo = "UIFlexItem";
			properties = {
				FlexMode = Enum.UIFlexMode.Custom;
				GrowRatio = i_6;
			};
		})
		table.insert(module, {
			tag = `shrink-{i_6}`;
			pseudo = "UIFlexItem";
			properties = {
				FlexMode = Enum.UIFlexMode.Custom;
				ShrinkRatio = i_6;
			};
		})
	end
	for i_7, v_6 in {
		auto = Enum.ItemLineAlignment.Automatic;
		start = Enum.ItemLineAlignment.Start;
		center = Enum.ItemLineAlignment.Center;
		["end"] = Enum.ItemLineAlignment.End;
		stretch = Enum.ItemLineAlignment.Stretch;
	} do
		table.insert({}, {
			tag = `self-{i_7}`;
			pseudo = "UIFlexItem";
			properties = {
				ItemLineAlignment = v_6;
			};
		})
		local var138
	end
	return Cryo_upvr.List.join({{
		tag = "grow";
		pseudo = "UIFlexItem";
		properties = {
			FlexMode = Enum.UIFlexMode.Grow;
		};
	}, {
		tag = "shrink";
		pseudo = "UIFlexItem";
		properties = {
			FlexMode = Enum.UIFlexMode.Shrink;
		};
	}, {
		tag = "fill";
		pseudo = "UIFlexItem";
		properties = {
			FlexMode = Enum.UIFlexMode.Fill;
		};
	}}, module_10, module, var138)
end
local function CornerRules_upvr(arg1) -- Line 515, Named "CornerRules"
	local module_12 = {}
	for _, v_7 in arg1 do
		table.insert(module_12, {
			tag = `radius-{v_7.name}`;
			pseudo = "UICorner";
			properties = {
				CornerRadius = v_7.size;
			};
		})
	end
	return module_12
end
local function SizeRules_upvr(arg1) -- Line 531, Named "SizeRules"
	local module_17 = {}
	for _, v_8 in arg1 do
		table.insert(module_17, {
			tag = `size-{v_8.name}`;
			properties = {
				Size = UDim2.new(v_8.size, v_8.size);
			};
		})
		for _, v_9 in arg1 do
			table.insert(module_17, {
				tag = `size-{v_8.name}-{v_9.name}`;
				properties = {
					Size = UDim2.new(v_8.size, v_9.size);
				};
			})
		end
	end
	return module_17
end
local function BackgroundRules_upvr(arg1, arg2) -- Line 554, Named "BackgroundRules"
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	local module_16 = {}
	for i_11, v_10 in arg1 do
		if table.find(tbl_4_upvr[i_11], "bg") then
			for i_12, v_11 in v_10 do
				table.insert(module_16, {
					tag = `bg-{i_12}`;
					properties = {
						BackgroundColor3 = v_11.Color3;
						BackgroundTransparency = v_11.Transparency;
					};
				})
			end
		end
	end
	for i_13, v_12 in arg2 do
		table.insert(module_16, {
			tag = `bg-{i_13}`;
			properties = {
				BackgroundColor3 = v_12.Background.Color3;
				BackgroundTransparency = v_12.Background.Transparency;
			};
		})
	end
	return module_16
end
local function StrokeSizeRules_upvr(arg1) -- Line 584, Named "StrokeSizeRules"
	for _, v_13 in arg1 do
		if v_13.name ~= "none" then
			table.insert({}, {
				tag = `stroke-{v_13.name}`;
				pseudo = "UIStroke";
				properties = {
					Thickness = v_13.size;
				};
			})
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local function StrokeRules_upvr(arg1, arg2) -- Line 605, Named "StrokeRules"
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	local module_11 = {}
	for i_15, v_14 in arg1 do
		if table.find(tbl_4_upvr[i_15], "stroke") then
			for i_16, v_15 in v_14 do
				table.insert(module_11, {
					tag = `stroke-{i_16}`;
					pseudo = "UIStroke";
					properties = {
						Color = v_15.Color3;
						Transparency = v_15.Transparency;
					};
				})
			end
		end
	end
	for i_17, v_16 in arg2 do
		table.insert(module_11, {
			tag = `stroke-{i_17}`;
			pseudo = "UIStroke";
			properties = {
				Color = v_16.Border.Color3;
				Transparency = v_16.Border.Transparency;
			};
		})
	end
	return module_11
end
local function ContentRules_upvr(arg1, arg2) -- Line 637, Named "ContentRules"
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	local module_5 = {}
	for i_18, v_17 in arg1 do
		if table.find(tbl_4_upvr[i_18], "content") then
			for i_19, v_18 in v_17 do
				table.insert(module_5, {
					tag = `content-{i_19}`;
					properties = {
						ImageColor3 = v_18.Color3;
						ImageTransparency = v_18.Transparency;
						TextColor3 = v_18.Color3;
						TextTransparency = v_18.Transparency;
					};
				})
			end
		end
	end
	for i_20, v_19 in arg2 do
		table.insert(module_5, {
			tag = `content-{i_20}`;
			properties = {
				ImageColor3 = v_19.Foreground.Color3;
				ImageTransparency = v_19.Foreground.Transparency;
				TextColor3 = v_19.Foreground.Color3;
				TextTransparency = v_19.Foreground.Transparency;
			};
		})
	end
	return module_5
end
local function TypographyRules_upvr(arg1, arg2) -- Line 671, Named "TypographyRules"
	local module_3 = {}
	for i_21, v_20 in arg1 do
		local udim = UDim.new(0, ((v_20.TextSize / arg2) * (v_20.LineHeight * arg2) - v_20.TextSize) / 2)
		table.insert(module_3, {
			tag = `text-{i_21}`;
			properties = v_20;
			children = {{
				tag = `text-{i_21}`;
				pseudo = "UIPadding";
				properties = {
					PaddingTop = udim;
					PaddingBottom = udim;
				};
			}};
		})
	end
	return module_3
end
local function TextRules_upvr() -- Line 699, Named "TextRules"
	local module_6 = {}
	for i_22, v_21 in {
		left = Enum.TextXAlignment.Left;
		center = Enum.TextXAlignment.Center;
		right = Enum.TextXAlignment.Right;
	} do
		table.insert(module_6, {
			tag = `text-align-x-{i_22}`;
			properties = {
				TextXAlignment = v_21;
			};
		})
	end
	for i_23, v_22 in {
		top = Enum.TextYAlignment.Top;
		center = Enum.TextYAlignment.Center;
		bottom = Enum.TextYAlignment.Bottom;
	} do
		table.insert(module_6, {
			tag = `text-align-y-{i_23}`;
			properties = {
				TextYAlignment = v_22;
			};
		})
	end
	for i_24, v_23 in {
		none = Enum.TextTruncate.None;
		["end"] = Enum.TextTruncate.AtEnd;
		split = Enum.TextTruncate.SplitWord;
	} do
		table.insert(module_6, {
			tag = `text-truncate-{i_24}`;
			properties = {
				TextTruncate = v_23;
			};
		})
	end
	table.insert(module_6, {
		tag = "text-wrap";
		properties = {
			TextWrapped = true;
		};
	})
	table.insert(module_6, {
		tag = "text-no-wrap";
		properties = {
			TextWrapped = false;
		};
	})
	return module_6
end
local function PaddingRules_upvr(arg1, arg2) -- Line 764, Named "PaddingRules"
	local module_2 = {}
	for _, v_24 in arg1 do
		table.insert(module_2, {
			tag = `padding-{v_24.name}`;
			pseudo = "UIPadding";
			properties = {
				PaddingTop = v_24.size;
				PaddingBottom = v_24.size;
				PaddingLeft = v_24.size;
				PaddingRight = v_24.size;
			};
		})
	end
	for _, v_25 in arg2 do
		table.insert(module_2, {
			tag = `margin-{v_25.name}`;
			pseudo = "UIPadding";
			properties = {
				PaddingTop = v_25.size;
				PaddingBottom = v_25.size;
				PaddingLeft = v_25.size;
				PaddingRight = v_25.size;
			};
		})
	end
	for i_27, v_26 in {
		x = {"PaddingLeft", "PaddingRight"};
		y = {"PaddingTop", "PaddingBottom"};
		top = {"PaddingTop"};
		bottom = {"PaddingBottom"};
		left = {"PaddingLeft"};
		right = {"PaddingRight"};
	} do
		for _, v_27 in arg1 do
			local tbl = {}
			for _, v_28 in v_26 do
				tbl[v_28] = v_27.size
			end
			table.insert(module_2, {
				tag = `padding-{i_27}-{v_27.name}`;
				pseudo = "UIPadding";
				properties = tbl;
			})
		end
		for _, v_29 in arg2 do
			tbl = {}
			local var292 = tbl
			for _, v_30 in v_26 do
				var292[v_30] = v_29.size
			end
			table.insert(module_2, {
				tag = `margin-{i_27}-{v_29.name}`;
				pseudo = "UIPadding";
				properties = var292;
			})
		end
	end
	return module_2
end
local function AutomaticSizeRules_upvr() -- Line 831, Named "AutomaticSizeRules"
	local module_13 = {}
	for i_32, v_31 in {
		none = Enum.AutomaticSize.None;
		x = Enum.AutomaticSize.X;
		y = Enum.AutomaticSize.Y;
		xy = Enum.AutomaticSize.XY;
	} do
		table.insert(module_13, {
			tag = `auto-{i_32}`;
			properties = {
				AutomaticSize = v_31;
			};
		})
	end
	return module_13
end
local function PositionRules_upvr() -- Line 853, Named "PositionRules"
	local module_14 = {}
	for i_33, v_32 in {
		left = 0;
		center = 0.5;
		right = 1;
	} do
		for i_34, v_33 in {
			top = 0;
			center = 0.5;
			bottom = 1;
		} do
			table.insert(module_14, {
				tag = `position-{i_34}-{i_33}`;
				properties = {
					Position = UDim2.fromScale(v_32, v_33);
				};
			})
		end
	end
	return module_14
end
local function AnchorPointRules_upvr() -- Line 871, Named "AnchorPointRules"
	local module_15 = {}
	for i_35, v_34 in {
		left = 0;
		center = 0.5;
		right = 1;
	} do
		for i_36, v_35 in {
			top = 0;
			center = 0.5;
			bottom = 1;
		} do
			table.insert(module_15, {
				tag = `anchor-{i_36}-{i_35}`;
				properties = {
					AnchorPoint = Vector2.new(v_34, v_35);
				};
			})
		end
	end
	return module_15
end
local function ClipsDescendantRules_upvr() -- Line 889, Named "ClipsDescendantRules"
	return {{
		tag = "clip";
		properties = {
			ClipsDescendants = true;
		};
	}, {
		tag = "no-clip";
		properties = {
			ClipsDescendants = false;
		};
	}}
end
local function _(arg1, arg2) -- Line 906, Named "roundDecimals"
	local var333 = 10 ^ arg2
	return math.round(arg1 * var333) / var333
end
local function AspectRatioRules_upvr() -- Line 911, Named "AspectRatioRules"
	local module_8 = {}
	for _, v_36 in {{1, 1}, {5, 4}, {4, 3}, {3, 2}, {16, 9}, {2, 1}} do
		table.insert(module_8, {
			tag = `aspect-{v_36[1]}-{v_36[2]}`;
			pseudo = "UIAspectRatioConstraint";
			properties = {
				AspectRatio = math.round(v_36[1] / v_36[2] * 1000) / 1000;
			};
		})
		if v_36[1] ~= v_36[2] then
			table.insert(module_8, {
				tag = `aspect-{v_36[2]}-{v_36[1]}`;
				pseudo = "UIAspectRatioConstraint";
				properties = {
					AspectRatio = math.round(v_36[2] / v_36[1] * 1000) / 1000;
				};
			})
		end
	end
	return module_8
end
local function DeprecatedColorRules_upvr(arg1, arg2) -- Line 939, Named "DeprecatedColorRules"
	local module_7 = {}
	for i_38, v_37 in arg1.System do
		local any_sub_result1 = i_38:sub(8)
		table.insert(module_7, {
			tag = `bg-{any_sub_result1}`;
			properties = {
				BackgroundColor3 = v_37.Color3;
				BackgroundTransparency = v_37.Transparency;
			};
			deprecatedFor = `bg-{i_38}`;
		})
		if any_sub_result1 ~= "emphasis" then
			table.insert(module_7, {
				tag = `content-{any_sub_result1}`;
				properties = {
					ImageColor3 = v_37.Color3;
					ImageTransparency = v_37.Transparency;
					TextColor3 = v_37.Color3;
					TextTransparency = v_37.Transparency;
				};
				deprecatedFor = `content-{i_38}`;
			})
			table.insert(module_7, {
				tag = `stroke-{any_sub_result1}`;
				pseudo = "UIStroke";
				properties = {
					Color = v_37.Color3;
					Transparency = v_37.Transparency;
				};
				deprecatedFor = `stroke-{i_38}`;
			})
		end
	end
	return module_7
end
local function _(arg1) -- Line 986, Named "_addModifiers"
	local module_4 = {}
	for _, v_38 in arg1 do
		local clone = table.clone(v_38)
		clone.tag = `hover-{v_38.tag}`
		clone.modifier = "hover"
		table.insert(module_4, v_38)
		table.insert(module_4, clone)
	end
	return module_4
end
return function(arg1) -- Line 1006, Named "generateRules"
	--[[ Upvalues[23]:
		[1]: createTokens_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: DefaultRules_upvr (readonly)
		[4]: EngineDefaultBypassRules_upvr (readonly)
		[5]: FlexItemRules_upvr (readonly)
		[6]: TextRules_upvr (readonly)
		[7]: AutomaticSizeRules_upvr (readonly)
		[8]: PositionRules_upvr (readonly)
		[9]: AnchorPointRules_upvr (readonly)
		[10]: ClipsDescendantRules_upvr (readonly)
		[11]: AspectRatioRules_upvr (readonly)
		[12]: DefaultSizeRules_upvr (readonly)
		[13]: ListLayoutRules_upvr (readonly)
		[14]: CornerRules_upvr (readonly)
		[15]: SizeRules_upvr (readonly)
		[16]: StrokeSizeRules_upvr (readonly)
		[17]: TypographyRules_upvr (readonly)
		[18]: PaddingRules_upvr (readonly)
		[19]: DefaultColorRules_upvr (readonly)
		[20]: DeprecatedColorRules_upvr (readonly)
		[21]: BackgroundRules_upvr (readonly)
		[22]: StrokeRules_upvr (readonly)
		[23]: ContentRules_upvr (readonly)
	]]
	local createTokens_result1, createTokens_result2, createTokens_result3, createTokens_result4, createTokens_result5, createTokens_result6, createTokens_result7, createTokens_result8, createTokens_result9, createTokens_result10 = createTokens_upvr(arg1)
	local any_join_result1_2 = Cryo_upvr.List.join(DefaultRules_upvr(arg1), EngineDefaultBypassRules_upvr(), FlexItemRules_upvr(), TextRules_upvr(), AutomaticSizeRules_upvr(), PositionRules_upvr(), AnchorPointRules_upvr(), ClipsDescendantRules_upvr(), AspectRatioRules_upvr())
	local any_join_result1_3 = Cryo_upvr.List.join(DefaultSizeRules_upvr(arg1), ListLayoutRules_upvr(createTokens_result4, createTokens_result9), CornerRules_upvr(createTokens_result5), SizeRules_upvr(createTokens_result6), StrokeSizeRules_upvr(createTokens_result3), TypographyRules_upvr(createTokens_result7, arg1.Config.Text.NominalScale), PaddingRules_upvr(createTokens_result8, createTokens_result10))
	local any_join_result1 = Cryo_upvr.List.join(DefaultColorRules_upvr(arg1), DeprecatedColorRules_upvr(createTokens_result1, createTokens_result2), BackgroundRules_upvr(createTokens_result1, createTokens_result2), StrokeRules_upvr(createTokens_result1, createTokens_result2), ContentRules_upvr(createTokens_result1, createTokens_result2))
	return Cryo_upvr.List.join(any_join_result1_2, any_join_result1_3, any_join_result1), any_join_result1_2, any_join_result1_3, any_join_result1
end