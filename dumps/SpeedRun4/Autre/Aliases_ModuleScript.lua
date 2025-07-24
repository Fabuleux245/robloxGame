-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:22
-- Luau version 6, Types version 3
-- Time taken: 0.001113 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local RoduxAliases_upvr = require(AppChat.Http.RoduxAliases)
local function convertToNewAliasUpdatedActions_upvr(arg1) -- Line 8, Named "convertToNewAliasUpdatedActions"
	--[[ Upvalues[1]:
		[1]: RoduxAliases_upvr (readonly)
	]]
	local module = {}
	for _, v in ipairs(arg1) do
		table.insert(module, RoduxAliases_upvr.Actions.AliasUpdated(tostring(v.targetUserId), v.targetUserTag))
	end
	return module
end
local tbl_upvr = {
	GetAliases_Success = function(arg1) -- Line 20
		--[[ Upvalues[1]:
			[1]: convertToNewAliasUpdatedActions_upvr (readonly)
		]]
		return convertToNewAliasUpdatedActions_upvr(arg1.responseBody)
	end;
	ReceivedAliases = function(arg1) -- Line 24
		--[[ Upvalues[1]:
			[1]: convertToNewAliasUpdatedActions_upvr (readonly)
		]]
		return convertToNewAliasUpdatedActions_upvr(arg1.aliases)
	end;
}
local llama_upvr = require(AppChat.Parent.LuaSocialLibrariesDeps).llama
local any_installReducer_result1_upvr = RoduxAliases_upvr.installReducer()
return function(arg1, arg2) -- Line 31
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: llama_upvr (readonly)
		[3]: any_installReducer_result1_upvr (readonly)
	]]
	local var17 = arg1
	if not var17 then
		var17 = {}
		var17.byUserId = {
			ShowUserAlias = true;
		}
	end
	var17 = {}
	local var19 = var17
	var19[1] = arg2
	local var20 = tbl_upvr[arg2.type]
	if var20 then
		var19 = var20(arg2)
	end
	return llama_upvr.List.reduce(var19, any_installReducer_result1_upvr, var17)
end