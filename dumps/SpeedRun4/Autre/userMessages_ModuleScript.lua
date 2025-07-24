-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:00
-- Luau version 6, Types version 3
-- Time taken: 0.002458 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return require(CorePackages.Packages.Rodux).createReducer({}, {
	[require(script.Parent.Parent.Actions.AddMessage).name] = function(arg1, arg2) -- Line 18
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		local var5 = arg1[arg2.message.userId]
		if not var5 then
			var5 = {}
		end
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.message.userId] = Cryo_upvr.List.join(var5, {arg2.message.id});
		})
	end;
	[require(script.Parent.Parent.Actions.RemoveMessage).name] = function(arg1, arg2) -- Line 26
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		local var9 = arg1[arg2.message.userId]
		if var9 then
			if #var9 == 1 and var9[1] == arg2.message.id then
				return Cryo_upvr.Dictionary.join(arg1, {
					[arg2.message.userId] = Cryo_upvr.None;
				})
			end
			return Cryo_upvr.Dictionary.join(arg1, {
				[arg2.message.userId] = Cryo_upvr.List.filter(var9, function(arg1_2) -- Line 36
					--[[ Upvalues[1]:
						[1]: arg2 (readonly)
					]]
					local var13
					if arg1_2 == arg2.message.id then
						var13 = false
					else
						var13 = true
					end
					return var13
				end);
			})
		end
		return arg1
	end;
	[require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.VoiceChat.Actions.PlayerRemoved).name] = function(arg1, arg2) -- Line 46
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		if arg1[arg2.userId] then
			return Cryo_upvr.Dictionary.join(arg1, {
				[arg2.userId] = Cryo_upvr.None;
			})
		end
		return arg1
	end;
})