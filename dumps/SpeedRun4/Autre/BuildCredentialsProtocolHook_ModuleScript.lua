-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:32
-- Luau version 6, Types version 3
-- Time taken: 0.001766 seconds

local GenericChallenges = script:FindFirstAncestor("GenericChallenges")
local Parent = GenericChallenges.Parent
local default_upvr = require(Parent.CredentialsProtocol).CredentialsProtocol.default
local ExecuteJavaScriptInWebView_upvr = require(GenericChallenges.Utils.ExecuteJavaScriptInWebView)
local GetFFlagLuaAppEnableCredentialsProtocol_upvr = require(Parent.CredentialsProtocol).Flags.GetFFlagLuaAppEnableCredentialsProtocol
local JavascriptHybrid_upvr = require(GenericChallenges.Types.JavascriptHybrid)
local GetFIntLuaAppCredentialsProtocolAvailableTimeout_upvr = require(Parent.CredentialsProtocol).Flags.GetFIntLuaAppCredentialsProtocolAvailableTimeout
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableGetCredentialsInCredentialsProtocolHook", false)
local GetFIntLuaAppCredentialsProtocolTimeout_upvr = require(Parent.CredentialsProtocol).Flags.GetFIntLuaAppCredentialsProtocolTimeout
local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 19
	--[[ Upvalues[8]:
		[1]: default_upvr (readonly)
		[2]: ExecuteJavaScriptInWebView_upvr (readonly)
		[3]: GetFFlagLuaAppEnableCredentialsProtocol_upvr (readonly)
		[4]: JavascriptHybrid_upvr (readonly)
		[5]: GetFIntLuaAppCredentialsProtocolAvailableTimeout_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr (readonly)
		[7]: GetFIntLuaAppCredentialsProtocolTimeout_upvr (readonly)
		[8]: HttpService_upvr (readonly)
	]]
	local var12_upvw
	if arg1 ~= nil and arg1.defaultExecuteJavaScriptInWebView ~= nil then
		var12_upvw = arg1.defaultExecuteJavaScriptInWebView
		local var13_upvw
	end
	if arg1 ~= nil and arg1.defaultCredentialsProtocol ~= nil then
		var13_upvw = arg1.defaultCredentialsProtocol
		local var14_upvw
	end
	if arg1 ~= nil and arg1.defaultCredentialsProtocolEnabled ~= nil then
		var14_upvw = arg1.defaultCredentialsProtocolEnabled
	end
	return function(arg1_2) -- Line 36
		--[[ Upvalues[9]:
			[1]: var14_upvw (read and write)
			[2]: JavascriptHybrid_upvr (copied, readonly)
			[3]: var13_upvw (read and write)
			[4]: default_upvr (copied, readonly)
			[5]: GetFIntLuaAppCredentialsProtocolAvailableTimeout_upvr (copied, readonly)
			[6]: var12_upvw (read and write)
			[7]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[8]: GetFIntLuaAppCredentialsProtocolTimeout_upvr (copied, readonly)
			[9]: HttpService_upvr (copied, readonly)
		]]
		if var14_upvw then
			if arg1_2.feature == JavascriptHybrid_upvr.Feature.CredentialsProtocolAvailable then
				var13_upvw:isAvailable(default_upvr.CredentialsTypes.FIDO2, GetFIntLuaAppCredentialsProtocolAvailableTimeout_upvr()):andThen(function(arg1_3) -- Line 44
					--[[ Upvalues[2]:
						[1]: var12_upvw (copied, read and write)
						[2]: arg1_2 (readonly)
					]]
					var12_upvw.Execute(arg1_2.data.callId, tostring(arg1_3.isAvailable or false))
				end):catch(function() -- Line 48
					--[[ Upvalues[2]:
						[1]: var12_upvw (copied, read and write)
						[2]: arg1_2 (readonly)
					]]
					var12_upvw.Execute(arg1_2.data.callId, "false")
				end)
			elseif game_DefineFastFlag_result1_upvr and arg1_2.feature == JavascriptHybrid_upvr.Feature.GetCredentials then
				var13_upvw:getCredentials(default_upvr.CredentialsTypes.FIDO2, arg1_2.data.authenticationOptionsJSON, GetFIntLuaAppCredentialsProtocolTimeout_upvr()):andThen(function(arg1_4) -- Line 61
					--[[ Upvalues[3]:
						[1]: var12_upvw (copied, read and write)
						[2]: arg1_2 (readonly)
						[3]: HttpService_upvr (copied, readonly)
					]]
					local data = arg1_2.data
					if arg1_4 then
						data = HttpService_upvr:JSONEncode(arg1_4)
					else
						data = ""
					end
					var12_upvw.Execute(data.callId, data)
				end):catch(function() -- Line 67
					--[[ Upvalues[2]:
						[1]: var12_upvw (copied, read and write)
						[2]: arg1_2 (readonly)
					]]
					var12_upvw.Execute(arg1_2.data.callId, "")
				end)
			end
		end
		return false
	end
end