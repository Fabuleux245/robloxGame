-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:05
-- Luau version 6, Types version 3
-- Time taken: 0.001867 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local Actions = ExpChat.Actions
return require(Parent.Rodux).createReducer({
	activated = false;
	results = {};
	selectedIndex = 1;
	autocompleteType = "none";
}, {
	[require(Actions.AutocompleteDropdownActivated).name] = function(arg1, arg2) -- Line 28
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		return Dictionary_upvr.join(arg1, {
			activated = arg2.activated;
		})
	end;
	[require(Actions.AutocompleteDropdownResultsChanged).name] = function(arg1, arg2) -- Line 31
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		return Dictionary_upvr.join(arg1, {
			results = arg2.results;
			selectedIndex = 1;
		})
	end;
	[require(Actions.AutocompleteDropdownSelectionChanged).name] = function(arg1, arg2) -- Line 40
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		return Dictionary_upvr.join(arg1, {
			selectedIndex = arg2.selectedIndex;
		})
	end;
	[require(Actions.AutocompleteDropdownTypeChanged).name] = function(arg1, arg2) -- Line 46
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		if arg2.autocompleteType ~= arg1.autocompleteType then
			return Dictionary_upvr.join(arg1, {
				autocompleteType = arg2.autocompleteType;
				activated = false;
				results = {};
				selectedIndex = 1;
			})
		end
		return arg1
	end;
	[require(Actions.AutocompleteDropdownDeactivated).name] = function(arg1, arg2) -- Line 57
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		return Dictionary_upvr.join(arg1, {
			autocompleteType = "none";
			activated = false;
			results = {};
			selectedIndex = 1;
		})
	end;
})