-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:13
-- Luau version 6, Types version 3
-- Time taken: 0.003454 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local tbl_upvr = {{
	name = require(Parent.RobloxAppEnums).AppPage.Chat;
}}
local FFlagEnableSquadDeeplinkWithChatId_upvr = require(Parent.SharedFlags).FFlagEnableSquadDeeplinkWithChatId
local getDeepValue2_upvr = require(AppChat.Utils.getDeepValue2)
local Thunks_upvr = require(Parent.NavigationRodux).Thunks
local NavigateIntoChat_upvr = require(AppChat.Actions.NavigateIntoChat)
local EnumScreens_upvr = require(AppChat.EnumScreens)
local NetworkingSquads_upvr = require(Parent.SquadsCore).Http.NetworkingSquads
return function(arg1, arg2) -- Line 24
	--[[ Upvalues[7]:
		[1]: FFlagEnableSquadDeeplinkWithChatId_upvr (readonly)
		[2]: getDeepValue2_upvr (readonly)
		[3]: Thunks_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: NavigateIntoChat_upvr (readonly)
		[6]: EnumScreens_upvr (readonly)
		[7]: NetworkingSquads_upvr (readonly)
	]]
	return function(arg1_2) -- Line 25
		--[[ Upvalues[9]:
			[1]: FFlagEnableSquadDeeplinkWithChatId_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: getDeepValue2_upvr (copied, readonly)
			[4]: Thunks_upvr (copied, readonly)
			[5]: tbl_upvr (copied, readonly)
			[6]: arg2 (readonly)
			[7]: NavigateIntoChat_upvr (copied, readonly)
			[8]: EnumScreens_upvr (copied, readonly)
			[9]: NetworkingSquads_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var17_upvr
		if FFlagEnableSquadDeeplinkWithChatId_upvr then
			local conversationId = arg1.conversationId
		else
		end
		var17_upvr = arg1_2:getState()
		var17_upvr = getDeepValue2_upvr(var17_upvr, "Squad.Squad.currentSquad")
		local var15 = var17_upvr
		var17_upvr = var15
		if var17_upvr then
			var17_upvr = var15.squadId
		end
		local var16_upvw = var17_upvr
		if FFlagEnableSquadDeeplinkWithChatId_upvr then
			local var18_upvw
			local var19_upvw
			function var17_upvr() -- Line 34
				--[[ Upvalues[9]:
					[1]: arg1_2 (readonly)
					[2]: Thunks_upvr (copied, readonly)
					[3]: tbl_upvr (copied, readonly)
					[4]: arg2 (copied, readonly)
					[5]: var18_upvw (read and write)
					[6]: var19_upvw (read and write)
					[7]: NavigateIntoChat_upvr (copied, readonly)
					[8]: EnumScreens_upvr (copied, readonly)
					[9]: var16_upvw (read and write)
				]]
				arg1_2:dispatch(Thunks_upvr.NavigateToRoute(tbl_upvr, arg2))
				if var18_upvw and var18_upvw ~= "" then
					if var19_upvw and var19_upvw ~= "" then
						local tbl_2 = {
							screen = EnumScreens_upvr.SquadLobby;
						}
						local tbl = {
							conversationId = var18_upvw;
						}
						local var22
						if var16_upvw and var16_upvw ~= var19_upvw then
							var22 = var19_upvw
						else
							var22 = nil
						end
						tbl.squadId = var22
						tbl_2.params = tbl
						arg1_2:dispatch(NavigateIntoChat_upvr(tbl_2))
						return
					end
					arg1_2:dispatch(NavigateIntoChat_upvr({
						screen = EnumScreens_upvr.ChatConversation;
						params = {
							conversationId = var18_upvw;
						};
					}))
				end
			end
		else
			var17_upvr = nil
		end
		if FFlagEnableSquadDeeplinkWithChatId_upvr then
			if arg1.partyId and arg1.partyId ~= "" then
				arg1_2:dispatch(NetworkingSquads_upvr.GetSquadFromSquadId.API({
					squadId = arg1.partyId;
				})):andThen(function(arg1_3) -- Line 62
					--[[ Upvalues[5]:
						[1]: getDeepValue2_upvr (copied, readonly)
						[2]: var19_upvw (read and write)
						[3]: arg1 (copied, readonly)
						[4]: var18_upvw (read and write)
						[5]: var17_upvr (readonly)
					]]
					if getDeepValue2_upvr(arg1_3, "responseBody.groupUp.parentChannelId") then
						var19_upvw = arg1.partyId
						var18_upvw = arg1_3.responseBody.groupUp.parentChannelId
					end
					var17_upvr()
				end):catch(function(arg1_4) -- Line 70
					--[[ Upvalues[1]:
						[1]: var17_upvr (readonly)
					]]
					var17_upvr()
				end)
			else
				var17_upvr()
			end
		else
			arg1_2:dispatch(NetworkingSquads_upvr.GetSquadFromSquadId.API({
				squadId = arg1.partyId;
			})):andThen(function(arg1_5) -- Line 79
				--[[ Upvalues[9]:
					[1]: getDeepValue2_upvr (copied, readonly)
					[2]: var16_upvw (read and write)
					[3]: arg1 (copied, readonly)
					[4]: arg1_2 (readonly)
					[5]: Thunks_upvr (copied, readonly)
					[6]: tbl_upvr (copied, readonly)
					[7]: arg2 (copied, readonly)
					[8]: NavigateIntoChat_upvr (copied, readonly)
					[9]: EnumScreens_upvr (copied, readonly)
				]]
				if getDeepValue2_upvr(arg1_5, "responseBody.groupUp.parentChannelId") then
					local tbl_3 = {
						conversationId = arg1_5.responseBody.groupUp.parentChannelId;
					}
					local var31
					if var16_upvw and var16_upvw ~= arg1.partyId then
						var31 = arg1.partyId
					else
						var31 = nil
					end
					tbl_3.squadId = var31
					var31 = arg1_2:dispatch
					var31(Thunks_upvr.NavigateToRoute(tbl_upvr, arg2))
					var31 = arg1_2
					var31 = var31:dispatch
					var31(NavigateIntoChat_upvr({
						screen = EnumScreens_upvr.SquadLobby;
						params = tbl_3;
					}))
				end
			end):catch(function(arg1_6) -- Line 94
			end)
		end
	end
end