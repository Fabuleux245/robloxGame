-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:57
-- Luau version 6, Types version 3
-- Time taken: 0.003268 seconds

local Constants_upvr = require(script.Parent.Parent.Parent.ContactImporter.Common.Constants)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature(Constants_upvr.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)
return {
	addSeenCount = function(arg1, arg2, arg3) -- Line 9, Named "addSeenCount"
		--[[ Upvalues[2]:
			[1]: game_GetEngineFeature_result1_upvr (readonly)
			[2]: Constants_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if not game_GetEngineFeature_result1_upvr then
		else
			local pcall_result1, pcall_result2_2 = pcall(function() -- Line 13
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: Constants_upvr (copied, readonly)
				]]
				return arg2:GetItem(Constants_upvr.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT)
			end)
			if pcall_result1 then
				local var11
				if pcall_result2_2 == "" then
					var11 = arg3
				else
					var11 = false
					for i in string.gmatch(pcall_result2_2 or "", "([^,]+)") do
						local string_split_result1 = string.split(i, ':')
						local _1 = string_split_result1[1]
						local var17 = tonumber(string_split_result1[2]) or 0
						if _1 == arg3 then
							var11 = true
							var17 += 1
						end
						if var11..':'..'1' ~= "" then
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						else
						end
					end
					if not var11 then
						i = ':'
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					end
				end
				local var19_upvw = _1..':'..tostring(var17)..','..arg3..i..'1'
				pcall(function() -- Line 44
					--[[ Upvalues[3]:
						[1]: arg2 (readonly)
						[2]: Constants_upvr (copied, readonly)
						[3]: var19_upvw (read and write)
					]]
					arg2:SetItem(Constants_upvr.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT, var19_upvw)
					arg2:Flush()
				end)
			end
		end
	end;
	updateTimestamp = function(arg1, arg2, arg3, arg4) -- Line 51, Named "updateTimestamp"
		--[[ Upvalues[2]:
			[1]: game_GetEngineFeature_result1_upvr (readonly)
			[2]: Constants_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if not game_GetEngineFeature_result1_upvr then
		else
			local pcall_result1_2, pcall_result2 = pcall(function() -- Line 60
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: Constants_upvr (copied, readonly)
				]]
				return arg2:GetItem(Constants_upvr.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP)
			end)
			if pcall_result1_2 then
				local var27
				if pcall_result2 == "" then
					var27 = arg3
				else
					var27 = false
					for i_2 in string.gmatch(pcall_result2 or "", "([^,]+)") do
						local string_split_result1_2 = string.split(i_2, ':')
						local _1_2 = string_split_result1_2[1]
						local _2 = string_split_result1_2[2]
						if _1_2 == arg3 then
							_2 = tostring(arg4)
							var27 = true
						end
						if var27..':'..tostring(arg4) ~= "" then
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						else
						end
					end
					if not var27 then
						i_2 = ':'
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					end
				end
				local var35_upvw = _1_2..':'..tostring(_2)..','..arg3..i_2..tostring(arg4)
				pcall(function() -- Line 92
					--[[ Upvalues[3]:
						[1]: arg2 (readonly)
						[2]: Constants_upvr (copied, readonly)
						[3]: var35_upvw (read and write)
					]]
					arg2:SetItem(Constants_upvr.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP, var35_upvw)
					arg2:Flush()
				end)
			end
		end
	end;
}