-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:16
-- Luau version 6, Types version 3
-- Time taken: 0.001788 seconds

local Parent = script:FindFirstAncestor("GameTile").Parent
local Style = require(Parent.Style)
local useDesignTokens_upvr = Style.useDesignTokens
local React_upvr = require(Parent.React)
local GetTextSize_upvr = Style.GetTextSize
local Colors_upvr = Style.Colors
local LightTheme_upvr = Style.Themes.LightTheme
return function(arg1) -- Line 18, Named "GameTileOverlayTextPill"
	--[[ Upvalues[5]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: GetTextSize_upvr (readonly)
		[4]: Colors_upvr (readonly)
		[5]: LightTheme_upvr (readonly)
	]]
	if not arg1.text or string.len(arg1.text) == 0 then
		return nil
	end
	local var3_result1 = useDesignTokens_upvr()
	local Space_100_upvr = var3_result1.Global.Space_100
	local Space_75 = var3_result1.Global.Space_75
	local Font_upvr = var3_result1.Semantic.Typography.Title.Font
	local FontSize_upvr = var3_result1.Semantic.Typography.CaptionHeader.FontSize
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 31
		--[[ Upvalues[4]:
			[1]: GetTextSize_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: FontSize_upvr (readonly)
			[4]: Font_upvr (readonly)
		]]
		return GetTextSize_upvr(arg1.text, FontSize_upvr, Font_upvr, Vector2.new(math.huge, math.huge))
	end, {arg1.text, FontSize_upvr, Font_upvr})
	return React_upvr.createElement("Frame", {
		BackgroundColor3 = Colors_upvr.White;
		BackgroundTransparency = 0.1;
		Position = arg1.Position;
		AnchorPoint = arg1.AnchorPoint;
		AutomaticSize = Enum.AutomaticSize.XY;
	}, {
		Corner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0);
		});
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, Space_75);
			PaddingLeft = UDim.new(0, Space_100_upvr);
			PaddingBottom = UDim.new(0, Space_75);
			PaddingRight = UDim.new(0, Space_100_upvr);
		});
		TextLabel = React_upvr.createElement("TextLabel", {
			BackgroundTransparency = 1;
			Size = UDim2.fromOffset(any_useMemo_result1_upvr.X, any_useMemo_result1_upvr.Y);
			Text = arg1.text;
			TextColor3 = LightTheme_upvr.TextEmphasis.Color3;
			Font = Font_upvr;
			TextSize = FontSize_upvr;
			TextXAlignment = Enum.TextXAlignment.Center;
			TextYAlignment = Enum.TextYAlignment.Center;
			TextWrapped = false;
			TextTruncate = Enum.TextTruncate.AtEnd;
		}, {
			UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
				MaxSize = arg1.maxWidthBinding:map(function(arg1_2) -- Line 64
					--[[ Upvalues[2]:
						[1]: Space_100_upvr (readonly)
						[2]: any_useMemo_result1_upvr (readonly)
					]]
					local var24 = arg1_2 - Space_100_upvr * 2
					if 0 < var24 then
						return Vector2.new(var24, any_useMemo_result1_upvr.Y)
					end
					return nil
				end);
			});
		});
	})
end