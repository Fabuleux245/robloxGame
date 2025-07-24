-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:15
-- Luau version 6, Types version 3
-- Time taken: 0.005801 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local AppChatNetworking_upvr = require(AppChat.Parent.AppChatNetworking)
local any_new_result1_upvr = require(AppChat.Logger):new("AppChat.paginateForNewerMessages")
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AppChatNewMessageFetchMaxDepth", 10)
local function _(arg1, arg2) -- Line 18, Named "isMessageAlreadyInConversation"
	local var5
	if arg1.messages:Get(arg2) == nil then
		var5 = false
	else
		var5 = true
	end
	return var5
end
local function fetchOlderMessages_upvr(arg1, arg2, arg3) -- Line 23, Named "fetchOlderMessages"
	--[[ Upvalues[4]:
		[1]: game_DefineFastInt_result1_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: AppChatNetworking_upvr (readonly)
		[4]: fetchOlderMessages_upvr (readonly)
	]]
	return function(arg1_2) -- Line 30
		--[[ Upvalues[7]:
			[1]: arg3 (readonly)
			[2]: game_DefineFastInt_result1_upvr (copied, readonly)
			[3]: any_new_result1_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: arg1 (readonly)
			[6]: AppChatNetworking_upvr (copied, readonly)
			[7]: fetchOlderMessages_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var7
		if game_DefineFastInt_result1_upvr <= arg3 then
			var7 = "Reached max depth {} of fetching new messages"
			any_new_result1_upvr:warning(var7, game_DefineFastInt_result1_upvr)
			return
		end
		local responseBody_2 = arg2.responseBody
		if not responseBody_2 then return end
		local messages_2 = responseBody_2.messages
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var7 = messages_2[#messages_2].id
			return var7
		end
		if not messages_2 or 0 >= #messages_2 or not INLINED() then
			var7 = nil
		end
		if var7 == nil then
			any_new_result1_upvr:warning("No messages in response")
			return
		end
		assert(var7, "FFlagLuauTinyControlFlowAnalysis")
		if not responseBody_2.next_cursor or responseBody_2.next_cursor == "" or not responseBody_2.next_cursor then
			local var10
		end
		if var10 == nil then
			any_new_result1_upvr:debug("No more messages to fetch")
			return
		end
		if arg1.messages:Get(var7) == nil then
		else
		end
		if true then
			any_new_result1_upvr:debug("Last message already in conversation, we've caught up")
			return
		end
		any_new_result1_upvr:trace("Fetching for the next page of messages using cursor: {}", var10)
		return arg1_2:dispatch(AppChatNetworking_upvr.rodux.GetOlderMessages.API(arg1.id, var10)):andThen(function(arg1_3) -- Line 66
			--[[ Upvalues[4]:
				[1]: arg1_2 (readonly)
				[2]: fetchOlderMessages_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: arg3 (copied, readonly)
			]]
			return arg1_2:dispatch(fetchOlderMessages_upvr(arg1, arg1_3, arg3 + 1))
		end):catch(function(arg1_4) -- Line 69
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (copied, readonly)
			]]
			any_new_result1_upvr:warning("AppChatNetworking failure in fetchOlderMessages of refreshing new messages: {}", arg1_4)
		end)
	end
end
return function(arg1) -- Line 75
	--[[ Upvalues[4]:
		[1]: any_new_result1_upvr (readonly)
		[2]: AppChatNetworking_upvr (readonly)
		[3]: game_DefineFastInt_result1_upvr (readonly)
		[4]: fetchOlderMessages_upvr (readonly)
	]]
	return function(arg1_5) -- Line 76
		--[[ Upvalues[5]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: AppChatNetworking_upvr (copied, readonly)
			[4]: game_DefineFastInt_result1_upvr (copied, readonly)
			[5]: fetchOlderMessages_upvr (copied, readonly)
		]]
		any_new_result1_upvr:info("Starting to fetch newest messages for conversation: {}", arg1.id)
		return arg1_5:dispatch(AppChatNetworking_upvr.rodux.GetOlderMessages.API(arg1.id, nil)):andThen(function(arg1_6) -- Line 82
			--[[ Upvalues[6]:
				[1]: arg1_5 (readonly)
				[2]: arg1 (copied, readonly)
				[3]: game_DefineFastInt_result1_upvr (copied, readonly)
				[4]: any_new_result1_upvr (copied, readonly)
				[5]: AppChatNetworking_upvr (copied, readonly)
				[6]: fetchOlderMessages_upvr (copied, readonly)
			]]
			local const_number_upvr = 0
			return arg1_5:dispatch(function(arg1_7) -- Line 30
				--[[ Upvalues[7]:
					[1]: const_number_upvr (readonly)
					[2]: game_DefineFastInt_result1_upvr (copied, readonly)
					[3]: any_new_result1_upvr (copied, readonly)
					[4]: arg1_6 (readonly)
					[5]: arg1 (readonly)
					[6]: AppChatNetworking_upvr (copied, readonly)
					[7]: fetchOlderMessages_upvr (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local var18
				if game_DefineFastInt_result1_upvr <= const_number_upvr then
					var18 = "Reached max depth {} of fetching new messages"
					any_new_result1_upvr:warning(var18, game_DefineFastInt_result1_upvr)
					return
				end
				local responseBody = arg1_6.responseBody
				if not responseBody then return end
				local messages = responseBody.messages
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var18 = messages[#messages].id
					return var18
				end
				if not messages or 0 >= #messages or not INLINED_2() then
					var18 = nil
				end
				if var18 == nil then
					any_new_result1_upvr:warning("No messages in response")
					return
				end
				assert(var18, "FFlagLuauTinyControlFlowAnalysis")
				if not responseBody.next_cursor or responseBody.next_cursor == "" or not responseBody.next_cursor then
					local var21
				end
				if var21 == nil then
					any_new_result1_upvr:debug("No more messages to fetch")
					return
				end
				if arg1.messages:Get(var18) == nil then
				else
				end
				if true then
					any_new_result1_upvr:debug("Last message already in conversation, we've caught up")
					return
				end
				any_new_result1_upvr:trace("Fetching for the next page of messages using cursor: {}", var21)
				return arg1_7:dispatch(AppChatNetworking_upvr.rodux.GetOlderMessages.API(arg1.id, var21)):andThen(function(arg1_8) -- Line 66
					--[[ Upvalues[4]:
						[1]: arg1_7 (readonly)
						[2]: fetchOlderMessages_upvr (copied, readonly)
						[3]: arg1 (copied, readonly)
						[4]: const_number_upvr (copied, readonly)
					]]
					return arg1_7:dispatch(fetchOlderMessages_upvr(arg1, arg1_8, const_number_upvr + 1))
				end):catch(function(arg1_9) -- Line 69
					--[[ Upvalues[1]:
						[1]: any_new_result1_upvr (copied, readonly)
					]]
					any_new_result1_upvr:warning("AppChatNetworking failure in fetchOlderMessages of refreshing new messages: {}", arg1_9)
				end)
			end)
		end):catch(function(arg1_10) -- Line 85
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (copied, readonly)
			]]
			any_new_result1_upvr:warning("AppChatNetworking failure in refreshing first batch of new messages: {}", arg1_10)
		end)
	end
end