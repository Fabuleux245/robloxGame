-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:35
-- Luau version 6, Types version 3
-- Time taken: 0.005843 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local Foundation = require(VirtualEvents.Parent.Foundation)
local useTokens_upvr = Foundation.Hooks.useTokens
local React_upvr = require(VirtualEvents.Parent.React)
local Text_upvr = require(VirtualEvents.Parent.AppCommonLib).Text
local useAnimation_upvr = require(VirtualEvents.Hooks.useAnimation)
local FFlagEnableEventDetailsNewModalImprovements_upvr = require(VirtualEvents.Flags.FFlagEnableEventDetailsNewModalImprovements)
local Text_upvr_2 = Foundation.Text
local ScrollView_upvr = Foundation.ScrollView
local ScrollBarVisibility_upvr = Foundation.Enums.ScrollBarVisibility
return function(arg1) -- Line 27, Named "DescriptionExpander"
	--[[ Upvalues[8]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Text_upvr (readonly)
		[4]: useAnimation_upvr (readonly)
		[5]: FFlagEnableEventDetailsNewModalImprovements_upvr (readonly)
		[6]: Text_upvr_2 (readonly)
		[7]: ScrollView_upvr (readonly)
		[8]: ScrollBarVisibility_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var3_result1 = useTokens_upvr()
	local BodyLarge_upvr = var3_result1.Typography.BodyLarge
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(0)
	local function _(arg1_2, arg2) -- Line 32, Named "updateDescriptionHeight"
		--[[ Upvalues[3]:
			[1]: Text_upvr (copied, readonly)
			[2]: BodyLarge_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(Text_upvr.GetTextHeight(arg2, BodyLarge_upvr.Font, BodyLarge_upvr.FontSize, arg1_2))
	end
	React_upvr.useEffect(function() -- Line 41
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Text_upvr (copied, readonly)
			[3]: BodyLarge_upvr (readonly)
			[4]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(Text_upvr.GetTextHeight(arg1.description, BodyLarge_upvr.Font, BodyLarge_upvr.FontSize, arg1.width))
	end, {arg1.description, arg1.width})
	local var19
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var19 = math.min(any_useState_result1, arg1.maxHeight)
		return var19
	end
	if not arg1.isExpanded or not INLINED() then
		var19 = math.min(any_useState_result1, 40)
	end
	local any_useState_result1_2, any_useState_result2 = React_upvr.useState(var19)
	local tbl_3 = {
		startOffset = any_useState_result1_2;
		endOffset = var19;
	}
	local var23 = 0.1
	tbl_3.duration = var23
	if FFlagEnableEventDetailsNewModalImprovements_upvr then
		var23 = "quadratic"
	else
		var23 = "linear"
	end
	tbl_3.easingStyle = var23
	tbl_3.setAnimationOffset = any_useState_result2
	useAnimation_upvr(tbl_3)
	if FFlagEnableEventDetailsNewModalImprovements_upvr then
		local tbl_2 = {
			ZIndex = 2;
			Size = UDim2.new(1, 0, 0, var19);
			CanvasSize = UDim2.new(0, 0, 0, any_useState_result1 + 2);
			AutomaticCanvasSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		}
		local Y = Enum.ScrollingDirection.Y
		tbl_2.ScrollingDirection = Y
		if arg1.maxHeight + 10 >= any_useState_result1 then
			Y = false
		else
			Y = true
		end
		tbl_2.ScrollingEnabled = Y
		tbl_2.ScrollBarThickness = 0
		;({}).Text = React_upvr.createElement(Text_upvr_2, {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			Text = arg1.description;
			TextTruncate = Enum.TextTruncate.None;
			RichText = true;
			textStyle = var3_result1.Color.Content.Emphasis;
			fontStyle = {
				Font = BodyLarge_upvr.Font;
				FontSize = BodyLarge_upvr.FontSize;
				LineHeight = 1;
			};
			TextXAlignment = Enum.TextXAlignment.Left;
			TextWrapped = true;
		})
	else
		local _ = {
			ZIndex = 2;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(0, 0);
			Text = "";
		}
		;({}).ScrollView = React_upvr.createElement(ScrollView_upvr, {
			Size = UDim2.new(1, 0, 0, any_useState_result1_2);
			scroll = {
				AutomaticCanvasSize = Enum.AutomaticSize.Y;
				CanvasSize = UDim2.fromScale(1, 0);
				scrollBarVisibility = ScrollBarVisibility_upvr.None;
				ScrollingDirection = Enum.ScrollingDirection.Y;
			};
			sizeConstraint = {
				MaxSize = Vector2.new(math.huge, arg1.maxHeight);
			};
			tag = "align-x-left align-y-top col size-full-full";
		}, {
			Text = React_upvr.createElement(Text_upvr_2, {
				Size = UDim2.new(1, 0, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				Text = arg1.description;
				TextTruncate = Enum.TextTruncate.None;
				RichText = true;
				textStyle = var3_result1.Color.Content.Emphasis;
				fontStyle = {
					Font = BodyLarge_upvr.Font;
					FontSize = BodyLarge_upvr.FontSize;
					LineHeight = 1;
				};
				TextXAlignment = Enum.TextXAlignment.Left;
				TextWrapped = true;
			});
		})
	end
	local tbl = {
		ZIndex = 2;
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, var19);
		Position = UDim2.fromScale(0, 0);
	}
	local var38 = ""
	tbl.Text = var38
	if 50 >= any_useState_result1 then
		var38 = false
	else
		var38 = true
	end
	tbl.Active = var38
	tbl.AutoButtonColor = false
	tbl.AutomaticSize = Enum.AutomaticSize.None
	tbl[React_upvr.Event.Activated] = function() -- Line 133
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.setIsExpanded(true)
	end
	local module = {
		LayoutOrder = arg1.layoutOrder;
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, any_useState_result1_2);
	}
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_3) -- Line 37
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Text_upvr (copied, readonly)
			[3]: BodyLarge_upvr (readonly)
			[4]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(Text_upvr.GetTextHeight(arg1.description, BodyLarge_upvr.Font, BodyLarge_upvr.FontSize, arg1_3.AbsoluteSize.X))
	end, {arg1.description})
	module[React_upvr.Change.AbsoluteSize] = function(arg1_4) -- Line 159
		--[[ Upvalues[1]:
			[1]: any_useCallback_result1_upvr (readonly)
		]]
		any_useCallback_result1_upvr(arg1_4)
	end
	local module_2 = {}
	if arg1.isExpanded then
	else
	end
	module_2.Description = React_upvr.createElement("TextButton", tbl, {
		Text = React_upvr.createElement(Text_upvr_2, {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			Text = arg1.description;
			TextTruncate = Enum.TextTruncate.AtEnd;
			RichText = true;
			textStyle = var3_result1.Color.Content.Emphasis;
			fontStyle = {
				Font = BodyLarge_upvr.Font;
				FontSize = BodyLarge_upvr.FontSize;
				LineHeight = 1;
			};
			TextXAlignment = Enum.TextXAlignment.Left;
			TextWrapped = true;
		});
	})
	return React_upvr.createElement("Frame", module, module_2)
end