-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:01
-- Luau version 6, Types version 3
-- Time taken: 0.003698 seconds

local Parent = script.Parent.Parent.Parent
local SocialLuaAnalytics = require(Parent.SocialLuaAnalytics)
local ChatEntryPointNames_upvr = require(Parent.SocialCommon).Enums.ChatEntryPointNames
local Logger_upvr = require(script.Parent.Logger)
local GetFFlagLuaAppEnableSquadPage_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("AppChatAnalyticsPlaySessionId", false)
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatFixInfiniteRenderLoop", false)
local React_upvr = require(Parent.React)
local AnalyticsFactory_upvr = SocialLuaAnalytics.Analytics.AnalyticsFactory
local EventStreamActionList_upvr = require(script.Parent.EventStreamActionList)
local DiagActionList_upvr = require(script.Parent.DiagActionList)
local DefaultAnalyticsService_upvr = SocialLuaAnalytics.Analytics.DefaultAnalyticsService
local Cryo_upvr = require(Parent.Cryo)
local RoactChatAnalyticsContext_upvr = require(script.Parent.RoactChatAnalyticsContext)
return function(arg1) -- Line 34
	--[[ Upvalues[14]:
		[1]: ChatEntryPointNames_upvr (readonly)
		[2]: Logger_upvr (readonly)
		[3]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
		[4]: useSelector_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[6]: RbxAnalyticsService_upvr (readonly)
		[7]: game_DefineFastFlag_result1_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: AnalyticsFactory_upvr (readonly)
		[10]: EventStreamActionList_upvr (readonly)
		[11]: DiagActionList_upvr (readonly)
		[12]: DefaultAnalyticsService_upvr (readonly)
		[13]: Cryo_upvr (readonly)
		[14]: RoactChatAnalyticsContext_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	local entryPoint = arg1.entryPoint
	local var20_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var20_upvr = ChatEntryPointNames_upvr[entryPoint]
		return var20_upvr
	end
	if not entryPoint or not INLINED() then
		var20_upvr = Logger_upvr:warning
		var20_upvr("entryPoint="..tostring(entryPoint).." is not a reigstered value.")
		var20_upvr = ChatEntryPointNames_upvr
	end
	if GetFFlagLuaAppEnableSquadPage_upvr() then
		var20_upvr = useSelector_upvr
		var20_upvr = var20_upvr(function(arg1_2) -- Line 43
			local var23
			if var23 then
				var23 = arg1_2.Squad.Squad
				if var23 then
					var23 = arg1_2.Squad.Squad.currentSquad
				end
			end
			if var23 and var23.squadId then
				return var23.squadId
			end
			return nil
		end)
	else
		var20_upvr = nil
	end
	if game_DefineFastFlag_result1_upvr_2 then
		-- KONSTANTWARNING: GOTO [38] #34
	end
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 33. Error Block 35 start (CF ANALYSIS FAILED)
	local var24_upvr
	local var25
	if game_DefineFastFlag_result1_upvr then
		local Unknown_upvw = var20_upvr.Unknown
		local function _() -- Line 53
			--[[ Upvalues[10]:
				[1]: AnalyticsFactory_upvr (copied, readonly)
				[2]: EventStreamActionList_upvr (copied, readonly)
				[3]: DiagActionList_upvr (copied, readonly)
				[4]: DefaultAnalyticsService_upvr (copied, readonly)
				[5]: GetFFlagLuaAppEnableSquadPage_upvr (copied, readonly)
				[6]: var20_upvr (readonly)
				[7]: Unknown_upvw (read and write)
				[8]: arg1 (readonly)
				[9]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
				[10]: var24_upvr (readonly)
			]]
			local module = {
				eventLists = {
					EventStream = EventStreamActionList_upvr;
					Diag = DiagActionList_upvr;
				};
			}
			local tbl = {
				EventStream = DefaultAnalyticsService_upvr.EventStream;
			}
			local Diag = DefaultAnalyticsService_upvr.Diag
			tbl.Diag = Diag
			module.analyticsImpl = tbl
			local tbl_3 = {}
			if GetFFlagLuaAppEnableSquadPage_upvr() then
				Diag = var20_upvr
			else
				Diag = nil
			end
			tbl_3.squadId = Diag
			Diag = Unknown_upvw
			tbl_3.entryPoint = Diag
			Diag = true
			tbl_3.channelsApiEnabled = Diag
			Diag = arg1.unfilteredThreadsEligibility
			tbl_3.unfilteredThreadsEligibility = Diag
			if game_DefineFastFlag_result1_upvr_2 then
				Diag = var24_upvr
			else
				Diag = nil
			end
			tbl_3.playSessionId = Diag
			module.staticInfoForAllEvents = tbl_3
			return AnalyticsFactory_upvr.setUpAnalyticsFactory(module)()
		end
		local tbl_2 = {var20_upvr, Unknown_upvw, arg1.unfilteredThreadsEligibility, var24_upvr}
	else
		if GetFFlagLuaAppEnableSquadPage_upvr() then
		end
		local any_join_result1 = Cryo_upvr.Dictionary.join(Cryo_upvr.Dictionary.join(Cryo_upvr.Dictionary.join({}, {
			squadId = var20_upvr;
		}), {
			entryPoint = Unknown_upvw;
		}), {
			channelsApiEnabled = true;
			unfilteredThreadsEligibility = arg1.unfilteredThreadsEligibility;
		})
		if game_DefineFastFlag_result1_upvr_2 then
			any_join_result1 = Cryo_upvr.Dictionary.join(any_join_result1, {
				playSessionId = var24_upvr;
			})
		end
	end
	do
		return React_upvr.createElement(RoactChatAnalyticsContext_upvr.Provider, {
			value = AnalyticsFactory_upvr.setUpAnalyticsFactory({
				eventLists = {
					EventStream = EventStreamActionList_upvr;
					Diag = DiagActionList_upvr;
				};
				analyticsImpl = {
					EventStream = DefaultAnalyticsService_upvr.EventStream;
					Diag = DefaultAnalyticsService_upvr.Diag;
				};
				staticInfoForAllEvents = any_join_result1;
			})();
		}, arg1.children)
	end
	-- KONSTANTERROR: [37] 33. Error Block 35 end (CF ANALYSIS FAILED)
end