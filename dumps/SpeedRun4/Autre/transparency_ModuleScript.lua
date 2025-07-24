-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:15
-- Luau version 6, Types version 3
-- Time taken: 0.001835 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local Actions = ExpChat.Actions
local module_upvr = {
	textDurationUntilFadeout = 30;
	backgroundDurationUntilFadeout = 3.5;
	lastGeneralActivityTimestamp = 0;
	lastMessageActivityTimestamp = 0;
	isTextBoxFocused = false;
}
local function reset_upvr(arg1) -- Line 31, Named "reset"
	--[[ Upvalues[2]:
		[1]: Dictionary_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local os_clock_result1_2 = os.clock()
	return Dictionary_upvr.join(module_upvr, {
		isTextBoxFocused = arg1.isTextBoxFocused;
		lastGeneralActivityTimestamp = os_clock_result1_2;
		lastMessageActivityTimestamp = os_clock_result1_2;
	})
end
local function resetTextOnly_upvr(arg1) -- Line 41, Named "resetTextOnly"
	--[[ Upvalues[1]:
		[1]: Dictionary_upvr (readonly)
	]]
	return Dictionary_upvr.join(arg1, {
		isTextBoxFocused = arg1.isTextBoxFocused;
		lastMessageActivityTimestamp = os.clock();
	})
end
return require(Parent.Rodux).createReducer(module_upvr, {
	[require(Actions.ChatInputBarConfigurationEnabled).name] = function(arg1, arg2) -- Line 51
		--[[ Upvalues[1]:
			[1]: reset_upvr (readonly)
		]]
		if arg2.enabled then
			return reset_upvr(arg1)
		end
		return arg1
	end;
	[require(Actions.ChatTopBarButtonActivated).name] = function(arg1, arg2) -- Line 59
		--[[ Upvalues[1]:
			[1]: reset_upvr (readonly)
		]]
		if arg2.isVisible then
			return reset_upvr(arg1)
		end
		return arg1
	end;
	[require(Actions.SetCoreGuiEnabledChanged).name] = function(arg1, arg2) -- Line 67
		--[[ Upvalues[1]:
			[1]: reset_upvr (readonly)
		]]
		if arg2.enabled then
			return reset_upvr(arg1)
		end
		return arg1
	end;
	[require(Parent.ExpChatShared).Actions.ClientAppLoaded.name] = function(arg1, arg2) -- Line 75
		--[[ Upvalues[1]:
			[1]: reset_upvr (readonly)
		]]
		return reset_upvr(arg1)
	end;
	[require(ExpChat.Actions.UserInteraction).name] = function(arg1, arg2) -- Line 79
		--[[ Upvalues[3]:
			[1]: Dictionary_upvr (readonly)
			[2]: module_upvr (readonly)
			[3]: reset_upvr (readonly)
		]]
		if arg2.interaction == "focus" then
			local os_clock_result1_3 = os.clock()
			return Dictionary_upvr.join(Dictionary_upvr.join(module_upvr, {
				isTextBoxFocused = arg1.isTextBoxFocused;
				lastGeneralActivityTimestamp = os_clock_result1_3;
				lastMessageActivityTimestamp = os_clock_result1_3;
			}), {
				isTextBoxFocused = true;
			})
		end
		if arg2.interaction == "unfocus" then
			local os_clock_result1 = os.clock()
			return Dictionary_upvr.join(Dictionary_upvr.join(module_upvr, {
				isTextBoxFocused = arg1.isTextBoxFocused;
				lastGeneralActivityTimestamp = os_clock_result1;
				lastMessageActivityTimestamp = os_clock_result1;
			}), {
				isTextBoxFocused = false;
			})
		end
		return reset_upvr(arg1)
	end;
	[require(Actions.IncomingMessageReceived).name] = function(arg1, arg2) -- Line 93
		--[[ Upvalues[1]:
			[1]: resetTextOnly_upvr (readonly)
		]]
		return resetTextOnly_upvr(arg1)
	end;
})