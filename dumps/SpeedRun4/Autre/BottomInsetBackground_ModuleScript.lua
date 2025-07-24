-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:27:57
-- Luau version 6, Types version 3
-- Time taken: 0.000702 seconds

local Parent = script:FindFirstAncestor("SocialCommon").Parent
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local React_upvr = require(Parent.React)
return function() -- Line 16
	--[[ Upvalues[3]:
		[1]: useStyle_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	return React_upvr.createElement("Frame", {
		BackgroundColor3 = useStyle_upvr_result1.Theme.BackgroundDefault.Color;
		BackgroundTransparency = useStyle_upvr_result1.Theme.BackgroundDefault.Transparency;
		BorderSizePixel = 0;
		Position = UDim2.new(0, 0, 1, 0);
		Size = UDim2.new(1, 0, 0, useSelector_upvr(function(arg1) -- Line 18
			if arg1.GlobalGuiInset then
				return arg1.GlobalGuiInset.bottom
			end
			return 0
		end));
		ZIndex = 3;
	})
end