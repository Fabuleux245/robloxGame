-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:59
-- Luau version 6, Types version 3
-- Time taken: 0.001999 seconds

local CorePackages = game:GetService("CorePackages")
local Constants_upvr = require(script.Parent.Parent.Constants)
local React_upvr = require(CorePackages.Packages.React)
local Roact_upvr = require(CorePackages.Packages.Roact)
local CheckBoxHeight_upvr = Constants_upvr.UtilityBarFormatting.CheckBoxHeight
return function(arg1) -- Line 23, Named "CellCheckbox"
	--[[ Upvalues[4]:
		[1]: Constants_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CheckBoxHeight_upvr (readonly)
	]]
	local isSelected_upvr = arg1.isSelected
	local var7 = ""
	local var8 = 1
	local UnselectedGray = Constants_upvr.Color.UnselectedGray
	if isSelected_upvr then
		var7 = Constants_upvr.Image.Check
		var8 = 0
		UnselectedGray = Constants_upvr.Color.SelectedBlue
	end
	return Roact_upvr.createElement("ImageButton", {
		Size = arg1.size;
		Position = arg1.pos;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.LayoutOrder;
		[Roact_upvr.Event.Activated] = React_upvr.useCallback(function() -- Line 43
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: isSelected_upvr (readonly)
			]]
			arg1.OnCheckBoxClicked(arg1.name, not isSelected_upvr)
		end, {arg1.OnCheckBoxClicked, arg1.name, isSelected_upvr});
	}, {
		Icon = Roact_upvr.createElement("ImageLabel", {
			Image = var7;
			Size = UDim2.new(0, CheckBoxHeight_upvr, 0, CheckBoxHeight_upvr);
			Position = UDim2.new(0, 0, 0.5, -CheckBoxHeight_upvr / 2);
			BackgroundColor3 = UnselectedGray;
			BackgroundTransparency = 0;
			BorderColor3 = Constants_upvr.Color.Text;
			BorderSizePixel = var8;
		});
	})
end