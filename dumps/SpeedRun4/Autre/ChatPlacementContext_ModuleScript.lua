-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:33
-- Luau version 6, Types version 3
-- Time taken: 0.000900 seconds

local React_upvr = require(script:FindFirstAncestor("AppChat").Parent.React)
local tbl_upvr = {
	Unknown = "Unknown";
	ConnectTab = "ConnectTab";
	ChatTab = "ChatTab";
	InExperienceDefault = "InExperienceDefault";
}
local any_createContext_result1_upvr = React_upvr.createContext({
	chatPlacement = tbl_upvr.Unknown;
})
local Consumer_upvr = any_createContext_result1_upvr.Consumer
return {
	Provider = any_createContext_result1_upvr.Provider;
	Consumer = Consumer_upvr;
	Context = any_createContext_result1_upvr;
	Enum = tbl_upvr;
	useChatPlacementContext = function() -- Line 38, Named "useChatPlacementContext"
		--[[ Upvalues[2]:
			[1]: React_upvr (readonly)
			[2]: any_createContext_result1_upvr (readonly)
		]]
		return React_upvr.useContext(any_createContext_result1_upvr)
	end;
	withChatPlacementContext = function(arg1) -- Line 41, Named "withChatPlacementContext"
		--[[ Upvalues[2]:
			[1]: React_upvr (readonly)
			[2]: Consumer_upvr (readonly)
		]]
		return React_upvr.createElement(Consumer_upvr, {
			render = function(arg1_2) -- Line 43, Named "render"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				return arg1(arg1_2)
			end;
		})
	end;
	isPlacementInExperience = function(arg1) -- Line 48, Named "isPlacementInExperience"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		local var8
		if arg1 ~= tbl_upvr.InExperienceDefault then
			var8 = false
		else
			var8 = true
		end
		return var8
	end;
}