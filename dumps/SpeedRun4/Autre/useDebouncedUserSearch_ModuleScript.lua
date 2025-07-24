-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:24
-- Luau version 6, Types version 3
-- Time taken: 0.003022 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local React_upvr = require(Parent.React)
local setTimeout_upvr = LuauPolyfill.setTimeout
local NetworkingFriends_upvr = require(AppChat.Http.NetworkingFriends)
local List_upvr = require(Parent.Cryo).List
local Cryo_upvr = require(Parent.Cryo)
local isUserInConversation_upvr = require(script.Parent.isUserInConversation)
local Logger_upvr = require(script.Parent.Parent.Logger)
local clearTimeout_upvr = LuauPolyfill.clearTimeout
return function(arg1) -- Line 22, Named "useDebouncedUserSearch"
	--[[ Upvalues[10]:
		[1]: useDispatch_upvr (readonly)
		[2]: useLocalUserId_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: setTimeout_upvr (readonly)
		[5]: NetworkingFriends_upvr (readonly)
		[6]: List_upvr (readonly)
		[7]: Cryo_upvr (readonly)
		[8]: isUserInConversation_upvr (readonly)
		[9]: Logger_upvr (readonly)
		[10]: clearTimeout_upvr (readonly)
	]]
	local var4_result1_upvr = useDispatch_upvr()
	local var5_result1_upvr = useLocalUserId_upvr()
	local any_useRef_result1_upvr = React_upvr.useRef(setTimeout_upvr(function() -- Line 25
	end, 250))
	local any_useRef_result1_upvr_2 = React_upvr.useRef("")
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState({})
	local tbl_2 = {var4_result1_upvr, var5_result1_upvr}
	tbl_2[3] = arg1
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2) -- Line 29
		--[[ Upvalues[9]:
			[1]: var4_result1_upvr (readonly)
			[2]: NetworkingFriends_upvr (copied, readonly)
			[3]: var5_result1_upvr (readonly)
			[4]: List_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: any_useState_result2_upvr (readonly)
			[7]: Cryo_upvr (copied, readonly)
			[8]: isUserInConversation_upvr (copied, readonly)
			[9]: Logger_upvr (copied, readonly)
		]]
		local tbl = {}
		tbl.query = arg1_2
		tbl.limit = 20
		var4_result1_upvr(NetworkingFriends_upvr.SearchFriendsByQuery.API(var5_result1_upvr, tbl)):andThen(function(arg1_3) -- Line 34
			--[[ Upvalues[5]:
				[1]: List_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: any_useState_result2_upvr (copied, readonly)
				[4]: Cryo_upvr (copied, readonly)
				[5]: isUserInConversation_upvr (copied, readonly)
			]]
			local var25_upvr = arg1
			if not var25_upvr then
				var25_upvr = {}
				var25_upvr.participants = {}
			end
			any_useState_result2_upvr(Cryo_upvr.List.filter(List_upvr.map(arg1_3.responseBody.PageItems, function(arg1_4) -- Line 35
				return tostring(arg1_4.id)
			end), function(arg1_5) -- Line 39
				--[[ Upvalues[2]:
					[1]: isUserInConversation_upvr (copied, readonly)
					[2]: var25_upvr (readonly)
				]]
				return not isUserInConversation_upvr(arg1_5, var25_upvr)
			end))
		end):catch(function(arg1_6) -- Line 43
			--[[ Upvalues[2]:
				[1]: Logger_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
			]]
			Logger_upvr:error("Error searching friends:", arg1_6)
			any_useState_result2_upvr({})
		end)
	end, tbl_2)
	React_upvr.useEffect(function() -- Line 62
		--[[ Upvalues[2]:
			[1]: clearTimeout_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
		]]
		return function() -- Line 63
			--[[ Upvalues[2]:
				[1]: clearTimeout_upvr (copied, readonly)
				[2]: any_useRef_result1_upvr (copied, readonly)
			]]
			clearTimeout_upvr(any_useRef_result1_upvr.current)
		end
	end, {})
	return any_useState_result1, React_upvr.useCallback(function(arg1_7) -- Line 49
		--[[ Upvalues[6]:
			[1]: clearTimeout_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: any_useRef_result1_upvr_2 (readonly)
			[4]: setTimeout_upvr (copied, readonly)
			[5]: any_useCallback_result1_upvr (readonly)
			[6]: any_useState_result2_upvr (readonly)
		]]
		clearTimeout_upvr(any_useRef_result1_upvr.current)
		any_useRef_result1_upvr_2.current = arg1_7
		any_useRef_result1_upvr.current = setTimeout_upvr(function() -- Line 52
			--[[ Upvalues[3]:
				[1]: arg1_7 (readonly)
				[2]: any_useCallback_result1_upvr (copied, readonly)
				[3]: any_useState_result2_upvr (copied, readonly)
			]]
			if arg1_7 ~= "" then
				any_useCallback_result1_upvr(arg1_7)
			else
				any_useState_result2_upvr({})
			end
		end, 250)
	end, {any_useCallback_result1_upvr}), any_useRef_result1_upvr_2.current
end