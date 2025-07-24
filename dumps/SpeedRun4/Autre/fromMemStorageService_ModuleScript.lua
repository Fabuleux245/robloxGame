-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:52
-- Luau version 6, Types version 3
-- Time taken: 0.004153 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FFlagLogFirstGuacRead", false)
local var2_upvw
if game_DefineFastFlag_result1_upvr then
	var2_upvw = require(game:GetService("CorePackages").Workspace.Packages.LoggingProtocol).default
end
local HttpService_upvr = game:GetService("HttpService")
local MemStorageService_upvr_2 = game:GetService("MemStorageService")
local Players_upvr = game:GetService("Players")
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("CacheReadParsePolicy", false)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("FFlagLogAllGuacRead", false)
return function(arg1) -- Line 16
	--[[ Upvalues[7]:
		[1]: HttpService_upvr (readonly)
		[2]: MemStorageService_upvr_2 (readonly)
		[3]: Players_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[5]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[6]: var2_upvw (read and write)
		[7]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local var9 = arg1
	if not var9 then
		var9 = {}
	end
	local var10 = var9
	var9 = var10.HttpService
	local var11 = var9
	if not var11 then
		var11 = HttpService_upvr
	end
	var10.HttpService = var11
	var11 = var10.MemStorageService
	local var12 = var11
	if not var12 then
		var12 = MemStorageService_upvr_2
	end
	var10.MemStorageService = var12
	var12 = var10.PlayersService
	local var13 = var12
	if not var13 then
		var13 = Players_upvr
	end
	var10.PlayersService = var13
	assert(var10.HttpService, "expected dependencies.HttpService")
	assert(var10.MemStorageService, "expected dependencies.MemStorageService")
	assert(var10.PlayersService, "expected dependencies.PlayersService")
	local PlayersService_upvr = var10.PlayersService
	local HttpService_upvr_2 = var10.HttpService
	local MemStorageService_upvr = var10.MemStorageService
	local var18_upvw = false
	return function(arg1_2) -- Line 31
		--[[ Upvalues[8]:
			[1]: PlayersService_upvr (readonly)
			[2]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
			[3]: HttpService_upvr_2 (readonly)
			[4]: MemStorageService_upvr (readonly)
			[5]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
			[6]: var2_upvw (copied, read and write)
			[7]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[8]: var18_upvw (read and write)
		]]
		assert(arg1_2, "expected behavior")
		local function _() -- Line 34, Named "getStoreKey"
			--[[ Upvalues[2]:
				[1]: PlayersService_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
			]]
			local LocalPlayer_4 = PlayersService_upvr.LocalPlayer
			local var20
			if LocalPlayer_4 and 0 < LocalPlayer_4.UserId then
				var20 = LocalPlayer_4.UserId
			end
			return "GUAC:"..var20..':'..arg1_2
		end
		local var21_upvw
		local var22_upvw
		local BindableEvent_upvr = Instance.new("BindableEvent")
		if game_DefineFastFlag_result1_upvr_3 then
			local var24_upvw
			local function localPlayerChanged() -- Line 54
				--[[ Upvalues[3]:
					[1]: var24_upvw (read and write)
					[2]: PlayersService_upvr (copied, readonly)
					[3]: var22_upvw (read and write)
				]]
				if var24_upvw then
					var24_upvw:Disconnect()
					var24_upvw = nil
				end
				if PlayersService_upvr.LocalPlayer then
					var24_upvw = PlayersService_upvr.LocalPlayer:GetPropertyChangedSignal("UserId"):Connect(function() -- Line 60
						--[[ Upvalues[1]:
							[1]: var22_upvw (copied, read and write)
						]]
						var22_upvw = nil
					end)
				end
				var22_upvw = nil
			end
			PlayersService_upvr:GetPropertyChangedSignal("LocalPlayer"):Connect(localPlayerChanged)
			localPlayerChanged()
		end
		local function onPolicyUpdated_upvr(arg1_3) -- Line 70, Named "onPolicyUpdated"
			--[[ Upvalues[4]:
				[1]: var21_upvw (read and write)
				[2]: HttpService_upvr_2 (copied, readonly)
				[3]: var22_upvw (read and write)
				[4]: BindableEvent_upvr (readonly)
			]]
			if arg1_3 ~= var21_upvw and arg1_3 then
				if 0 < #arg1_3 then
					local pcall_result1_3, pcall_result2_4 = pcall(function() -- Line 74
						--[[ Upvalues[2]:
							[1]: HttpService_upvr_2 (copied, readonly)
							[2]: arg1_3 (readonly)
						]]
						return HttpService_upvr_2:JSONDecode(arg1_3)
					end)
					if pcall_result1_3 then
						var21_upvw = arg1_3
						var22_upvw = pcall_result2_4
						BindableEvent_upvr:Fire(pcall_result2_4)
					end
				end
			end
		end
		local module = {
			read = function() -- Line 88, Named "read"
				--[[ Upvalues[11]:
					[1]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
					[2]: var22_upvw (read and write)
					[3]: PlayersService_upvr (copied, readonly)
					[4]: arg1_2 (readonly)
					[5]: MemStorageService_upvr (copied, readonly)
					[6]: HttpService_upvr_2 (copied, readonly)
					[7]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
					[8]: var2_upvw (copied, read and write)
					[9]: game_DefineFastFlag_result1_upvr (copied, readonly)
					[10]: var18_upvw (copied, read and write)
					[11]: var21_upvw (read and write)
				]]
				if game_DefineFastFlag_result1_upvr_3 and var22_upvw then
					return var22_upvw
				end
				local LocalPlayer_3 = PlayersService_upvr.LocalPlayer
				local var41_upvr
				if LocalPlayer_3 and 0 < LocalPlayer_3.UserId then
					var41_upvr = LocalPlayer_3.UserId
				end
				var41_upvr = MemStorageService_upvr:GetItem("GUAC:"..var41_upvr..':'..arg1_2)
				if var41_upvr then
					if 0 < #var41_upvr then
						local pcall_result1, pcall_result2_2 = pcall(function() -- Line 95
							--[[ Upvalues[2]:
								[1]: HttpService_upvr_2 (copied, readonly)
								[2]: var41_upvr (readonly)
							]]
							return HttpService_upvr_2:JSONDecode(var41_upvr)
						end)
						if pcall_result1 then
							if game_DefineFastFlag_result1_upvr_2 then
								var2_upvw:logEvent("lua_policy_read_success")
							elseif game_DefineFastFlag_result1_upvr and not var18_upvw then
								var2_upvw:logEvent("lua_policy_read_success")
								var18_upvw = true
							end
							var22_upvw = pcall_result2_2
							var21_upvw = var41_upvr
							return pcall_result2_2
						end
					end
				end
				return nil
			end;
		}
		local var45_upvw
		local var46_upvw
		function module.onPolicyChanged(arg1_4) -- Line 117
			--[[ Upvalues[8]:
				[1]: PlayersService_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: BindableEvent_upvr (readonly)
				[4]: var45_upvw (read and write)
				[5]: var46_upvw (read and write)
				[6]: var22_upvw (read and write)
				[7]: MemStorageService_upvr (copied, readonly)
				[8]: onPolicyUpdated_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local LocalPlayer = PlayersService_upvr.LocalPlayer
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [10] 8. Error Block 3 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [10] 8. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [12] 9. Error Block 4 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [12] 9. Error Block 4 end (CF ANALYSIS FAILED)
		end
		return module
	end
end