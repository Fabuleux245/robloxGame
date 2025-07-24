-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:21
-- Luau version 6, Types version 3
-- Time taken: 0.000902 seconds

return require(script:FindFirstAncestor("ExpChat").Parent.Rodux).makeActionCreator(script.Name, function(arg1) -- Line 13
	local module = {}
	local bubbleChatSettings = arg1.bubbleChatSettings
	if not bubbleChatSettings then
		bubbleChatSettings = {}
	end
	module.bubbleChatSettings = bubbleChatSettings
	bubbleChatSettings = arg1.chatWindowSettings
	local var4 = bubbleChatSettings
	if not var4 then
		var4 = {}
	end
	module.chatWindowSettings = var4
	var4 = arg1.chatInputBarSettings
	local var5 = var4
	if not var5 then
		var5 = {}
	end
	module.chatInputBarSettings = var5
	var5 = arg1.channelTabsSettings
	local var6 = var5
	if not var6 then
		var6 = {}
	end
	module.channelTabsSettings = var6
	return module
end)