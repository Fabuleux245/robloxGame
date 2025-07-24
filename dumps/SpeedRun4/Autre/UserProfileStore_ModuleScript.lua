-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:16
-- Luau version 6, Types version 3
-- Time taken: 0.012286 seconds

local Parent_upvr = script:FindFirstAncestor("UserProfiles").Parent
local Lumberyak_upvr = require(Parent_upvr.Lumberyak)
local Signals = require(Parent_upvr.Signals)
local game_DefineFastString_result1_upvr = game:DefineFastString("UserProfileStoreMaxLoggingLevel", Lumberyak_upvr.Logger.Levels.Error)
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("UserProfileStoreHttpTimeout", 1500)
local UserProfileModel_upvr = require(script.Parent.UserProfileModel)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("UserProfileStoreBatchSize", 50)
local createSignal_upvr = Signals.createSignal
local game_DefineFastInt_result1_upvr = game:DefineFastInt("UserProfileStoreQueueProcessDelay", 1)
local module_2 = {}
local any_createComputed_result1_upvr = Signals.createComputed(function(arg1) -- Line 30
	--[[ Upvalues[8]:
		[1]: Parent_upvr (readonly)
		[2]: Lumberyak_upvr (readonly)
		[3]: game_DefineFastString_result1_upvr (readonly)
		[4]: game_DefineFastInt_result1_upvr_3 (readonly)
		[5]: UserProfileModel_upvr (readonly)
		[6]: game_DefineFastInt_result1_upvr_2 (readonly)
		[7]: createSignal_upvr (readonly)
		[8]: game_DefineFastInt_result1_upvr (readonly)
	]]
	local UrlBuilder = require(Parent_upvr.UrlBuilder)
	local any_new_result1_upvr = Lumberyak_upvr.Logger.new(nil, "UserProfileStore")
	any_new_result1_upvr:setContext({
		prefix = "[UserProfileStore] ";
	})
	any_new_result1_upvr:addSink({
		maxLevel = game_DefineFastString_result1_upvr;
		log = function(arg1_2, arg2, arg3) -- Line 48, Named "log"
		end;
	})
	local tbl_5_upvr = {
		USERNAME = "names.username";
		DISPLAY_NAME = "names.displayName";
		COMBINED_NAME = "names.combinedName";
		IN_EXPERIENCE_COMBINED_NAME = "names.inExperienceCombinedName";
		PLATFORM_NAME = "names.platformName";
		CONTACT_NAME = "names.contactName";
		ALIAS = "names.alias";
		PLATFORM_PROFILE_ID = "platformProfileId";
	}
	local tbl_6_upvr = {}
	local tbl_2_upvr = {}
	local tbl_3_upvw = {}
	local function _(arg1_3) -- Line 77, Named "getOrCreateByUserId"
		--[[ Upvalues[3]:
			[1]: tbl_6_upvr (readonly)
			[2]: any_new_result1_upvr (readonly)
			[3]: UserProfileModel_upvr (copied, readonly)
		]]
		local var20 = tbl_6_upvr[arg1_3]
		if var20 ~= nil then
			any_new_result1_upvr:trace("Found profile: {}", arg1_3)
			return var20
		end
		any_new_result1_upvr:trace("Creating profile: {}", arg1_3)
		local any_create_result1_3 = UserProfileModel_upvr.create(arg1_3)
		tbl_6_upvr[arg1_3] = any_create_result1_3
		return any_create_result1_3
	end
	local HttpService_upvr = game:GetService("HttpService")
	local var23_upvr = UrlBuilder.UrlBuilder.new({
		base = UrlBuilder.UrlBase.APIS;
		path = "user-profile-api/v1/user/profiles/get-profiles";
	})()
	local function performBatchFetch_upvr(arg1_4, arg2, arg3, arg4) -- Line 90, Named "performBatchFetch"
		--[[ Upvalues[9]:
			[1]: any_new_result1_upvr (readonly)
			[2]: tbl_2_upvr (readonly)
			[3]: game_DefineFastInt_result1_upvr_2 (copied, readonly)
			[4]: HttpService_upvr (readonly)
			[5]: var23_upvr (readonly)
			[6]: game_DefineFastInt_result1_upvr_3 (readonly)
			[7]: tbl_6_upvr (readonly)
			[8]: UserProfileModel_upvr (copied, readonly)
			[9]: performBatchFetch_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if #arg1_4 == 0 then
			any_new_result1_upvr:trace("No more ids to fetch. Setting result.")
			local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(arg3)
			for _, v in ipairs_result1, ipairs_result2, ipairs_result3 do
				local var51
				for i_2, v_2 in v.userIds, var51 do
					local var52 = tbl_2_upvr[arg2][v_2]
					if var52 then
						any_new_result1_upvr:trace("Found cached profile: {}", v_2)
						table.insert({}, var52)
					else
						any_new_result1_upvr:debug("Expected cached profile: {}", v_2)
					end
				end
				local tbl_4 = {}
				if arg4 then
					var51 = "success"
				else
					var51 = "failed"
				end
				tbl_4.status = var51
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_4.data = {}
				var51 = v.setResult
				var51(tbl_4)
				var51 = v.callback
				if var51 ~= nil then
					i_2 = tbl_4
					var51(i_2)
				end
			end
		else
			ipairs_result1 = {}
			local var54 = ipairs_result1
			if game_DefineFastInt_result1_upvr_2 < #arg1_4 then
				var54 = {}
				for i_7 = 1, game_DefineFastInt_result1_upvr_2 do
					table.insert(var54, arg1_4[i_7])
				end
				for i_8 = game_DefineFastInt_result1_upvr_2 + 1, #arg1_4 do
					table.insert({}, arg1_4[i_8])
					local var55_upvr
				end
			else
				var54 = arg1_4
			end
			local any_JSONEncode_result1_upvr = HttpService_upvr:JSONEncode({
				userIds = var54;
				fields = string.split(arg2, ',');
			})
			any_new_result1_upvr:debug("Fetching: {}", any_JSONEncode_result1_upvr)
			HttpService_upvr:RequestInternal({
				Url = var23_upvr;
				Method = "POST";
				Body = any_JSONEncode_result1_upvr;
				Timeout = game_DefineFastInt_result1_upvr_3;
				CachePolicy = Enum.HttpCachePolicy.None;
				Priority = 0;
				Headers = {
					["Content-Type"] = "application/json";
					Accept = "application/json";
				};
				RequestType = Enum.HttpRequestType.Default;
			}):Start(function(arg1_5, arg2_2) -- Line 160
				--[[ Upvalues[11]:
					[1]: HttpService_upvr (copied, readonly)
					[2]: any_new_result1_upvr (copied, readonly)
					[3]: any_JSONEncode_result1_upvr (readonly)
					[4]: tbl_2_upvr (copied, readonly)
					[5]: arg2 (readonly)
					[6]: tbl_6_upvr (copied, readonly)
					[7]: UserProfileModel_upvr (copied, readonly)
					[8]: performBatchFetch_upvr (copied, readonly)
					[9]: var55_upvr (readonly)
					[10]: arg3 (readonly)
					[11]: arg4 (readonly)
				]]
				if arg1_5 == true then
					local Body_2 = arg2_2.Body
					if Body_2 ~= nil then
						local any_JSONDecode_result1_2 = HttpService_upvr:JSONDecode(Body_2)
						if any_JSONDecode_result1_2 ~= nil then
							any_new_result1_upvr:trace("Fetched: {}\nresponse: {}", any_JSONEncode_result1_upvr, Body_2)
							local profileDetails = any_JSONDecode_result1_2.profileDetails
							if profileDetails ~= nil then
								for _, v_7 in ipairs(profileDetails) do
									local userId = v_7.userId
									local tostring_result1_2 = tostring(userId)
									if tbl_6_upvr[tostring_result1_2] ~= nil then
										any_new_result1_upvr:trace("Found profile: {}", tostring_result1_2)
										userId = tbl_6_upvr[tostring_result1_2]
									else
										any_new_result1_upvr:trace("Creating profile: {}", tostring_result1_2)
										local any_create_result1_2 = UserProfileModel_upvr.create(tostring_result1_2)
										tbl_6_upvr[tostring_result1_2] = any_create_result1_2
										userId = any_create_result1_2
									end
									if v_7 then
										any_new_result1_upvr:trace("Updating profile: {}", tostring_result1_2)
										UserProfileModel_upvr.update(userId, v_7)
									end
									tbl_2_upvr[arg2][tostring_result1_2] = userId
								end
								-- KONSTANTWARNING: GOTO [87] #69
							end
							-- KONSTANTWARNING: GOTO [87] #69
						end
						-- KONSTANTWARNING: GOTO [87] #69
					end
				else
					any_new_result1_upvr:error("Error fetching")
				end
				if arg1_5 == false then
				else
				end
				performBatchFetch_upvr(var55_upvr, arg2, arg3, arg4)
			end)
		end
	end
	local function processQueuedRequests_upvr() -- Line 190, Named "processQueuedRequests"
		--[[ Upvalues[4]:
			[1]: tbl_3_upvw (read and write)
			[2]: any_new_result1_upvr (readonly)
			[3]: tbl_2_upvr (readonly)
			[4]: performBatchFetch_upvr (readonly)
		]]
		for i_3, v_3 in pairs(tbl_3_upvw) do
			any_new_result1_upvr:trace("Processing requests ({}) for fields: {}", #v_3, i_3)
			local tbl_9 = {}
			for _, v_4 in ipairs(v_3) do
				for _, v_5 in ipairs(v_4.userIds) do
					if tbl_9[v_5] == nil then
						tbl_9[v_5] = v_5
						if tbl_2_upvr[i_3][v_5] == nil then
							table.insert({}, v_5)
						end
					end
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			performBatchFetch_upvr({}, i_3, table.clone(v_3), true)
		end
		tbl_3_upvw = {}
	end
	local var119_upvw = false
	local function fetchByUserIds_upvr(arg1_6, arg2, arg3) -- Line 212, Named "fetchByUserIds"
		--[[ Upvalues[9]:
			[1]: tbl_2_upvr (readonly)
			[2]: tbl_6_upvr (readonly)
			[3]: any_new_result1_upvr (readonly)
			[4]: UserProfileModel_upvr (copied, readonly)
			[5]: createSignal_upvr (copied, readonly)
			[6]: tbl_3_upvw (read and write)
			[7]: var119_upvw (read and write)
			[8]: game_DefineFastInt_result1_upvr (copied, readonly)
			[9]: processQueuedRequests_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		table.sort(arg2)
		local concatenated = table.concat(arg2, ',')
		local var129
		if var129 == nil then
			var129 = {}
			tbl_2_upvr[concatenated] = var129
		end
		local tbl_10 = {}
		for i_6, v_6 in arg1_6 do
			local var131 = var129[v_6]
			if var131 == nil and false == false then
			end
			local var132 = var131
			if not var132 then
				if tbl_6_upvr[v_6] ~= nil then
					any_new_result1_upvr:trace("Found profile: {}", v_6)
					var132 = tbl_6_upvr[v_6]
				else
					any_new_result1_upvr:trace("Creating profile: {}", v_6)
					local any_create_result1_4 = UserProfileModel_upvr.create(v_6)
					tbl_6_upvr[v_6] = any_create_result1_4
					var132 = any_create_result1_4
				end
			end
			table.insert(tbl_10, var132)
		end
		if true == false then
			any_new_result1_upvr:trace("All requested profiles are cached. Calling back early")
			local module = {
				status = "success";
				data = tbl_10;
			}
			if arg3 ~= nil then
				i_6 = module
				arg3(i_6)
			end
			return createSignal_upvr(module)
		end
		local tbl_7 = {
			status = "fetching";
			data = tbl_10;
		}
		local createSignal_upvr_result1, createSignal_upvr_result2 = createSignal_upvr(tbl_7)
		if tbl_3_upvw[concatenated] == nil then
			tbl_3_upvw[concatenated] = {}
		end
		local tbl = {}
		tbl.userIds = arg1_6
		tbl.getResult = createSignal_upvr_result1
		tbl.setResult = createSignal_upvr_result2
		tbl.callback = arg3
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		table.insert({}, tbl)
		if not var119_upvw then
			var119_upvw = true
			task.delay(game_DefineFastInt_result1_upvr, function() -- Line 274
				--[[ Upvalues[2]:
					[1]: processQueuedRequests_upvr (copied, readonly)
					[2]: var119_upvw (copied, read and write)
				]]
				processQueuedRequests_upvr()
				var119_upvw = false
			end)
		end
		if arg3 ~= nil then
			arg3(tbl_7)
		end
		return createSignal_upvr_result1
	end
	return {
		fetchNamesByUserIds = function(arg1_7, arg2) -- Line 285, Named "fetchNamesByUserIds"
			--[[ Upvalues[2]:
				[1]: tbl_5_upvr (readonly)
				[2]: fetchByUserIds_upvr (readonly)
			]]
			return fetchByUserIds_upvr(arg1_7, {tbl_5_upvr.COMBINED_NAME, tbl_5_upvr.DISPLAY_NAME, tbl_5_upvr.USERNAME, tbl_5_upvr.IN_EXPERIENCE_COMBINED_NAME, tbl_5_upvr.CONTACT_NAME, tbl_5_upvr.ALIAS, tbl_5_upvr.PLATFORM_NAME, tbl_5_upvr.PLATFORM_PROFILE_ID}, arg2)
		end;
	}
end)
function module_2.get() -- Line 308
	--[[ Upvalues[1]:
		[1]: any_createComputed_result1_upvr (readonly)
	]]
	return any_createComputed_result1_upvr(false)
end
return module_2