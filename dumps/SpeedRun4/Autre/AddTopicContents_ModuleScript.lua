-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:46
-- Luau version 6, Types version 3
-- Time taken: 0.000497 seconds

return require(script:FindFirstAncestor("TopicContentsRodux").Parent.Rodux).makeActionCreator(script.Name, function(arg1, arg2, arg3) -- Line 8
	local module = {}
	module.topicKey = arg1
	module.topicContents = arg2
	module.isAppend = arg3
	return module
end)