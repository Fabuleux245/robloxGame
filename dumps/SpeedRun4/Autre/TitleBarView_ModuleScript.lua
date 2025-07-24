-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:16
-- Luau version 6, Types version 3
-- Time taken: 0.004465 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui_upvr = game:GetService("CoreGui")
local RobloxGui_upvr = CoreGui_upvr:WaitForChild("RobloxGui")
local React_upvr = require(CorePackages.Packages.React)
local tbl_4_upvr = {
	showDivider = false;
	showBackground = false;
	backgroundTransparency = 1;
	useCustomTextColor = false;
	customTextColor = Color3.fromRGB(255, 255, 255);
	headerPaddingLeft = 15;
}
local useLayoutValues_upvr = require(CorePackages.Workspace.Packages.PlayerList).Common.useLayoutValues
local useStyle_upvr = require(CorePackages.Packages.UIBlox).Core.Style.useStyle
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local GameTranslator_upvr = require(RobloxGui_upvr.Modules.GameTranslator)
return React_upvr.memo(function(arg1) -- Line 51, Named "TitleBarView"
	--[[ Upvalues[8]:
		[1]: tbl_4_upvr (readonly)
		[2]: useLayoutValues_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: RobloxTranslator_upvr (readonly)
		[6]: GameTranslator_upvr (readonly)
		[7]: CoreGui_upvr (readonly)
		[8]: RobloxGui_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl = {}
	local _
	for i, v in pairs(tbl_4_upvr) do
		if arg1[i] == nil or not arg1[i] then
		end
		tbl[i] = v
	end
	for i_2, v_2 in pairs(arg1) do
		tbl[i_2] = v_2
	end
	local var34 = tbl
	local var6_result1_upvr = useLayoutValues_upvr()
	local var7_result1_upvr = useStyle_upvr()
	local tbl_3_upvr = {
		layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
	}
	if var34.isSmallTouchDevice then
	end
	if not var34.useCustomTextColor or not var34.customTextColor then
		local Color_upvr = var7_result1_upvr.Theme.TextMuted.Color
	end
	if var34.useCustomTextColor then
		local _ = 0
	else
	end
	tbl_3_upvr.playersHeader = React_upvr.createElement("TextLabel", {
		LayoutOrder = 1;
		Size = UDim2.new(0, var6_result1_upvr.PlayerNameSizeXMobile, 1, 0);
		Text = RobloxTranslator_upvr:FormatByKey("InGame.PlayerList.Players");
		BackgroundTransparency = 1;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Center;
		Font = var7_result1_upvr.Font.Footer.Font;
		TextSize = var7_result1_upvr.Font.BaseSize * var7_result1_upvr.Font.Footer.RelativeSize;
		TextTransparency = var7_result1_upvr.Theme.TextMuted.Transparency;
		TextColor3 = Color_upvr;
	}, {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, var34.headerPaddingLeft);
		});
	})
	if 0 < var34.gameStatsCount then
		local MaxLeaderstats_upvr = var6_result1_upvr.MaxLeaderstats
		local Transparency_upvr = var7_result1_upvr.Theme.TextMuted.Transparency
		var34.gameStats.iterateData(function(arg1_2, arg2) -- Line 107
			--[[ Upvalues[9]:
				[1]: MaxLeaderstats_upvr (readonly)
				[2]: GameTranslator_upvr (copied, readonly)
				[3]: CoreGui_upvr (copied, readonly)
				[4]: tbl_3_upvr (readonly)
				[5]: React_upvr (copied, readonly)
				[6]: var6_result1_upvr (readonly)
				[7]: var7_result1_upvr (readonly)
				[8]: Transparency_upvr (readonly)
				[9]: Color_upvr (readonly)
			]]
			if MaxLeaderstats_upvr < arg2.order(false) then
			else
				tbl_3_upvr["stat_"..arg1_2] = React_upvr.createElement("TextLabel", {
					LayoutOrder = arg2.order(false) + 1;
					Size = UDim2.new(0, var6_result1_upvr.StatEntrySizeX, 1, 0);
					Text = GameTranslator_upvr:TranslateGameText(CoreGui_upvr, arg1_2);
					BackgroundTransparency = 1;
					TextXAlignment = Enum.TextXAlignment.Center;
					TextYAlignment = Enum.TextYAlignment.Center;
					Font = var7_result1_upvr.Font.Footer.Font;
					TextSize = var7_result1_upvr.Font.BaseSize * var7_result1_upvr.Font.Footer.RelativeSize;
					TextTransparency = Transparency_upvr;
					TextColor3 = Color_upvr;
					TextTruncate = Enum.TextTruncate.AtEnd;
				})
			end
		end, false)
	end
	local Color3_fromRGB_result1 = Color3.fromRGB(0, 0, 0)
	if var34.showBackground then
		if require(RobloxGui_upvr.Modules.Chrome.Enabled)() then
			Color3_fromRGB_result1 = var7_result1_upvr.Theme.BackgroundUIContrast.Color
		else
			Color3_fromRGB_result1 = var7_result1_upvr.Theme.BackgroundContrast.Color
		end
	end
	local module = {}
	if var34.showDivider then
		module.Divider = React_upvr.createElement("Frame", {
			Visible = var34.contentsVisible;
			Size = UDim2.new(1, 0, 0, 1);
			Position = UDim2.new(0, 0, 1, 0);
			AnchorPoint = Vector2.new(0, 1);
			BackgroundTransparency = var7_result1_upvr.Theme.Divider.Transparency;
			BackgroundColor3 = var7_result1_upvr.Theme.Divider.Color;
			BorderSizePixel = 0;
		})
	end
	local tbl_2 = {
		Visible = var34.contentsVisible;
		BackgroundTransparency = 1;
	}
	if not var34.showBackground or not UDim2.new(0, 0, 0, -2) then
	end
	tbl_2.Position = UDim2.new(0, 0, 0, 0)
	tbl_2.Size = UDim2.new(1, 0, 1, 0)
	module.ChildrenFrame = React_upvr.createElement("Frame", tbl_2, tbl_3_upvr)
	return React_upvr.createElement("Frame", {
		Size = var34.size;
		LayoutOrder = var34.layoutOrder;
		BackgroundTransparency = var34.backgroundTransparency;
		BackgroundColor3 = Color3_fromRGB_result1;
		BorderSizePixel = 0;
	}, module)
end)