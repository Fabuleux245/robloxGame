-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:33
-- Luau version 6, Types version 3
-- Time taken: 0.001290 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent.Parent
local ItemTileEnums_upvr = require(Parent_2.Enum.ItemTileEnums)
local function _(arg1) -- Line 21, Named "getIconImage"
	--[[ Upvalues[1]:
		[1]: ItemTileEnums_upvr (readonly)
	]]
	if arg1 == ItemTileEnums_upvr.StatusStyle.PendingIcon then
		return "icons/status/pending_small"
	end
	if arg1 == ItemTileEnums_upvr.StatusStyle.AlertIcon then
		return "icons/actions/info_small"
	end
	return nil
end
local useStyle_upvr = require(Parent.Core.Style.useStyle)
local getIconSize_upvr = require(Parent.App.ImageSet.getIconSize)
local IconSize_upvr = require(Parent.App.ImageSet.Enum.IconSize)
local React_upvr = require(Parent.Parent.React)
local ImageSetComponent_upvr = require(Parent.Core.ImageSet.ImageSetComponent)
local Images_upvr = require(Parent.App.ImageSet.Images)
return function(arg1) -- Line 31, Named "ItemTileStatusIcon"
	--[[ Upvalues[7]:
		[1]: useStyle_upvr (readonly)
		[2]: ItemTileEnums_upvr (readonly)
		[3]: getIconSize_upvr (readonly)
		[4]: IconSize_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: ImageSetComponent_upvr (readonly)
		[7]: Images_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
	local Tokens = useStyle_upvr().Tokens
	local statusStyle = arg1.statusStyle
	local var12
	if statusStyle == ItemTileEnums_upvr.StatusStyle.PendingIcon then
		var12 = "icons/status/pending_small"
		-- KONSTANTWARNING: GOTO [26] #19
	end
	-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 17 start (CF ANALYSIS FAILED)
	if statusStyle == ItemTileEnums_upvr.StatusStyle.AlertIcon then
		var12 = "icons/actions/info_small"
	else
		var12 = nil
	end
	if not var12 then
		return nil
	end
	local var5_result1 = getIconSize_upvr(IconSize_upvr.Small)
	local Emphasis = Tokens.Semantic.Color.Icon.Emphasis
	do
		return React_upvr.createElement(ImageSetComponent_upvr.Label, {
			Position = UDim2.fromOffset(Tokens.Global.Size_100, Tokens.Global.Size_100);
			Size = UDim2.fromOffset(var5_result1, var5_result1);
			BackgroundTransparency = 1;
			Image = Images_upvr[var12];
			ImageColor3 = Emphasis.Color3;
			ImageTransparency = Emphasis.Transparency;
		})
	end
	-- KONSTANTERROR: [15] 11. Error Block 17 end (CF ANALYSIS FAILED)
end