-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:47
-- Luau version 6, Types version 3
-- Time taken: 0.000921 seconds

local CorePackages = game:GetService("CorePackages")
local withStyle_upvr = require(CorePackages.Packages.UIBlox).Core.Style.withStyle
local React_upvr = require(CorePackages.Packages.React)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return function(arg1) -- Line 17, Named "Divider"
	--[[ Upvalues[3]:
		[1]: withStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 18
		--[[ Upvalues[3]:
			[1]: React_upvr (copied, readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return React_upvr.createElement("Frame", Cryo_upvr.Dictionary.join({
			Size = UDim2.new(1, 0, 0, 1);
		}, arg1, {
			BorderSizePixel = 0;
			BackgroundColor3 = arg1_2.Theme.Divider.Color;
			BackgroundTransparency = arg1_2.Theme.Divider.Transparency;
		}))
	end)
end