-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:34
-- Luau version 6, Types version 3
-- Time taken: 0.000529 seconds

local React_upvr = require(script:FindFirstAncestor("AppChat").Parent.React)
local ParentContainerContext_upvr = require(script.Parent.ParentContainerContext)
return function(arg1) -- Line 11, Named "ParentContainerProvider"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ParentContainerContext_upvr (readonly)
	]]
	return React_upvr.createElement(ParentContainerContext_upvr.Provider, {
		value = {
			getParentContainer = arg1.getParentContainer;
			visibilitySignal = arg1.visibilitySignal;
			getShouldSetAppChatVisible = arg1.getShouldSetAppChatVisible;
			entryPoint = arg1.entryPoint;
			hideParentContainer = arg1.hideParentContainer;
			showParentContainer = arg1.showParentContainer;
			updateCurrentSquadId = arg1.updateCurrentSquadId;
		};
	}, arg1.children)
end