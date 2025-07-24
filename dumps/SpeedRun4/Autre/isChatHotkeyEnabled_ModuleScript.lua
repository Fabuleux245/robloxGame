-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:14
-- Luau version 6, Types version 3
-- Time taken: 0.001674 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local Actions = ExpChat.Actions
return require(Parent.Rodux).createReducer({
	_propertyEnabled = true;
	_coreGuiEnabled = true;
	_devTextBoxEnabled = false;
	value = true;
}, {
	[require(Actions.ChatInputBarConfigurationEnabled).name] = function(arg1, arg2) -- Line 28
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local _coreGuiEnabled = arg1._coreGuiEnabled
		if _coreGuiEnabled then
			_coreGuiEnabled = not arg1._devTextBoxEnabled
			if _coreGuiEnabled then
				_coreGuiEnabled = arg2.enabled
			end
		end
		return Dictionary_upvr.join(arg1, {
			_propertyEnabled = arg2.enabled;
			value = _coreGuiEnabled;
		})
	end;
	[require(Actions.SetCoreGuiEnabledChanged).name] = function(arg1, arg2) -- Line 37
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local _propertyEnabled = arg1._propertyEnabled
		if _propertyEnabled then
			_propertyEnabled = not arg1._devTextBoxEnabled
			if _propertyEnabled then
				_propertyEnabled = arg2.enabled
			end
		end
		return Dictionary_upvr.join(arg1, {
			_coreGuiEnabled = arg2.enabled;
			value = _propertyEnabled;
		})
	end;
	[require(Actions.DevTextBoxEnabledChanged).name] = function(arg1, arg2) -- Line 46
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local _coreGuiEnabled_2 = arg1._coreGuiEnabled
		if _coreGuiEnabled_2 then
			_coreGuiEnabled_2 = arg2.enabled
		end
		return Dictionary_upvr.join(arg1, {
			_devTextBoxEnabled = arg2.enabled;
			value = _coreGuiEnabled_2;
		})
	end;
	[require(Parent.ExpChatShared).Actions.ClientAppLoaded.name] = function(arg1, arg2) -- Line 55
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 3. Error Block 7 start (CF ANALYSIS FAILED)
		local _devTextBoxEnabled = arg1._devTextBoxEnabled
		if _devTextBoxEnabled then
			-- KONSTANTERROR: [6] 5. Error Block 3 start (CF ANALYSIS FAILED)
			_devTextBoxEnabled = arg2.isChatCoreGuiEnabled
			-- KONSTANTERROR: [6] 5. Error Block 3 end (CF ANALYSIS FAILED)
		end
		do
			return Dictionary_upvr.join(arg1, {
				_coreGuiEnabled = arg2.isChatCoreGuiEnabled;
				value = _devTextBoxEnabled;
			})
		end
		-- KONSTANTERROR: [3] 3. Error Block 7 end (CF ANALYSIS FAILED)
	end;
})