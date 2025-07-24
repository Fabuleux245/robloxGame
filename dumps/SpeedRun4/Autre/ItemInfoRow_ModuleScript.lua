-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:36
-- Luau version 6, Types version 3
-- Time taken: 0.003377 seconds

local Parent = script:FindFirstAncestor("ItemDetails").Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useSelectionCursor_upvr = UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local vector2_upvr = Vector2.new(14, 14)
local Focusable_upvr = require(Parent.RoactGamepad).Focusable
local VerifiedBadges_upvr = require(Parent.VerifiedBadges)
local ShimmerPanel_upvr = UIBlox.App.Loading.ShimmerPanel
local udim2_upvr = UDim2.new(0.3, 0, 0.8, 0)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local var14_upvr = UIBlox.App.ImageSet.Images["icons/navigation/pushRight_small"] or "LuaApp/icons/GameDetails/navigation/pushRight_small"
return React_upvr.forwardRef(function(arg1, arg2) -- Line 45
	--[[ Upvalues[11]:
		[1]: useStyle_upvr (readonly)
		[2]: useSelectionCursor_upvr (readonly)
		[3]: CursorKind_upvr (readonly)
		[4]: vector2_upvr (readonly)
		[5]: Focusable_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: VerifiedBadges_upvr (readonly)
		[8]: ShimmerPanel_upvr (readonly)
		[9]: udim2_upvr (readonly)
		[10]: ImageSetLabel_upvr (readonly)
		[11]: var14_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 93 start (CF ANALYSIS FAILED)
	local isLoading = arg1.isLoading
	local useStyle_upvr_result1 = useStyle_upvr()
	local Font = useStyle_upvr_result1.Font
	local X = vector2_upvr.X
	local var21
	if arg2 == nil then
		X = false
	else
		X = true
	end
	if X then
		var21 = Focusable_upvr.ImageButton
	else
		var21 = "ImageButton"
	end
	-- KONSTANTERROR: [0] 1. Error Block 93 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 34. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 34. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [51] 35. Error Block 94 start (CF ANALYSIS FAILED)
	local tbl = {
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		LayoutOrder = arg1.LayoutOrder;
	}
	if arg1.hideDivider then
	else
	end
	tbl.Size = UDim2.new(1, 0, 0, 53)
	tbl[React_upvr.Event.Activated] = arg1.onActivate
	tbl.NextSelectionUp = arg1.NextSelectionUp
	tbl.NextSelectionDown = arg1.NextSelectionDown
	tbl.NextSelectionLeft = arg1.NextSelectionLeft
	tbl.NextSelectionRight = arg1.NextSelectionRight
	tbl.ref = arg2
	if not X or not useSelectionCursor_upvr(CursorKind_upvr.RoundedRect) then
	end
	tbl.SelectionImageObject = nil
	tbl.Selectable = arg1.Selectable
	if arg1.hideDivider then
	else
	end
	;({
		BackgroundTransparency = 1;
	}).Size = UDim2.new(1, 0, 1, -1)
	;({}).InfoNameTextLabel = React_upvr.createElement("TextLabel", {
		BackgroundTransparency = 1;
		Font = Font.Body.Font;
		Size = UDim2.new(0.5, 0, 1, 0);
		Text = arg1.infoName;
		TextColor3 = useStyle_upvr_result1.Theme.TextDefault.Color;
		TextSize = Font.BaseSize * Font.Body.RelativeSize;
		TextTruncate = Enum.TextTruncate.AtEnd;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Center;
	})
	-- KONSTANTERROR: [51] 35. Error Block 94 end (CF ANALYSIS FAILED)
end)