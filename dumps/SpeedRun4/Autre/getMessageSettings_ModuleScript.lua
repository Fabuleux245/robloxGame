-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:14
-- Luau version 6, Types version 3
-- Time taken: 0.009209 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local function _(arg1) -- Line 8
	local var3 = true
	if arg1 ~= nil then
		if arg1 ~= "" then
			var3 = false
		else
			var3 = true
		end
	end
	return var3
end
local Config_upvr = require(ExpChat.Config)
local getFFlagEnableGradientForChatWindowMessage_upvr = require(ExpChat.Flags.getFFlagEnableGradientForChatWindowMessage)
return require(ExpChat.memoize)(function(arg1, arg2) -- Line 12
	--[[ Upvalues[2]:
		[1]: Config_upvr (readonly)
		[2]: getFFlagEnableGradientForChatWindowMessage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_2 = {
		text = arg1.text or "";
		prefixText = arg1.prefixText or "";
		translation = arg1.translation or "";
		useTranslation = arg1.useTranslation;
		bodyTextProperties = {};
		prefixTextProperties = {};
	}
	if arg2 then
		for i, v in pairs(Config_upvr.DefaultChatWindowMessagePropertiesInstanceSettings) do
			module_2.bodyTextProperties[i] = arg2[i]
			module_2.prefixTextProperties[i] = arg2[i]
		end
	end
	if getFFlagEnableGradientForChatWindowMessage_upvr() then
		local var92
		if arg1.chatWindowMessageProperties then
			local chatWindowMessageProperties_2 = arg1.chatWindowMessageProperties
			i = chatWindowMessageProperties_2.Text
			if i ~= nil then
				if i ~= "" then
				else
				end
			end
			if true then
				var92 = module_2.text
			else
				var92 = chatWindowMessageProperties_2.Text
			end
			module_2.text = var92
			i = chatWindowMessageProperties_2.PrefixText
			if i ~= nil then
				if i ~= "" then
				else
				end
			end
			if true then
				var92 = module_2.prefixText
			else
				var92 = chatWindowMessageProperties_2.PrefixText
			end
			module_2.prefixText = var92
			i = chatWindowMessageProperties_2.Translation
			if i ~= nil then
				if i ~= "" then
				else
				end
			end
			if true then
				var92 = module_2.translation
			else
				var92 = chatWindowMessageProperties_2.Translation
			end
			module_2.translation = var92
			var92 = pairs
			v = Config_upvr
			var92 = var92(v.DefaultChatWindowMessagePropertiesInstanceSettings)
			local var92_result1, var92_result2, var92_result3 = var92(v.DefaultChatWindowMessagePropertiesInstanceSettings)
			for i_2, v_2 in var92_result1, var92_result2, var92_result3 do
				module_2.bodyTextProperties[i_2] = chatWindowMessageProperties_2[i_2]
				module_2.prefixTextProperties[i_2] = chatWindowMessageProperties_2[i_2]
				local var97
			end
			var92_result1 = var97.PrefixTextProperties
			if var92_result1 then
				var92_result1 = var97.PrefixTextProperties
				i_2 = var92_result1.PrefixText
				var92_result3 = true
				if i_2 ~= nil then
					if i_2 ~= "" then
						var92_result3 = false
					else
						var92_result3 = true
					end
				end
				if var92_result3 then
				else
				end
				module_2.prefixText = var92_result1.PrefixText
				v_2 = Config_upvr
				var92_result3 = v_2.DefaultChatWindowMessagePropertiesInstanceSettings
				local pairs_result1, pairs_result2, pairs_result3_2 = pairs(var92_result3)
				for i_3, _ in pairs_result1, pairs_result2, pairs_result3_2 do
					module_2.prefixTextProperties[i_3] = var92_result1[i_3]
				end
				pairs_result3_2 = "UIGradient"
				local instance = var92_result1:FindFirstChildOfClass(pairs_result3_2)
				if instance then
					pairs_result2 = {}
					pairs_result3_2 = pairs
					i_3 = Config_upvr.DefaultChatWindowChildrenCustomizationProperties.UIGradient
					pairs_result3_2 = pairs_result3_2(i_3)
					local pairs_result3_2_result1, pairs_result3_2_result2, pairs_result3_2_result3 = pairs_result3_2(i_3)
					for i_4, _ in pairs_result3_2_result1, pairs_result3_2_result2, pairs_result3_2_result3 do
						pairs_result2[i_4] = instance[i_4]
					end
					pairs_result3_2_result1 = module_2.prefixTextProperties
					pairs_result3_2_result1.UIGradient = pairs_result2
				end
			end
		end
	end
	return module_2
end)