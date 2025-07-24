-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:14
-- Luau version 6, Types version 3
-- Time taken: 0.010117 seconds

local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")
local Parent = SocialLuaAnalytics.Parent
local Cryo_upvr = require(Parent.Cryo)
local Dash_upvr = require(Parent.Dash)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("SocialLuaAnalyticsTelemetryEnableCtx_1", false)
local FFlagTCAnalytics_upvr = require(Parent.SharedFlags).FFlagTCAnalytics
local function _(arg1) -- Line 16
	--[[ Upvalues[4]:
		[1]: Cryo_upvr (readonly)
		[2]: FFlagTCAnalytics_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: Dash_upvr (readonly)
	]]
	return function(arg1_2, arg2, arg3, arg4) -- Line 17
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: FFlagTCAnalytics_upvr (copied, readonly)
			[4]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[5]: Dash_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var9
		if var9 then
			var9 = nil
			if type(arg2) == "string" or type(arg2) == "number" then
				local tbl = {}
				tbl.value = arg2
				var9 = tbl
			else
				var9 = arg2
			end
			if FFlagTCAnalytics_upvr then
				if not var9 then
					-- KONSTANTWARNING: GOTO [37] #30
				end
			else
			end
			if not arg3 then
			end
			local any_join_result1_3 = Cryo_upvr.Dictionary.join(arg1_2, var9, {})
			if game_DefineFastFlag_result1_upvr and arg4 then
				any_join_result1_3.ctx = arg4
			end
			arg1:info(Dash_upvr.pretty(any_join_result1_3))
		end
	end
