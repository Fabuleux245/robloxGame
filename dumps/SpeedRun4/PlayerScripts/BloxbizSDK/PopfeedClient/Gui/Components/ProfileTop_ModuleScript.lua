-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:35
-- Luau version 6, Types version 3
-- Time taken: 0.002279 seconds

local Parent = script.Parent.Parent
local Fusion = require(Parent.Parent.Parent.Utils.Fusion)
local Components = Parent.Components
local Font_fromEnum_result1_upvr = Font.fromEnum(Enum.Font.Arial)
Font_fromEnum_result1_upvr.Bold = true
local New_upvr = Fusion.New
local SelectButton_upvr = require(Components.SelectButton)
local Computed_upvr = Fusion.Computed
local Line_upvr = require(Components.Line)
return function(arg1) -- Line 15
	--[[ Upvalues[5]:
		[1]: New_upvr (readonly)
		[2]: Font_fromEnum_result1_upvr (readonly)
		[3]: SelectButton_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: Line_upvr (readonly)
	]]
	return {New_upvr("TextLabel")({
		Name = "Title";
		Text = "Profile";
		Size = UDim2.fromScale(0.7, 0.41);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		TextScaled = true;
		FontFace = Font_fromEnum_result1_upvr;
		TextColor3 = Color3.fromRGB(255, 255, 255);
	}), SelectButton_upvr({
		Name = "Back";
		Text = "< Back";
		Size = UDim2.fromScale(0, 0.41);
		Color = Color3.fromRGB(255, 255, 255);
		Position = UDim2.fromScale(0.05, 0.5);
		AnchorPoint = Vector2.new(0, 0.5);
		AutomaticSize = Enum.AutomaticSize.X;
		Bold = true;
		OnActivated = function() -- Line 39, Named "OnActivated"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.OnBackButtonClicked()
		end;
		Visible = Computed_upvr(function() -- Line 42
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if #arg1.undoTable == 0 then
				return false
			end
			local var14 = false
			if arg1.LastBottomBtnPress:get() == arg1.initialProfileFeed then
				if #arg1.undoTable ~= 0 then
					var14 = false
				else
					var14 = true
				end
			end
			if var14 then
				return false
			end
			return true
		end);
	}), Line_upvr({
		Size = UDim2.fromScale(1, 0.02);
	})}
end