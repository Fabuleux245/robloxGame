-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:29
-- Luau version 6, Types version 3
-- Time taken: 0.008369 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DebugEnableImpressionsVisualizer", false)
local tbl_upvr = {Color3.new(0.941176, 0.941176, 0.015686), Color3.new(0.890196, 0.058823, 0.058823), Color3.new(0.031372, 0.870588, 0.031372), Color3.new(0.866666, 0.039215, 0.647058), Color3.new(0.035294, 0.631372, 0.866666), Color3.new(0.882352, 0.556862, 0.035294), Color3.new(0.729411, 0.043137, 0.835294)}
local tbl_3_upvr = {
	None = "None";
	Highlight = "Highlight";
	FadeOut = "FadeOut";
}
local tbl_2_upvr = {
	BackgroundColor3 = Color3.new(1, 1, 1);
	BorderColor3 = Color3.new(1, 1, 1);
	BackgroundTransparency = 0;
	BorderMode = Enum.BorderMode.Outline;
	BorderSizePixel = 15;
	ZIndex = 100;
}
local tbl_4_upvr = {
	BackgroundTransparency = 0.65;
	BorderSizePixel = 8;
}
local module_upvr_2 = {}
module_upvr_2.__index = module_upvr_2
local CollectionService_upvr = game:GetService("CollectionService")
local Constants_upvr = require(script.Parent.Constants)
local function getTaggedInstances_upvr(arg1) -- Line 82, Named "getTaggedInstances"
	--[[ Upvalues[2]:
		[1]: CollectionService_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	for _, v in ipairs(CollectionService_upvr:GetTagged(arg1)) do
		local attribute = v:GetAttribute(Constants_upvr.ItemIndex)
		if attribute and v:IsA("GuiObject") then
			({})[attribute] = v
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local var15_upvw = 1
local RunService_upvr = game:GetService("RunService")
function module_upvr_2.new(arg1, arg2) -- Line 95
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: var15_upvw (read and write)
		[3]: module_upvr_2 (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local module_upvr = {}
	module_upvr.impressionsTag = arg1
	module_upvr.highlightedInstances = {}
	module_upvr.originalInstances = {}
	module_upvr.highlightColor = tbl_upvr[var15_upvw]
	local var19 = arg2
	if not var19 then
		function var19(arg1_2) -- Line 101
			return arg1_2
		end
	end
	module_upvr.customKeyMapper = var19
	setmetatable(module_upvr, module_upvr_2)
	if game_DefineFastFlag_result1_upvr then
		var15_upvw += 1
		if #tbl_upvr < var15_upvw then
			var15_upvw %= #tbl_upvr
		end
		if arg1 then
			local var21_upvw
			var21_upvw = RunService_upvr.RenderStepped:Connect(function(arg1_3) -- Line 115
				--[[ Upvalues[2]:
					[1]: module_upvr (readonly)
					[2]: var21_upvw (read and write)
				]]
				if module_upvr then
					module_upvr:_step(arg1_3)
				elseif var21_upvw then
					var21_upvw:Disconnect()
				end
			end)
			module_upvr.renderConnection = var21_upvw
		end
	end
	return module_upvr
end
function module_upvr_2.destroy(arg1) -- Line 131
	if arg1.renderConnection then
		arg1.renderConnection:Disconnect()
	end
end
function module_upvr_2._startHighlightState(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 137
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var38 = arg1.highlightedInstances[arg2]
	if var38 == nil then
		local tbl_5 = {}
		tbl_5.highlightState = arg3
		tbl_5.currentFields = {}
		arg1.highlightedInstances[arg2] = tbl_5
		var38 = arg1.highlightedInstances[arg2]
	else
		var38.highlightState = arg3
	end
	var38.totalDuration = arg4
	var38.duration = arg4
	var38.doLerp = arg6
	if arg6 then
		local tbl = {}
		for i_2, v_2 in pairs(arg5) do
			({})[i_2] = var38.currentFields[i_2]
			tbl[i_2] = v_2
			local var45
		end
		var38.startFields = var45
		var38.targetFields = tbl
	else
		var38.startFields = nil
		var38.targetFields = nil
		for i_3, v_3 in pairs(arg5) do
			i_2 = var38.currentFields
			i_2[i_3] = v_3
		end
	end
	arg1.highlightedInstances[arg2] = var38
end
function module_upvr_2._step(arg1, arg2) -- Line 172
	--[[ Upvalues[4]:
		[1]: tbl_3_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: getTaggedInstances_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	assert(arg1.impressionsTag, "impressionsTag is nil")
	for i_4, v_4 in pairs(arg1.highlightedInstances) do
		if v_4.doLerp and v_4.duration ~= nil and v_4.totalDuration ~= nil then
			assert(v_4.startFields, "startFields is nil")
			assert(v_4.targetFields, "targetFields is nil")
			if v_4.duration <= 0 then
				v_4.doLerp = nil
				v_4.duration = nil
				for i_5, v_5 in pairs(v_4.targetFields) do
					v_4.currentFields[i_5] = v_5
				end
			else
				i_5 = v_4.duration
				i_5 = 0
				v_5 = 1
				for i_6, v_6 in pairs(v_4.targetFields) do
					local var114 = v_4.startFields[i_6]
					v_4.currentFields[i_6] = var114 + (v_6 - var114) * math.clamp((v_4.totalDuration - i_5) / v_4.totalDuration, i_5, v_5)
					local var115
				end
			end
		end
		var115 = v_4.highlightState
		local var116
		if var115 == tbl_3_upvr.Highlight then
			if v_4.duration == nil then
			else
			end
			var115 = assert
			var115(true, "duration is nil")
			var115 = v_4.duration
			if var115 <= 0 then
				var115 = arg1:_startHighlightState
				var115(i_4, tbl_3_upvr.FadeOut, 2.5, tbl_4_upvr, true)
			end
		end
		var115 = v_4.duration
		if var115 then
			var115 = v_4.duration - arg2
			v_4.duration = var115
		end
	end
	local _
	for i_7, v_7 in pairs(getTaggedInstances_upvr(arg1.impressionsTag)) do
		if v_7 ~= nil then
			if arg1.originalInstances[v_7] == nil then
				arg1.originalInstances[v_7] = {}
				for i_8, _ in pairs(tbl_2_upvr) do
					arg1.originalInstances[v_7][i_8] = v_7[i_8]
				end
			end
			local any_customKeyMapper_result1 = arg1.customKeyMapper(i_7)
			if arg1.highlightedInstances[any_customKeyMapper_result1] == nil then
				assert(arg1.originalInstances[v_7], "self.originalInstances[instance] is nil")
				for i_9, v_9 in pairs(arg1.originalInstances[v_7]) do
					({
						highlightState = tbl_3_upvr.None;
						currentFields = {};
					}).currentFields[i_9] = v_9
					local var130
				end
				arg1.highlightedInstances[any_customKeyMapper_result1] = var130
			end
			if var130 == nil then
			else
			end
			assert(true, "stateData is nil")
			if var130.currentFields then
				for i_10, v_10 in pairs(var130.currentFields) do
					v_7[i_10] = v_10
				end
			end
		end
	end
end
local Cryo_upvr = require(script:FindFirstAncestor("Impressions").Parent.Cryo)
function module_upvr_2._highlightImpression(arg1, arg2) -- Line 260
	--[[ Upvalues[3]:
		[1]: tbl_3_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
	]]
	if arg1.highlightedInstances[arg2] ~= nil and arg1.highlightedInstances[arg2].highlightState ~= tbl_3_upvr.None then
	else
		arg1:_startHighlightState(arg2, tbl_3_upvr.Highlight, 1, Cryo_upvr.Dictionary.join(tbl_2_upvr, {
			BackgroundColor3 = arg1.highlightColor;
			BorderColor3 = arg1.highlightColor;
		}), false)
	end
end
function module_upvr_2._clearImpression(arg1, arg2) -- Line 275
	arg1.highlightedInstances[arg2] = nil
end
function module_upvr_2.onSendImpressions(arg1, arg2) -- Line 279
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	if not game_DefineFastFlag_result1_upvr then
	else
		if not arg1.impressionsTag or arg2 == nil or #arg2 <= 0 then return end
		for _, v_11 in ipairs(arg2) do
			arg1:_highlightImpression(arg1.customKeyMapper(v_11))
		end
	end
end
function module_upvr_2.onClearImpressions(arg1, arg2) -- Line 294
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	if not game_DefineFastFlag_result1_upvr then
	else
		if not arg1.impressionsTag or arg2 == nil or #arg2 <= 0 then return end
		for _, v_12 in ipairs(arg2) do
			arg1:_clearImpression(arg1.customKeyMapper(v_12))
		end
	end
end
function module_upvr_2.onClearAllImpressions(arg1) -- Line 309
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	if not game_DefineFastFlag_result1_upvr then
	else
		if not arg1.impressionsTag then return end
		for i_13, v_13 in pairs(arg1.originalInstances) do
			for i_14, v_14 in pairs(v_13) do
				i_13[i_14] = v_14
			end
		end
		arg1.highlightedInstances = {}
		arg1.originalInstances = {}
	end
end
function module_upvr_2.setCustomKeyMapper(arg1, arg2) -- Line 329
	local var157 = arg2
	if not var157 then
		function var157(arg1_4) -- Line 330
			return arg1_4
		end
	end
	arg1.customKeyMapper = var157
end
function module_upvr_2.setImpressionsTag(arg1, arg2) -- Line 335
	arg1.impressionsTag = arg2
end
return module_upvr_2