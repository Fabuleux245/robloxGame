-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:32
-- Luau version 6, Types version 3
-- Time taken: 0.004177 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Actions = ExpChat.Actions
local DefaultBubbleChatChildrenCustomizationProperties_upvr = require(ExpChat.Config).DefaultBubbleChatChildrenCustomizationProperties
local tbl_upvr = {"ImageLabel", "UIGradient", "UICorner", "UIPadding"}
local function getSettingsFromInstance_upvr(arg1) -- Line 17, Named "getSettingsFromInstance"
	--[[ Upvalues[1]:
		[1]: DefaultBubbleChatChildrenCustomizationProperties_upvr (readonly)
	]]
	for i, _ in pairs(DefaultBubbleChatChildrenCustomizationProperties_upvr[arg1.ClassName]) do
		if arg1[i] ~= nil then
			({})[i] = arg1[i]
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local BubbleChatChildSettingChanged_upvr = require(Actions.BubbleChatChildSettingChanged)
local function connectPropertyChangedSignalsToInstance_upvr(arg1, arg2) -- Line 31, Named "connectPropertyChangedSignalsToInstance"
	--[[ Upvalues[2]:
		[1]: DefaultBubbleChatChildrenCustomizationProperties_upvr (readonly)
		[2]: BubbleChatChildSettingChanged_upvr (readonly)
	]]
	for i_2_upvr, _ in pairs(DefaultBubbleChatChildrenCustomizationProperties_upvr[arg2.ClassName]) do
		if arg2[i_2_upvr] ~= nil then
			table.insert({}, arg2:GetPropertyChangedSignal(i_2_upvr):Connect(function() -- Line 37
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: BubbleChatChildSettingChanged_upvr (copied, readonly)
					[3]: arg2 (readonly)
					[4]: i_2_upvr (readonly)
				]]
				arg1:dispatch(BubbleChatChildSettingChanged_upvr(arg2.ClassName, i_2_upvr, arg2[i_2_upvr]))
			end))
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local function _(arg1) -- Line 47, Named "disconnectPropertyChangedSignalsToInstance"
	if arg1 then
		for _, v_3 in ipairs(arg1) do
			v_3:Disconnect()
		end
	end
end
local function _(arg1) -- Line 55, Named "isValidBubbleChatChild"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	for _, v_4 in ipairs(tbl_upvr) do
		if v_4 == arg1.ClassName then
			return true
		end
	end
	return false
end
local TextChatService_upvr = game:GetService("TextChatService")
local getSetUpBubbleChatConfigurationChildProperties_upvr = require(ExpChat.Flags.getSetUpBubbleChatConfigurationChildProperties)
local BubbleChatChildRemoved_upvr = require(Actions.BubbleChatChildRemoved)
local BubbleChatSettingsChanged_upvr = require(Actions.BubbleChatSettingsChanged)
return function(arg1) -- Line 65
	--[[ Upvalues[8]:
		[1]: TextChatService_upvr (readonly)
		[2]: getSetUpBubbleChatConfigurationChildProperties_upvr (readonly)
		[3]: DefaultBubbleChatChildrenCustomizationProperties_upvr (readonly)
		[4]: getSettingsFromInstance_upvr (readonly)
		[5]: connectPropertyChangedSignalsToInstance_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: BubbleChatChildRemoved_upvr (readonly)
		[8]: BubbleChatSettingsChanged_upvr (readonly)
	]]
	local class_BubbleChatConfiguration_upvr = TextChatService_upvr:FindFirstChildOfClass("BubbleChatConfiguration")
	local var37
	if class_BubbleChatConfiguration_upvr == nil or getSetUpBubbleChatConfigurationChildProperties_upvr() == false then
		return DefaultBubbleChatChildrenCustomizationProperties_upvr
	end
	local tbl_upvr_2 = {}
	if class_BubbleChatConfiguration_upvr == nil then
		var37 = false
	else
		var37 = true
	end
	assert(var37, "BubbleChatConfiguration cannot be nil.")
	var37 = class_BubbleChatConfiguration_upvr:FindFirstChildOfClass("UIGradient")
	for _, v_5 in ipairs({class_BubbleChatConfiguration_upvr:FindFirstChildOfClass("ImageLabel"), var37, class_BubbleChatConfiguration_upvr:FindFirstChildOfClass("UICorner"), class_BubbleChatConfiguration_upvr:FindFirstChildOfClass("UIPadding")}) do
		if v_5 then
			({})[v_5.ClassName] = getSettingsFromInstance_upvr(v_5)
			tbl_upvr_2[v_5.ClassName] = connectPropertyChangedSignalsToInstance_upvr(arg1, v_5)
		end
	end
	class_BubbleChatConfiguration_upvr.ChildRemoved:Connect(function(arg1_2) -- Line 95
		--[[ Upvalues[8]:
			[1]: tbl_upvr (copied, readonly)
			[2]: tbl_upvr_2 (readonly)
			[3]: arg1 (readonly)
			[4]: BubbleChatChildRemoved_upvr (copied, readonly)
			[5]: class_BubbleChatConfiguration_upvr (readonly)
			[6]: getSettingsFromInstance_upvr (copied, readonly)
			[7]: BubbleChatSettingsChanged_upvr (copied, readonly)
			[8]: connectPropertyChangedSignalsToInstance_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local ipairs_result1, ipairs_result2_3, ipairs_result3_5 = ipairs(tbl_upvr)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 9. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 9. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 22 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [11.6]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [11.2147483650]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [11.7]
		if nil == nil then
			-- KONSTANTWARNING: GOTO [14] #11
		end
		-- KONSTANTERROR: [5] 5. Error Block 22 end (CF ANALYSIS FAILED)
	end)
	class_BubbleChatConfiguration_upvr.ChildAdded:Connect(function(arg1_3) -- Line 112
		--[[ Upvalues[6]:
			[1]: tbl_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: getSettingsFromInstance_upvr (copied, readonly)
			[4]: BubbleChatSettingsChanged_upvr (copied, readonly)
			[5]: connectPropertyChangedSignalsToInstance_upvr (copied, readonly)
			[6]: tbl_upvr_2 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local ipairs_result1_3, ipairs_result2, ipairs_result3 = ipairs(tbl_upvr)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 9. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 9. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [11.6]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [11.2147483650]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [11.7]
		if nil == nil then
			-- KONSTANTWARNING: GOTO [14] #11
		end
		-- KONSTANTERROR: [5] 5. Error Block 12 end (CF ANALYSIS FAILED)
	end)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end