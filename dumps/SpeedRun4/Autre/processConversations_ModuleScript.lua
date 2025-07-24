-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:16
-- Luau version 6, Types version 3
-- Time taken: 0.002569 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local UserModel_upvr = require(Parent.UserLib).Models.UserModel
local llama_upvr = require(Parent.LuaSocialLibrariesDeps).llama
local function extractConversationsAndUsers_upvr(arg1, arg2) -- Line 9, Named "extractConversationsAndUsers"
	--[[ Upvalues[2]:
		[1]: UserModel_upvr (readonly)
		[2]: llama_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
	local tbl = {}
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [8.8]
	table.insert({}, nil.id)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil.participant_user_ids then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		for _, v in nil.participant_user_ids do
			v = tostring(v)
			if not tbl[v] then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local user_data = nil.user_data
				if user_data then
					local var28 = user_data[v]
					if var28 then
						local var29 = arg2[v]
						if not var29 then
							var29 = UserModel_upvr.fromDataTable
							var29 = var29({
								id = var28.id;
								name = var28.name;
								displayName = var28.display_name;
								isFriend = false;
							})
						end
						tbl[var29.id] = var29
					end
				end
			end
		end
		-- KONSTANTWARNING: GOTO [8] #7
	end
	-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [65] 47. Error Block 25 start (CF ANALYSIS FAILED)
	for _, _ in nil.participant_user_ids do
		if not user_data then
			if not user_data then
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
	-- KONSTANTERROR: [65] 47. Error Block 25 end (CF ANALYSIS FAILED)
end
local AddUsers_upvr = require(Parent.UserLib).Actions.AddUsers
local NetworkingPresence_upvr = require(AppChat.Http.NetworkingPresence)
return function(arg1) -- Line 63
	--[[ Upvalues[3]:
		[1]: extractConversationsAndUsers_upvr (readonly)
		[2]: AddUsers_upvr (readonly)
		[3]: NetworkingPresence_upvr (readonly)
	]]
	return function(arg1_2) -- Line 64
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: extractConversationsAndUsers_upvr (copied, readonly)
			[3]: AddUsers_upvr (copied, readonly)
			[4]: NetworkingPresence_upvr (copied, readonly)
		]]
		if not arg1 then
		else
			local Users = arg1_2:getState().Users
			if not Users then
				Users = {}
			end
			local _, extractConversationsAndUsers_upvr_result2, extractConversationsAndUsers_upvr_result3 = extractConversationsAndUsers_upvr(arg1, Users)
			arg1_2:dispatch(AddUsers_upvr(extractConversationsAndUsers_upvr_result2))
			arg1_2:dispatch(NetworkingPresence_upvr.GetPresencesFromUserIds.API(extractConversationsAndUsers_upvr_result3)):catch(function(arg1_3) -- Line 73
				warn("NetworkingPresence failure in processConversations, Status: "..tostring(arg1_3))
			end)
		end
	end
end