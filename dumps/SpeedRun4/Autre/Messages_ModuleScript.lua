-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:00
-- Luau version 6, Types version 3
-- Time taken: 0.001532 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return require(CorePackages.Packages.Rodux).createReducer({}, {
	[require(script.Parent.Parent.Actions.AddMessage).name] = function(arg1, arg2) -- Line 13
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.message.id] = arg2.message;
		})
	end;
	[require(script.Parent.Parent.Actions.RemoveMessage).name] = function(arg1, arg2) -- Line 19
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.message.id] = Cryo_upvr.None;
		})
	end;
	[require(script.Parent.Parent.Actions.SetMessageText).name] = function(arg1, arg2) -- Line 25
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		local var9 = arg1[arg2.messageId]
		if not var9 then
			return arg1
		end
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.messageId] = Cryo_upvr.Dictionary.join(var9, {
				text = arg2.newText;
			});
		})
	end;
})