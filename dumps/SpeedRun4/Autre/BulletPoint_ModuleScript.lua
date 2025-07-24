-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:58
-- Luau version 6, Types version 3
-- Time taken: 0.002490 seconds

local Parent = script.Parent.Parent.Parent
local UIBlox = require(Parent.UIBlox)
local IconSize_upvr = UIBlox.App.Constant.IconSize
local withStyle_upvr = UIBlox.Style.withStyle
local TextService_upvr = game:GetService("TextService")
local var7_upvr = IconSize_upvr.Small + 16
local Roact_upvr = require(Parent.Roact)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1) -- Line 24
	--[[ Upvalues[7]:
		[1]: withStyle_upvr (readonly)
		[2]: TextService_upvr (readonly)
		[3]: var7_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: IconSize_upvr (readonly)
		[7]: Images_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 25
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: TextService_upvr (copied, readonly)
			[3]: var7_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: ImageSetLabel_upvr (copied, readonly)
			[6]: IconSize_upvr (copied, readonly)
			[7]: Images_upvr (copied, readonly)
		]]
		local Theme = arg1_2.Theme
		local Font = arg1_2.Font
		local text = arg1.text
		local var15
		if text ~= nil then
			var15 = TextService_upvr:GetTextSize(text, Font.Body.RelativeSize * Font.BaseSize, Font.Body.Font, Vector2.new(arg1.width - var7_upvr, 10000))
		else
			var15 = Vector2.new(0, 0)
		end
		local module = {
			Bullet = Roact_upvr.createElement(ImageSetLabel_upvr, {
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 2, 0, 2);
				Size = UDim2.new(0, IconSize_upvr.Small, 0, IconSize_upvr.Small);
				ScaleType = Enum.ScaleType.Stretch;
				Image = Images_upvr["icons/status/success_small"];
				ImageColor3 = Theme.IconDefault.Color;
				ImageTransparency = Theme.IconDefault.Transparency;
			});
		}
		local tbl = {
			Position = UDim2.new(0, var7_upvr, 0, 0);
			Size = UDim2.new(1, -var7_upvr, 0, var15.Y);
			BackgroundTransparency = 1;
			Text = text;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.TextSize = Font.Body.RelativeSize * Font.BaseSize
		tbl.TextColor3 = Theme.TextDefault.Color
		tbl.TextTransparency = Theme.TextDefault.Transparency
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.Font = Font.Body.Font
		tbl.TextXAlignment = Enum.TextXAlignment.Left
		tbl.TextWrapped = true
		tbl.LayoutOrder = arg1.layoutOrder
		module.Text = Roact_upvr.createElement("TextLabel", tbl)
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, var15.Y);
			BackgroundTransparency = 1;
			LayoutOrder = arg1.layoutOrder;
		}, module)
	end)
end