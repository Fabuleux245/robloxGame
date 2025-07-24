-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:20
-- Luau version 6, Types version 3
-- Time taken: 0.001760 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Parent = script.Parent.Parent
local Roact_upvr = InGameMenuDependencies.Roact
local GameIcon_upvr = require(Parent.Components.GameIcon)
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1) -- Line 47
	return {
		gameName = arg1.gameInfo.name;
	}
end)(function(arg1) -- Line 17, Named "GameIconHeader"
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: GameIcon_upvr (readonly)
		[3]: ThemedTextLabel_upvr (readonly)
	]]
	return Roact_upvr.createElement("ImageLabel", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 148);
	}, {
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, 24);
			PaddingLeft = UDim.new(0, 24);
			PaddingRight = UDim.new(0, 24);
			PaddingTop = UDim.new(0, 24);
		});
		GameIcon = Roact_upvr.createElement(GameIcon_upvr, {
			gameId = game.GameId;
			iconSize = 100;
		});
		GameName = Roact_upvr.createElement(ThemedTextLabel_upvr, {
			fontKey = "Title";
			themeKey = "TextEmphasis";
			Position = UDim2.new(0, 112, 0, 0);
			Size = UDim2.new(1, -112, 1, 0);
			Text = arg1.gameName;
			TextTruncate = Enum.TextTruncate.AtEnd;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Top;
		});
	})
end)