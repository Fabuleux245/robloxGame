-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:59
-- Luau version 6, Types version 3
-- Time taken: 0.000734 seconds

local CorePackages = game:GetService("CorePackages")
local Constants = require(script.Parent.Parent.Constants)
local React_upvr = require(CorePackages.Packages.React)
local Roact_upvr = require(CorePackages.Packages.Roact)
local MainWindowHeader_upvr_2 = Constants.DefaultFontSize.MainWindowHeader
local Text_upvr = Constants.Color.Text
local MainWindowHeader_upvr = Constants.Font.MainWindowHeader
local UnselectedGray_upvr = Constants.Color.UnselectedGray
return function(arg1) -- Line 18, Named "BoxButton"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: MainWindowHeader_upvr_2 (readonly)
		[4]: Text_upvr (readonly)
		[5]: MainWindowHeader_upvr (readonly)
		[6]: UnselectedGray_upvr (readonly)
	]]
	return Roact_upvr.createElement("TextButton", {
		Text = arg1.text;
		TextSize = MainWindowHeader_upvr_2;
		TextColor3 = Text_upvr;
		Font = MainWindowHeader_upvr;
		Size = arg1.size;
		Position = arg1.pos;
		AutoButtonColor = true;
		BackgroundColor3 = UnselectedGray_upvr;
		BackgroundTransparency = 0;
		[Roact_upvr.Event.Activated] = React_upvr.useCallback(function() -- Line 25
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.onClicked(arg1.text)
		end, {arg1.onClicked, arg1.text});
	})
end