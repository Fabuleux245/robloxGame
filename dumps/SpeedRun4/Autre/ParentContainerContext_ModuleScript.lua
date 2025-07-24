-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:34
-- Luau version 6, Types version 3
-- Time taken: 0.000967 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
return require(Parent.React).createContext({
	getParentContainer = function() -- Line 18, Named "getParentContainer"
		return nil
	end;
	visibilitySignal = Instance.new("BindableEvent");
	getShouldSetAppChatVisible = function() -- Line 22, Named "getShouldSetAppChatVisible"
		return false
	end;
	entryPoint = require(Parent.SocialCommon).Enums.ChatEntryPointNames.Unknown;
	showParentContainer = function() -- Line 26, Named "showParentContainer"
	end;
	hideParentContainer = function() -- Line 27, Named "hideParentContainer"
	end;
	updateCurrentSquadId = function() -- Line 28, Named "updateCurrentSquadId"
	end;
})