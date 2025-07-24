-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:04
-- Luau version 6, Types version 3
-- Time taken: 0.003840 seconds

local module_3_upvr = {
	FilterAdsByExternalLinks = function(arg1, arg2, arg3) -- Line 6, Named "FilterAdsByExternalLinks"
		-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
		local ipairs_result1_7, ipairs_result2, ipairs_result3 = ipairs(arg2)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [8.8]
		local external_link_references = nil.external_link_references
		if not external_link_references then
			external_link_references = {}
		end
		local ipairs_result1_2, ipairs_result2_5, ipairs_result3_6 = ipairs(external_link_references)
		-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [28] 22. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [28] 22. Error Block 7 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 14. Error Block 17 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [28.16]
		if not nil then
			if true then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert({}, nil)
			end
			-- KONSTANTWARNING: GOTO [7] #6
		end
		-- KONSTANTERROR: [18] 14. Error Block 17 end (CF ANALYSIS FAILED)
	end;
	FilterAdsByPlayerId = function(arg1, arg2, arg3) -- Line 30, Named "FilterAdsByPlayerId"
		for _, v in ipairs(arg2) do
			if arg1:AdTargetsDemographic(v, "player_id", arg3) then
				table.insert({}, v)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end;
}
function module_3_upvr.FilterAdsByPlayerTargeting(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 42
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local module = {}
	module.country_code = arg3
	module.player_locale_id = arg4
	module.player_membership_type = arg5
	module.player_device = arg6
	module.player_gender = arg7
	module.are_ads_allowed = arg8
	return module_3_upvr:FilterAdsByTargeting(arg2, module)
end
function module_3_upvr.FilterAdsByGameTargeting(arg1, arg2, arg3, arg4) -- Line 57
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local module_2 = {}
	module_2.sdk_version = arg3
	module_2.ad_unit = arg4
	return module_3_upvr:FilterAdsByTargeting(arg2, module_2)
end
function module_3_upvr.FilterAdsByTargeting(arg1, arg2, arg3) -- Line 66
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _, _, _ = ipairs(arg2)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 2 start (CF ANALYSIS FAILED)
	local _, _, _ = pairs(arg3)
	-- KONSTANTERROR: [7] 6. Error Block 2 end (CF ANALYSIS FAILED)
end
local FilterUtils_upvr = require(script.Parent.FilterUtils)
function module_3_upvr.AdTargetsDemographic(arg1, arg2, arg3, arg4) -- Line 87
	--[[ Upvalues[1]:
		[1]: FilterUtils_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var23 = arg2[tostring(arg3.."_allowlist")]
	if not var23 then
		var23 = {}
	end
	if not arg2[tostring(arg3.."_blocklist")] then
	end
	if #var23 == 0 or FilterUtils_upvr.Within(arg4, var23) then
		if not FilterUtils_upvr.Within(arg4, {}) then
			return true
		end
	end
	return false
end
function module_3_upvr.FilterAdsByFreqCap(arg1, arg2, arg3) -- Line 101
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1_5, ipairs_result2_6, ipairs_result3_2 = ipairs(arg2)
	local var27
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [42] 30. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [42] 30. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [42.11]
	if nil == 0 then
	end
	if var27 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [42.2147483650]
		if nil < var27 then
			-- KONSTANTWARNING: GOTO [42] #30
		end
	else
	end
	-- KONSTANTERROR: [7] 6. Error Block 15 end (CF ANALYSIS FAILED)
end
function module_3_upvr.FilterAdsByBlocklist(arg1, arg2, arg3) -- Line 126
	for _, v_2 in ipairs(arg2) do
		if not arg1.FilterUtils.PythonInOperator(v_2.ad_url, arg3) then
			table.insert({}, v_2)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_3_upvr.FilterAdsByAdFormat(arg1, arg2, arg3) -- Line 140
	for _, v_3 in ipairs(arg2) do
		local ad_format = v_3.ad_format
		if not ad_format then
			if v_3.gif_ad then
				ad_format = "gif"
			else
				ad_format = "static"
			end
		end
		if arg1.FilterUtils.PythonInOperator(ad_format, arg3) then
			table.insert({}, v_3)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_3_upvr.FilterAdsBySize2D(arg1, arg2, arg3) -- Line 162
	for _, v_4 in ipairs(arg2) do
		if v_4.ad_height_over_width_ratio == arg3 then
			table.insert({}, v_4)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_3_upvr.FilterAdsBySize3D(arg1, arg2, arg3, arg4, arg5) -- Line 176
	for _, v_5 in ipairs(arg2) do
		if v_5.ad_box_width_min <= arg3 and v_5.ad_box_height_min <= arg4 and v_5.ad_box_depth_min <= arg5 then
			table.insert({}, v_5)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_3_upvr.FilterAdsBySizePortal(arg1, arg2, arg3, arg4, arg5) -- Line 192
	for _, v_6 in ipairs(arg2) do
		if Vector3.new(24, 12.5, 7).X <= arg3 and Vector3.new(24, 12.5, 7).Y <= arg4 and Vector3.new(24, 12.5, 7).Z <= arg5 then
			table.insert({}, v_6)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
return module_3_upvr