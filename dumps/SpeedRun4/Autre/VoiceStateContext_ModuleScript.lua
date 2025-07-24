-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:06
-- Luau version 6, Types version 3
-- Time taken: 0.004260 seconds

local var1_upvr
local function INLINED() -- Internal function, doesn't exist in bytecode
	var1_upvr = Enum.VoiceChatState.Ended
	return var1_upvr
end
if not game:GetEngineFeature("VoiceChatSupported") or not INLINED() then
	var1_upvr = nil
end
local tbl_2_upvr = {
	voiceEnabled = false;
	voiceState = var1_upvr;
}
local React_upvr = require(game:GetService("CorePackages").Packages.React)
local any_createContext_result1_upvr = React_upvr.createContext(tbl_2_upvr)
local default_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.VoiceChat.VoiceChatServiceManager).default
return {
	Provider = function(arg1) -- Line 49
		--[[ Upvalues[5]:
			[1]: React_upvr (readonly)
			[2]: tbl_2_upvr (readonly)
			[3]: default_upvr (readonly)
			[4]: var1_upvr (readonly)
			[5]: any_createContext_result1_upvr (readonly)
		]]
		local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(tbl_2_upvr)
		local function updateVoiceState_upvr(arg1_2, arg2) -- Line 52, Named "updateVoiceState"
			--[[ Upvalues[2]:
				[1]: any_useState_result1_upvr (readonly)
				[2]: any_useState_result2_upvr (readonly)
			]]
			local voiceState_4 = any_useState_result1_upvr.voiceState
			if arg2 ~= voiceState_4 then
				if arg2 == Enum.VoiceChatState.Ended then
					voiceState_4 = false
				else
					voiceState_4 = true
				end
				local tbl_3 = {
					voiceEnabled = voiceState_4;
				}
				tbl_3.voiceState = arg2
				any_useState_result2_upvr(tbl_3)
			end
		end
		React_upvr.useEffect(function() -- Line 62
			--[[ Upvalues[5]:
				[1]: default_upvr (copied, readonly)
				[2]: any_useState_result1_upvr (readonly)
				[3]: any_useState_result2_upvr (readonly)
				[4]: updateVoiceState_upvr (readonly)
				[5]: var1_upvr (copied, readonly)
			]]
			local var12_upvw = true
			local var13_upvw
			if game:GetEngineFeature("VoiceChatSupported") then
				default_upvr:asyncInit():andThen(function() -- Line 67
					--[[ Upvalues[6]:
						[1]: var12_upvw (read and write)
						[2]: default_upvr (copied, readonly)
						[3]: any_useState_result1_upvr (copied, readonly)
						[4]: any_useState_result2_upvr (copied, readonly)
						[5]: var13_upvw (read and write)
						[6]: updateVoiceState_upvr (copied, readonly)
					]]
					if var12_upvw then
						default_upvr:SetupParticipantListeners()
						local any_getService_result1_2 = default_upvr:getService()
						if any_getService_result1_2 then
							local VoiceChatState_2 = any_getService_result1_2.VoiceChatState
							local voiceState_3 = any_useState_result1_upvr.voiceState
							if VoiceChatState_2 ~= voiceState_3 then
								if VoiceChatState_2 == Enum.VoiceChatState.Ended then
									voiceState_3 = false
								else
									voiceState_3 = true
								end
								any_useState_result2_upvr({
									voiceEnabled = voiceState_3;
									voiceState = VoiceChatState_2;
								})
							end
							var13_upvw = any_getService_result1_2.StateChanged:Connect(updateVoiceState_upvr)
						end
					end
				end):catch(function() -- Line 77
					--[[ Upvalues[3]:
						[1]: var1_upvr (copied, readonly)
						[2]: any_useState_result1_upvr (copied, readonly)
						[3]: any_useState_result2_upvr (copied, readonly)
					]]
					local var24 = var1_upvr
					local voiceState = any_useState_result1_upvr.voiceState
					if var24 ~= voiceState then
						if var24 == Enum.VoiceChatState.Ended then
							voiceState = false
						else
							voiceState = true
						end
						any_useState_result2_upvr({
							voiceEnabled = voiceState;
							voiceState = var24;
						})
					end
				end)
			end
			return function() -- Line 82
				--[[ Upvalues[2]:
					[1]: var12_upvw (read and write)
					[2]: var13_upvw (read and write)
				]]
				var12_upvw = false
				if var13_upvw then
					var13_upvw:Disconnect()
					var13_upvw = nil
				end
			end
		end, {})
		return React_upvr.createElement(any_createContext_result1_upvr.Provider, {
			value = any_useState_result1_upvr;
		}, arg1.children)
	end;
	Consumer = any_createContext_result1_upvr.Consumer;
	Context = any_createContext_result1_upvr;
	withVoiceState = function(arg1) -- Line 100, Named "withVoiceState"
		--[[ Upvalues[2]:
			[1]: React_upvr (readonly)
			[2]: any_createContext_result1_upvr (readonly)
		]]
		local module = {}
		module.render = arg1
		return React_upvr.createElement(any_createContext_result1_upvr.Consumer, module)
	end;
}