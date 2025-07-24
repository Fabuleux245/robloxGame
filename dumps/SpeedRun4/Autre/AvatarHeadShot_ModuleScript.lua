-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:45
-- Luau version 6, Types version 3
-- Time taken: 0.001253 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("AvatarHeadShot")
local Headshot_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("Modules").Common.LegacyThumbnailUrls).Headshot
local Colors_upvr = require(script.Parent.Parent.Colors)
function any_extend_result1.render(arg1) -- Line 19
	--[[ Upvalues[3]:
		[1]: Headshot_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Colors_upvr (readonly)
	]]
	local playerId = arg1.props.playerId
	local var7
	if playerId and playerId ~= "" then
		var7 = Headshot_upvr:format(playerId, 48, 48)
	end
	if not var7 then
		return nil
	end
	return Roact_upvr.createElement("ImageLabel", {
		Size = UDim2.new(0, 48, 0, 48);
		BackgroundColor3 = Colors_upvr.GrayBackground;
		BorderSizePixel = 0;
		Image = var7;
		LayoutOrder = 1;
	}, {
		MaskFrame = Roact_upvr.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Image = "rbxasset://textures/ui/LuaApp/graphic/gr-avatar mask-90x90.png";
			ImageColor3 = Colors_upvr.Carbon;
		});
	})
end
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 50
	return {
		playerId = arg1.playerId;
	}
end)(any_extend_result1)