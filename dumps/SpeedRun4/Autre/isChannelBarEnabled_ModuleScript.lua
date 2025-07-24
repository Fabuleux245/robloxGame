-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:13
-- Luau version 6, Types version 3
-- Time taken: 0.002745 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local Actions = ExpChat.Actions
return require(Parent.Rodux).createReducer({
	_propertyEnabled = false;
	_coreGuiEnabled = true;
	_topBarVisibility = true;
	value = false;
}, {
	[require(Actions.ChannelTabsConfigurationEnabled).name] = function(arg1, arg2) -- Line 29
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local module = {
			_propertyEnabled = arg2.enabled;
		}
		local _topBarVisibility = arg1._topBarVisibility
		if _topBarVisibility then
			_topBarVisibility = arg1._coreGuiEnabled
			if _topBarVisibility then
				_topBarVisibility = arg2.enabled
			end
		end
		module.value = _topBarVisibility
		return Dictionary_upvr.join(arg1, module)
	end;
	[require(Actions.ChatTopBarButtonActivated).name] = function(arg1, arg2) -- Line 36
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local module_2 = {
			_topBarVisibility = arg2.isVisible;
		}
		local _propertyEnabled_2 = arg1._propertyEnabled
		if _propertyEnabled_2 then
			_propertyEnabled_2 = arg1._coreGuiEnabled
			if _propertyEnabled_2 then
				_propertyEnabled_2 = arg2.isVisible
			end
		end
		module_2.value = _propertyEnabled_2
		return Dictionary_upvr.join(arg1, module_2)
	end;
	[require(Actions.SetCoreGuiEnabledChanged).name] = function(arg1, arg2) -- Line 43
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local module_5 = {
			_coreGuiEnabled = arg2.enabled;
		}
		local _propertyEnabled_3 = arg1._propertyEnabled
		if _propertyEnabled_3 then
			_propertyEnabled_3 = arg1._topBarVisibility
			if _propertyEnabled_3 then
				_propertyEnabled_3 = arg2.enabled
			end
		end
		module_5.value = _propertyEnabled_3
		return Dictionary_upvr.join(arg1, module_5)
	end;
	[require(Parent.ExpChatShared).Actions.ClientAppLoaded.name] = function(arg1, arg2) -- Line 50
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local module_3 = {
			_coreGuiEnabled = arg2.isChatCoreGuiEnabled;
		}
		local _propertyEnabled = arg1._propertyEnabled
		if _propertyEnabled then
			_propertyEnabled = arg1._topBarVisibility
			if _propertyEnabled then
				_propertyEnabled = arg2.isChatCoreGuiEnabled
			end
		end
		module_3.value = _propertyEnabled
		return Dictionary_upvr.join(arg1, module_3)
	end;
})