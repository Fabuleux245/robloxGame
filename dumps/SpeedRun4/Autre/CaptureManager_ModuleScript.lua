-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:57
-- Luau version 6, Types version 3
-- Time taken: 0.001189 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Cryo_upvr = require(Parent.Cryo)
return require(Parent.Rodux).createReducer({
	IsOpen = false;
	SelectedCaptures = {};
}, {
	[require(Parent_2.Actions.CaptureManagerClosed).name] = function(arg1, arg2) -- Line 24
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			IsOpen = false;
			SelectedCaptures = {};
		})
	end;
	[require(Parent_2.Actions.CaptureManagerOpened).name] = function(arg1, arg2) -- Line 31
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			IsOpen = true;
		})
	end;
	[require(Parent_2.Actions.CapturesRetrieved).name] = function(arg1, arg2) -- Line 37
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		local module = {}
		local IsOpen = arg1.IsOpen
		if IsOpen then
			if 0 >= #arg2.captures then
				IsOpen = false
			else
				IsOpen = true
			end
		end
		module.IsOpen = IsOpen
		module.SelectedCaptures = {}
		return Cryo_upvr.Dictionary.join(arg1, module)
	end;
	[require(Parent_2.Actions.UpdateSelectedCaptures).name] = function(arg1, arg2) -- Line 44
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			SelectedCaptures = arg2.selectedCaptures;
		})
	end;
})