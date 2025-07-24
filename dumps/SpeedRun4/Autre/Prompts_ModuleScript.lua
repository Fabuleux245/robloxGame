-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:03
-- Luau version 6, Types version 3
-- Time taken: 0.000828 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Cryo_upvr = require(Parent.Cryo)
return require(Parent.Rodux).createReducer({}, {
	[require(Parent_2.Actions.PromptDismissed).name] = function(arg1, arg2) -- Line 16
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.List.filter(arg1, function(arg1_2) -- Line 17
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			local var7
			if arg1_2.PromptId == arg2.promptId then
				var7 = false
			else
				var7 = true
			end
			return var7
		end)
	end;
	[require(Parent_2.Actions.PromptTriggered).name] = function(arg1, arg2) -- Line 22
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.List.join(arg1, {{
			PromptData = arg2.promptData;
			PromptType = arg2.promptType;
			PromptId = arg2.promptId;
		}})
	end;
})