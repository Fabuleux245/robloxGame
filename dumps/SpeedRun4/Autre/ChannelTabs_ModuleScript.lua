-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:08
-- Luau version 6, Types version 3
-- Time taken: 0.009313 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local ExpChatShared = require(Parent.ExpChatShared)
local any_new_result1_upvr = ExpChatShared.Logger:new("ExpChat/Reducers/"..script.Name)
local Actions = ExpChat.Actions
local getFFlagExpChatEnableChannelTabsUIFix_upvr = ExpChatShared.Flags.getFFlagExpChatEnableChannelTabsUIFix
local function insertTabAndReorder_upvr(arg1, arg2) -- Line 32, Named "insertTabAndReorder"
	--[[ Upvalues[1]:
		[1]: Dictionary_upvr (readonly)
	]]
	({})[arg2.Name] = arg2
	local var13
	for i, v in arg1 do
		local var14
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var14 = v.TabIndex
			return var14
		end
		if v.TabIndex >= arg2.TabIndex or not INLINED() then
			var14 = v.TabIndex + 1
		end
		var13 = Dictionary_upvr.join(var13, {
			[i] = Dictionary_upvr.set(arg1[i], "TabIndex", var14);
		})
	end
	return var13
end
local function removeTabAndReorder_upvr(arg1, arg2) -- Line 50, Named "removeTabAndReorder"
	--[[ Upvalues[1]:
		[1]: Dictionary_upvr (readonly)
	]]
	if arg2 == nil then
		return arg1
	end
	for i_2, v_2 in arg1 do
		local var20
		if i_2 ~= var20 then
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var20 = v_2.TabIndex
				return var20
			end
			if v_2.TabIndex >= arg2.TabIndex or not INLINED_2() then
				var20 = v_2.TabIndex - 1
			end
		end
	end
	return Dictionary_upvr.join({}, {
		[i_2] = Dictionary_upvr.set(arg1[i_2], "TabIndex", var20);
	})
