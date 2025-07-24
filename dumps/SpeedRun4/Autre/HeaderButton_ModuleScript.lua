-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:11
-- Luau version 6, Types version 3
-- Time taken: 0.000681 seconds

local Constants = require(script.Parent.Parent.Constants)
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local MainWindowHeader_upvr = Constants.DefaultFontSize.MainWindowHeader
local Text_upvr = Constants.Color.Text
local MainWindowHeader_upvr_2 = Constants.Font.MainWindowHeader
return function(arg1) -- Line 18, Named "HeaderButton"
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: MainWindowHeader_upvr (readonly)
		[3]: Text_upvr (readonly)
		[4]: MainWindowHeader_upvr_2 (readonly)
	]]
	local text_upvr = arg1.text
	local module = {
		Text = text_upvr;
		TextSize = MainWindowHeader_upvr;
		TextColor3 = Text_upvr;
		Font = MainWindowHeader_upvr_2;
		TextXAlignment = Enum.TextXAlignment.Left;
		Size = arg1.size;
		Position = arg1.pos;
		BackgroundTransparency = 1;
	}
	local sortfunction_upvr = arg1.sortfunction
	module[Roact_upvr.Event.Activated] = function() -- Line 35
		--[[ Upvalues[2]:
			[1]: sortfunction_upvr (readonly)
			[2]: text_upvr (readonly)
		]]
		if sortfunction_upvr then
			sortfunction_upvr(text_upvr)
		end
	end
	return Roact_upvr.createElement("TextButton", module)
end