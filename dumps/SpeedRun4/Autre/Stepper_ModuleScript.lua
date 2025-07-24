-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:19
-- Luau version 6, Types version 3
-- Time taken: 0.002084 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local LuauPolyfill_upvr = require(CorePackages.Packages.LuauPolyfill)
return function(arg1) -- Line 11, Named "Stepper"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: LuauPolyfill_upvr (readonly)
	]]
	local numberOfSteps_upvr = arg1.numberOfSteps
	local module = {}
	for i = 1, numberOfSteps_upvr do
		module[i] = i
	end
	local numberActivated_upvr = arg1.numberActivated
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(0.9, 0, 0.12, 0);
		Position = UDim2.new(0, 0, 0, 0);
		LayoutOrder = arg1.layoutOrder;
	}, React_upvr.createElement("UIListLayout", {
		Padding = UDim.new(0, 10);
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
	}), LuauPolyfill_upvr.Array.map(module, function(arg1_2, arg2) -- Line 37
		--[[ Upvalues[3]:
			[1]: React_upvr (copied, readonly)
			[2]: numberActivated_upvr (readonly)
			[3]: numberOfSteps_upvr (readonly)
		]]
		local module_2 = {}
		module_2.LayoutOrder = arg2
		local var13
		if arg2 <= numberActivated_upvr then
			var13 = 0
		else
			var13 = 0.7
		end
		module_2.BackgroundTransparency = var13
		var13 = UDim2.new(1 / numberOfSteps_upvr, 0, 0.5, 0)
		module_2.Size = var13
		var13 = UDim2.new(0, 0, 0, 0)
		module_2.Position = var13
		var13 = Color3.fromRGB(255, 255, 255)
		module_2.BackgroundColor3 = var13
		var13 = {}
		var13[1] = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0);
		})
		return React_upvr.createElement("Frame", module_2, var13)
	end))
end