end
local function onChannelRemoved_upvr(arg1, arg2) -- Line 74, Named "onChannelRemoved"
	--[[ Upvalues[2]:
		[1]: removeTabAndReorder_upvr (readonly)
		[2]: Dictionary_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var22 = arg1.allChannelTabs[arg2.Name]
	local var23
	if var22 == nil then
		return arg1
	end
	var23 = arg1.allChannelTabs
	local removeTabAndReorder_result1 = removeTabAndReorder_upvr(var23, var22)
	if var22.Name == arg1.selectedTabName then
		if removeTabAndReorder_result1.RBXGeneral then
			var23 = "RBXGeneral"
		else
			var23 = nil
		end
	else
		var23 = arg1.selectedTabName
	end
	local var25 = var23
	if var25 then
	end
	local module_2 = {}
	if removeTabAndReorder_result1[var23] then
		({})[var23] = Dictionary_upvr.join(removeTabAndReorder_result1[var23], {
			HasUnreadMessages = false;
		})
	else
	end
	module_2.allChannelTabs = removeTabAndReorder_result1
	module_2.selectedTabName = var23
	return module_2
end
return require(Parent.Rodux).createReducer({
	allChannelTabs = {};
	selectedTabName = nil;
}, {
	[require(Actions.LocalTextChannelParticipantAdded).name] = function(arg1, arg2) -- Line 99
		--[[ Upvalues[3]:
			[1]: any_new_result1_upvr (readonly)
			[2]: Dictionary_upvr (readonly)
			[3]: insertTabAndReorder_upvr (readonly)
		]]
		local Name_2 = arg2.textChannel.Name
		any_new_result1_upvr:trace("LocalTextChannelParticipantAdded dispatched: {}", Name_2)
		local var32
		if arg1.allChannelTabs[Name_2] ~= nil or Name_2 == "RBXSystem" then
			return arg1
		end
		local tbl_3 = {
			Name = Name_2;
		}
		var32 = false
		tbl_3.HasUnreadMessages = var32
		if arg1.allChannelTabs.RBXGeneral ~= nil and Name_2 ~= "RBXGeneral" then
			var32 = 2
		else
			var32 = 1
		end
		tbl_3.TabIndex = var32
		var32 = Dictionary_upvr.join
		var32 = var32(arg1, {
			allChannelTabs = insertTabAndReorder_upvr(arg1.allChannelTabs, tbl_3);
		})
		return var32
	end;
	[ExpChatShared.Actions.LocalTextChannelParticipantRemoved.name] = function(arg1, arg2) -- Line 119
		--[[ Upvalues[3]:
			[1]: any_new_result1_upvr (readonly)
			[2]: getFFlagExpChatEnableChannelTabsUIFix_upvr (readonly)
			[3]: onChannelRemoved_upvr (readonly)
		]]
		any_new_result1_upvr:trace("LocalTextChannelParticipantRemoved dispatched: {}", arg2.textChannel.Name)
		if getFFlagExpChatEnableChannelTabsUIFix_upvr() then
			return onChannelRemoved_upvr(arg1, arg2.textChannel)
		end
		return arg1
	end;
	[ExpChatShared.Actions.TextChannelRemoved.name] = function(arg1, arg2) -- Line 132
		--[[ Upvalues[5]:
			[1]: any_new_result1_upvr (readonly)
			[2]: getFFlagExpChatEnableChannelTabsUIFix_upvr (readonly)
			[3]: onChannelRemoved_upvr (readonly)
			[4]: Dictionary_upvr (readonly)
			[5]: removeTabAndReorder_upvr (readonly)
		]]
		any_new_result1_upvr:trace("TextChannelRemoved dispatched: {}", arg2.textChannel.Name)
		if getFFlagExpChatEnableChannelTabsUIFix_upvr() then
			return onChannelRemoved_upvr(arg1, arg2.textChannel)
		end
		local var37 = arg1.allChannelTabs[arg2.textChannel.Name]
		if var37 == nil then
			return arg1
		end
		return Dictionary_upvr.join(arg1, {
			allChannelTabs = removeTabAndReorder_upvr(arg1.allChannelTabs, var37);
		})
	end;
	[ExpChatShared.Actions.TargetTextChannelPropertyChanged.name] = function(arg1, arg2) -- Line 149
		--[[ Upvalues[4]:
			[1]: any_new_result1_upvr (readonly)
			[2]: Dictionary_upvr (readonly)
			[3]: insertTabAndReorder_upvr (readonly)
			[4]: removeTabAndReorder_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		any_new_result1_upvr:trace("TargetTextChannelPropertyChanged dispatched")
		local var47
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
		local allChannelTabs = arg1.allChannelTabs
		var47 = arg2.textChannel
		local var49 = allChannelTabs[var47.Name]
		-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [42] 28. Error Block 17 start (CF ANALYSIS FAILED)
		var47 = Dictionary_upvr
		var47 = var49
		var47 = Dictionary_upvr.join
		var47 = var47(arg1, {
			allChannelTabs = insertTabAndReorder_upvr(removeTabAndReorder_upvr(arg1.allChannelTabs, var49), var47.join(var47, {
				HasUnreadMessages = false;
				TabIndex = allChannelTabs;
			}));
			selectedTabName = var49.Name;
		})
		do
			return var47
		end
		-- KONSTANTERROR: [42] 28. Error Block 17 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [74] 52. Error Block 22 start (CF ANALYSIS FAILED)
		local module_3 = {}
		if arg2.textChannel then
			var47 = arg2.textChannel.Name
		else
			var47 = nil
		end
		module_3.selectedTabName = var47
		do
			return Dictionary_upvr.join(arg1, module_3)
		end
		-- KONSTANTERROR: [74] 52. Error Block 22 end (CF ANALYSIS FAILED)
	end;
	[require(Actions.IncomingMessageReceived).name] = function(arg1, arg2) -- Line 182
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvr (readonly)
			[2]: Dictionary_upvr (readonly)
		]]
		any_new_result1_upvr:trace("IncomingMessageReceived dispatched")
		local var59
		if arg2.textChatMessage.TextChannel then
			var59 = arg2.textChatMessage.TextChannel.Name
			if arg2.textChatMessage.TextChannel.Name == "RBXSystem" then
				var59 = "RBXGeneral"
			end
		end
		local var60 = arg1.allChannelTabs[var59]
		if var60 == nil then
			return arg1
		end
		if arg2.isSenderLocalPlayer or var60.Name == arg1.selectedTabName then
			return arg1
		end
		return Dictionary_upvr.join(arg1, {
			allChannelTabs = Dictionary_upvr.join(arg1.allChannelTabs, {
				[var60.Name] = Dictionary_upvr.join(var60, {
					HasUnreadMessages = true;
				});
			});
		})
	end;
})