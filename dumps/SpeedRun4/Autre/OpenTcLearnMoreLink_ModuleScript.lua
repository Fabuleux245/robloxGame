-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:13
-- Luau version 6, Types version 3
-- Time taken: 0.000551 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local game_DefineFastString_result1_upvr = game:DefineFastString("AppChatTcLearnMoreUrl", "https://en.help.roblox.com/")
return function() -- Line 9
	--[[ Upvalues[3]:
		[1]: NavigateDown_upvr (readonly)
		[2]: AppPage_upvr (readonly)
		[3]: game_DefineFastString_result1_upvr (readonly)
	]]
	return function(arg1) -- Line 10
		--[[ Upvalues[3]:
			[1]: NavigateDown_upvr (copied, readonly)
			[2]: AppPage_upvr (copied, readonly)
			[3]: game_DefineFastString_result1_upvr (copied, readonly)
		]]
		arg1:dispatch(NavigateDown_upvr({
			name = AppPage_upvr.GenericWebPage;
			detail = game_DefineFastString_result1_upvr;
			extraProps = {
				title = "";
			};
		}, nil))
	end
end