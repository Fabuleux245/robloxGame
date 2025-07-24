-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:15
-- Luau version 6, Types version 3
-- Time taken: 0.004112 seconds

local Parent = script:FindFirstAncestor("GameTile").Parent
local Foundation = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local tbl_4_upvr = {}
local useTokens_upvr = Foundation.Hooks.useTokens
local GetTextSize_upvr = require(Parent.Style).GetTextSize
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local Icon_upvr = Foundation.Icon
local IconSize_upvr = Foundation.Enums.IconSize
return React_upvr.memo(function(arg1) -- Line 25, Named "GameTileOverlayBadge"
	--[[ Upvalues[7]:
		[1]: tbl_4_upvr (readonly)
		[2]: useTokens_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: GetTextSize_upvr (readonly)
		[5]: dependencyArray_upvr (readonly)
		[6]: Icon_upvr (readonly)
		[7]: IconSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 38 start (CF ANALYSIS FAILED)
	local icons = arg1.icons
	if not icons then
		icons = tbl_4_upvr
	end
	local var19_upvr = arg1.text or ""
	if 0 >= #icons then
	else
	end
	if 0 >= #var19_upvr then
		-- KONSTANTWARNING: GOTO [19] #16
	end
	-- KONSTANTERROR: [0] 1. Error Block 38 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 40 start (CF ANALYSIS FAILED)
	local var20_upvr = true
	local useTokens_upvr_result1 = useTokens_upvr()
	local White_90 = useTokens_upvr_result1.Color.Extended.White.White_90
	if var20_upvr or 1 < #icons then
		local Size_200 = useTokens_upvr_result1.Size.Size_200
	else
	end
	local Size_150 = useTokens_upvr_result1.Size.Size_150
	local XSmall = useTokens_upvr_result1.Padding.XSmall
	local TitleSmall_upvr = useTokens_upvr_result1.Typography.TitleSmall
	local Size_400 = useTokens_upvr_result1.Size.Size_400
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 43
		--[[ Upvalues[4]:
			[1]: var20_upvr (readonly)
			[2]: GetTextSize_upvr (copied, readonly)
			[3]: var19_upvr (readonly)
			[4]: TitleSmall_upvr (readonly)
		]]
		if var20_upvr then
			return GetTextSize_upvr(var19_upvr, TitleSmall_upvr.FontSize, TitleSmall_upvr.Font, Vector2.new(math.huge, math.huge))
		end
		return Vector2.new(0, 0)
	end, dependencyArray_upvr(var19_upvr, var20_upvr, TitleSmall_upvr.FontSize, TitleSmall_upvr.Font))
	local var31_upvw
	if not var20_upvr and not true then
		return nil
	end
	local tbl_5 = {}
	var31_upvw = React_upvr.createElement
	local tbl = {
		PaddingTop = UDim.new(0, Size_150);
		PaddingLeft = UDim.new(0, useTokens_upvr_result1.Size.Size_150);
		PaddingBottom = UDim.new(0, Size_150);
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl.PaddingRight = UDim.new(0, useTokens_upvr_result1.Size.Size_150)
	var31_upvw = var31_upvw("UIPadding", tbl)
	tbl_5.Padding = var31_upvw
	var31_upvw = React_upvr.createElement
	var31_upvw = var31_upvw("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, XSmall);
	})
	tbl_5.Layout = var31_upvw
	var31_upvw = 0
	for i, v in icons do
		tbl_5[`Icon{i}`] = React_upvr.createElement(Icon_upvr, {
			LayoutOrder = i;
			name = v;
			size = IconSize_upvr.Small;
			style = useTokens_upvr_result1.LightMode.Content.Emphasis;
		})
		var31_upvw += Size_400 + XSmall
		local var36
	end
	if var20_upvr then
		local tbl_2 = {}
		v = #icons
		i = v + 1
		tbl_2.LayoutOrder = i
		i = 1
		tbl_2.BackgroundTransparency = i
		i = UDim2.fromOffset
		v = any_useMemo_result1.X
		i = i(v, any_useMemo_result1.Y)
		tbl_2.Size = i
		tbl_2.Text = var19_upvr
		i = var36.Color3
		tbl_2.TextColor3 = i
		i = TitleSmall_upvr.Font
		tbl_2.Font = i
		i = TitleSmall_upvr.FontSize
		tbl_2.TextSize = i
		i = Enum.TextXAlignment.Left
		tbl_2.TextXAlignment = i
		i = Enum.TextYAlignment.Center
		tbl_2.TextYAlignment = i
		i = false
		tbl_2.TextWrapped = i
		i = Enum.TextTruncate.AtEnd
		tbl_2.TextTruncate = i
		i = {}
		v = React_upvr.createElement
		local tbl_3 = {}
		local Size_150_upvr = useTokens_upvr_result1.Size.Size_150
		tbl_3.MaxSize = arg1.maxWidthBinding:map(function(arg1_2) -- Line 97
			--[[ Upvalues[2]:
				[1]: Size_150_upvr (readonly)
				[2]: var31_upvw (read and write)
			]]
			local var41 = arg1_2 - 2 * Size_150_upvr - var31_upvw
			if 0 < var41 then
				return Vector2.new(var41, math.huge)
			end
			return nil
		end)
		v = v("UISizeConstraint", tbl_3)
		i.UISizeConstraint = v
		tbl_5.BadgeText = React_upvr.createElement("TextLabel", tbl_2, i)
	end
	do
		return React_upvr.createElement("Frame", {
			BackgroundColor3 = White_90.Color3;
			BackgroundTransparency = White_90.Transparency;
			Position = arg1.Position;
			AnchorPoint = arg1.AnchorPoint;
			AutomaticSize = Enum.AutomaticSize.XY;
		}, {
			Corner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0);
			});
			BadgeContent = React_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.XY;
			}, tbl_5);
		})
	end
	-- KONSTANTERROR: [18] 15. Error Block 40 end (CF ANALYSIS FAILED)
end)