end
local SupportedTelemetryBackends_upvr = require(SocialLuaAnalytics.Analytics.Enums.SupportedTelemetryBackends)
return function(arg1) -- Line 40
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: FFlagTCAnalytics_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: Dash_upvr (readonly)
		[5]: SupportedTelemetryBackends_upvr (readonly)
	]]
	return function(arg1_3, arg2, arg3, arg4) -- Line 57
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: FFlagTCAnalytics_upvr (copied, readonly)
			[4]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[5]: Dash_upvr (copied, readonly)
			[6]: SupportedTelemetryBackends_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var55 = arg1.eventList[arg1_3]
		local loggerImpl_upvr_2 = arg1.loggerImpl
		local function var56(arg1_5, arg2_3, arg3_3, arg4_3) -- Line 17
			--[[ Upvalues[5]:
				[1]: loggerImpl_upvr_2 (readonly)
				[2]: Cryo_upvr (copied, readonly)
				[3]: FFlagTCAnalytics_upvr (copied, readonly)
				[4]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[5]: Dash_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var58
			if var58 then
				var58 = nil
				if type(arg2_3) == "string" or type(arg2_3) == "number" then
					local tbl_3 = {}
					tbl_3.value = arg2_3
					var58 = tbl_3
				else
					var58 = arg2_3
				end
				if FFlagTCAnalytics_upvr then
					if not var58 then
						-- KONSTANTWARNING: GOTO [37] #30
					end
				else
				end
				if not arg3_3 then
				end
				local any_join_result1 = Cryo_upvr.Dictionary.join(arg1_5, var58, {})
				if game_DefineFastFlag_result1_upvr and arg4_3 then
					any_join_result1.ctx = arg4_3
				end
				loggerImpl_upvr_2:info(Dash_upvr.pretty(any_join_result1))
			end
		end
		loggerImpl_upvr_2 = var55.backendsList
		for _, v in loggerImpl_upvr_2 do
			local incrementValue = v.incrementValue
			local var62 = incrementValue or 1
			local var63
			if var63 then
				incrementValue = v.overrideName
				var63 = arg2
				incrementValue = incrementValue(var63)
			else
				incrementValue = arg1_3
			end
			var63 = v.throttlingThousandths
			if not var63 then
				var63 = var55.throttlingThousandths
				if not var63 then
					var63 = arg1.eventList.defaults.throttlingThousandths
				end
			end
			local tbl_6 = {
				eventName = incrementValue;
				backends = {v.type};
				throttlingPercentage = math.clamp(var63, 0, 10000);
				lastUpdated = var55.lastUpdated;
				description = var55.description;
			}
			if not var55.links then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
			tbl_6.links = arg1.eventList.defaults.links
			if FFlagTCAnalytics_upvr and arg1.getInfoForAllEvents then
			end
			local var66
			if v.format then
				if v.dynamicCustomFields ~= nil then
					var66 = false
				else
					var66 = true
				end
				assert(var66, "Cannot use dynamicCustomFields with format")
				if v.staticCustomFields ~= nil then
					var66 = false
				else
					var66 = true
				end
				assert(var66, "Cannot use staticCustomFields with format")
				var66 = arg2
				local var67 = arg3
				if not var67 then
					var67 = {}
				end
				local formatted = v.format(var66, var67)
			else
				if v.dynamicCustomFields and arg2 then
					var66 = nil
					for i_2, v_2 in v.dynamicCustomFields, var66 do
						if arg2[i_2] then
							formatted[i_2] = v_2(arg2[i_2])
						end
					end
				end
				if v.staticCustomFields then
					var66 = Cryo_upvr.Dictionary
					var66 = formatted
				end
			end
			if v.type == SupportedTelemetryBackends_upvr.Points then
				i_2 = v.standardizedFields
				v_2 = var66.join(var66, v.staticCustomFields)
				arg1.telemetryImpl:logRobloxTelemetryEvent(tbl_6, i_2, v_2)
				i_2 = var66.join(var66, v.staticCustomFields)
				var56(tbl_6, v.standardizedFields, i_2)
			elseif v.type == SupportedTelemetryBackends_upvr.RobloxTelemetryStat then
				if not arg2 or not arg2.statValue then
					tbl_6.backends = {SupportedTelemetryBackends_upvr.RobloxTelemetryCounter}
					tbl_6.eventName = arg1_3.."MissingStatValue"
					i_2 = var62
					v_2 = var66.join(var66, v.staticCustomFields)
					arg1.telemetryImpl:logRobloxTelemetryCounter(tbl_6, i_2, v_2)
					i_2 = var66.join(var66, v.staticCustomFields)
					var56(tbl_6, var62, i_2)
					return
				end
				i_2 = arg2.statValue
				v_2 = var66.join(var66, v.staticCustomFields)
				arg1.telemetryImpl:logRobloxTelemetryStat(tbl_6, i_2, v_2)
				i_2 = var66.join(var66, v.staticCustomFields)
				var56(tbl_6, arg2.statValue, i_2)
			elseif v.type == SupportedTelemetryBackends_upvr.RobloxTelemetryCounter then
				arg1.telemetryImpl:logRobloxTelemetryCounter(tbl_6, var62, var66.join(var66, v.staticCustomFields))
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var56(tbl_6, var62, var66.join(var66, v.staticCustomFields))
			elseif v.type == SupportedTelemetryBackends_upvr.EventIngest then
				if game_DefineFastFlag_result1_upvr then
					local var70 = arg4
					if not var70 then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						var70 = var66.join(var66, v.staticCustomFields).eventContext
					end
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					arg1.telemetryImpl:logRobloxTelemetryEvent(tbl_6, v.standardizedFields, var66.join(var66, v.staticCustomFields), var70)
					if not arg4 then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					end
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var56(tbl_6, arg2, var66.join(var66, v.staticCustomFields), var66.join(var66, v.staticCustomFields).eventContext)
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					arg1.telemetryImpl:logRobloxTelemetryEvent(tbl_6, v.standardizedFields, var66.join(var66, v.staticCustomFields))
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var56(tbl_6, arg2, var66.join(var66, v.staticCustomFields))
				end
			end
		end
	end
end