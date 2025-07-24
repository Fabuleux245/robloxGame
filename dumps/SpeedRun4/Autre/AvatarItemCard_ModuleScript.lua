-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:17
-- Luau version 6, Types version 3
-- Time taken: 0.002838 seconds

local CorePackages = game:GetService("CorePackages")
local useStyle_upvr = require(CorePackages.Packages.UIBlox).Core.Style.useStyle
local FFlagAppendBodyPartToTitle_upvr = require(script.Parent.Parent.Parent.Parent.FFlagAppendBodyPartToTitle)
local React_upvr = require(CorePackages.Packages.React)
local AvatarPartViewport_upvr = require(script.Parent.AvatarPartViewport)
return function(arg1) -- Line 25, Named "AvatarItemCard"
	--[[ Upvalues[4]:
		[1]: useStyle_upvr (readonly)
		[2]: FFlagAppendBodyPartToTitle_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: AvatarPartViewport_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local Font = useStyle_upvr_result1.Font
	local CaptionHeader = Font.CaptionHeader
	local var25 = true
	local var26
	if var26 ~= "table" then
		var25 = arg1.asset:IsA("MeshPart")
		if not var25 then
			var25 = arg1.asset:IsA("Accessory")
		end
	end
	var26 = "Assert that asset is a table, MeshPart, or Accessory"
	assert(var25, var26)
	local bodyName = arg1.bodyName
	local partName_2 = arg1.partName
	if FFlagAppendBodyPartToTitle_upvr then
		var26 = bodyName and partName_2
	else
		var26 = arg1.titleText
	end
	local var29
	if FFlagAppendBodyPartToTitle_upvr and bodyName and partName_2 then
		assert(bodyName, "bodyName is nil")
		assert(partName_2, "partName is nil")
		var29 = bodyName.."'s "..partName_2
	else
		var29 = arg1.titleText
	end
	local module_3 = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 5);
		});
		AvatarPartViewport = React_upvr.createElement(AvatarPartViewport_upvr, {
			asset = arg1.asset;
			LayoutOrder = 1;
			viewportSize = arg1.viewportSize;
		});
	}
	local var34 = var26
	if var34 then
		var34 = React_upvr.createElement
		var34 = var34("TextLabel", {
			LayoutOrder = 2;
			BackgroundTransparency = 1;
			Text = var29;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Top;
			Size = UDim2.new(1, 0, 0, 50);
			TextColor3 = useStyle_upvr_result1.Theme.TextEmphasis.Color;
			TextWrapped = true;
			Font = CaptionHeader.Font;
			TextSize = CaptionHeader.RelativeSize * Font.BaseSize;
			TextTruncate = Enum.TextTruncate.AtEnd;
		})
	end
	module_3.TitleText = var34
	return React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		LayoutOrder = arg1.LayoutOrder;
		BackgroundTransparency = 1;
	}, module_3)
end