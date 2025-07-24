-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:14
-- Luau version 6, Types version 3
-- Time taken: 0.003729 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local Actions = ExpChat.Actions
return require(Parent.Rodux).createReducer({
	_propertyEnabled = true;
	_coreGuiEnabled = true;
	_topBarVisibility = true;
	_devTextBoxEnabled = false;
	value = true;
}, {
	[require(Actions.ChatInputBarConfigurationEnabled).name] = function(arg1, arg2) -- Line 31
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local _topBarVisibility_2 = arg1._topBarVisibility
		if _topBarVisibility_2 then
			_topBarVisibility_2 = arg1._coreGuiEnabled
			if _topBarVisibility_2 then
				_topBarVisibility_2 = not arg1._devTextBoxEnabled
				if _topBarVisibility_2 then
					_topBarVisibility_2 = arg2.enabled
				end
			end
		end
		return Dictionary_upvr.join(arg1, {
			_propertyEnabled = arg2.enabled;
			value = _topBarVisibility_2;
		})
	end;
	[require(Actions.ChatTopBarButtonActivated).name] = function(arg1, arg2) -- Line 43
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local _propertyEnabled_4 = arg1._propertyEnabled
		if _propertyEnabled_4 then
			_propertyEnabled_4 = arg1._coreGuiEnabled
			if _propertyEnabled_4 then
				_propertyEnabled_4 = not arg1._devTextBoxEnabled
				if _propertyEnabled_4 then
					_propertyEnabled_4 = arg2.isVisible
				end
			end
		end
		return Dictionary_upvr.join(arg1, {
			_topBarVisibility = arg2.isVisible;
			value = _propertyEnabled_4;
		})
	end;
	[require(Actions.SetCoreGuiEnabledChanged).name] = function(arg1, arg2) -- Line 55
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local _propertyEnabled_2 = arg1._propertyEnabled
		if _propertyEnabled_2 then
			_propertyEnabled_2 = arg1._topBarVisibility
			if _propertyEnabled_2 then
				_propertyEnabled_2 = not arg1._devTextBoxEnabled
				if _propertyEnabled_2 then
					_propertyEnabled_2 = arg2.enabled
				end
			end
		end
		return Dictionary_upvr.join(arg1, {
			_coreGuiEnabled = arg2.enabled;
			value = _propertyEnabled_2;
		})
	end;
	[require(Actions.DevTextBoxEnabledChanged).name] = function(arg1, arg2) -- Line 67
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local module_2 = {
			_devTextBoxEnabled = arg2.enabled;
		}
		local _propertyEnabled_3 = arg1._propertyEnabled
		if _propertyEnabled_3 then
			_propertyEnabled_3 = arg1._topBarVisibility
			if _propertyEnabled_3 then
				_propertyEnabled_3 = arg1._coreGuiEnabled
				if _propertyEnabled_3 then
					_propertyEnabled_3 = not arg2.enabled
				end
			end
		end
		module_2.value = _propertyEnabled_3
		return Dictionary_upvr.join(arg1, module_2)
	end;
	[require(Parent.ExpChatShared).Actions.ClientAppLoaded.name] = function(arg1, arg2) -- Line 74
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local _propertyEnabled = arg1._propertyEnabled
		if _propertyEnabled then
			_propertyEnabled = arg1._topBarVisibility
			if _propertyEnabled then
				_propertyEnabled = not arg1._devTextBoxEnabled
				if _propertyEnabled then
					_propertyEnabled = arg2.isChatCoreGuiEnabled
				end
			end
		end
		return Dictionary_upvr.join(arg1, {
			_coreGuiEnabled = arg2.isChatCoreGuiEnabled;
			value = _propertyEnabled;
		})
	end;
})