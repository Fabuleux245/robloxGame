-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:06
-- Luau version 6, Types version 3
-- Time taken: 0.001356 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Parent = script.Parent.Parent
local module = {
	[require(Parent.Actions.CloseOpenPrompt).name] = function(arg1, arg2) -- Line 32
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		if Cryo_upvr.isEmpty(arg1.queue) then
			return {
				queue = arg1.queue;
				infoQueue = arg1.infoQueue;
			}
		end
		return Cryo_upvr.Dictionary.join(arg1.infoQueue[1], {
			promptType = arg1.queue[1];
			queue = Cryo_upvr.List.removeIndex(arg1.queue, 1);
			infoQueue = Cryo_upvr.List.removeIndex(arg1.infoQueue, 1);
		})
	end;
	[require(Parent.Actions.OpenPrompt).name] = function(arg1, arg2) -- Line 47
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		if arg1.promptType == nil then
			return Cryo_upvr.Dictionary.join(arg1, {
				promptType = arg2.promptType;
			}, arg2.promptInfo)
		end
		return Cryo_upvr.Dictionary.join(arg1, {
			queue = Cryo_upvr.List.join(arg1.queue, {arg2.promptType});
			infoQueue = Cryo_upvr.List.join(arg1.infoQueue, {arg2.promptInfo});
		})
	end;
}
local PromptType_upvr = require(Parent.PromptType)
module[require(Parent.Actions.CreateOutfitConfirmed).name] = function(arg1, arg2) -- Line 60
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: PromptType_upvr (readonly)
	]]
	return Cryo_upvr.Dictionary.join(arg1, {
		promptType = PromptType_upvr.EnterOutfitName;
	})
end
return require(CorePackages.Packages.Rodux).createReducer({
	promptType = nil;
	humanoidDescription = nil;
	rigType = nil;
	itemId = nil;
	itemType = nil;
	itemName = nil;
	isFavorited = nil;
	queue = {};
	infoQueue = {};
}, module)