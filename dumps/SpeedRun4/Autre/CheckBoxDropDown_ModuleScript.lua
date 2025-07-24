-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:02
-- Luau version 6, Types version 3
-- Time taken: 0.002847 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local any_extend_result1 = Roact_upvr.Component:extend("CheckBoxDropDown")
local Constants_upvr = require(script.Parent.Parent.Constants)
function any_extend_result1.render(arg1) -- Line 10
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var4
	if not arg1.props[Roact_upvr.Children] then
	end
	local frameWidth = arg1.props.frameWidth
	local dropdownTargetGui = arg1.props.dropdownTargetGui
	local var7 = arg1.props.elementHeight * arg1.props.numElements
	var4 = 24 + var7
	local module = {}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var4 = dropdownTargetGui
		return var4
	end
	if dropdownTargetGui == nil or not INLINED() then
		var4 = game:GetService("CoreGui").DevConsoleMaster
	end
	module.target = var4
	var4 = {}
	var4.InputCatcher = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		[Roact_upvr.Event.InputEnded] = arg1.props.onCloseCheckBox;
	}, {
		OuterFrame = Roact_upvr.createElement("ImageButton", {
			Size = UDim2.new(0, frameWidth, 0, var4);
			AutoButtonColor = false;
			Position = arg1.props.absolutePosition;
			BackgroundColor3 = Constants_upvr.Color.TextBoxGray;
			BackgroundTransparency = 0;
		}, {
			innerFrame = Roact_upvr.createElement("Frame", {
				Position = UDim2.new(0, 12, 0, 12);
				Size = UDim2.new(0, frameWidth, 0, var7);
				BackgroundTransparency = 1;
			}, {});
		});
	})
	return Roact_upvr.createElement(Roact_upvr.Portal, module, var4)
end
return any_extend_result1