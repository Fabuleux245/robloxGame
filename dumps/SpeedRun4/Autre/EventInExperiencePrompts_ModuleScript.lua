-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:33
-- Luau version 6, Types version 3
-- Time taken: 0.001751 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local tbl_5_upvr = {
	PromptRsvp = "PromptRsvp";
}
local tbl_4_upvr = {
	[tbl_5_upvr.PromptRsvp] = require(Parent_2.Components.CoreUI.RsvpPrompt);
}
local useState_upvr = React_upvr.useState
local Cryo_upvr = require(Parent.Cryo)
local PromptConnections_upvr = require(Parent_2.Components.CoreUI.PromptConnections)
return function(arg1) -- Line 45
	--[[ Upvalues[6]:
		[1]: useState_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: tbl_5_upvr (readonly)
		[6]: PromptConnections_upvr (readonly)
	]]
	local var7_result1_upvr, useState_upvr_result2_upvr = useState_upvr({
		promptType = nil;
		promptData = nil;
		promptQueue = {};
	})
	local promptType = var7_result1_upvr.promptType
	local function var14() -- Line 55
		--[[ Upvalues[3]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: var7_result1_upvr (readonly)
			[3]: useState_upvr_result2_upvr (readonly)
		]]
		if not Cryo_upvr.isEmpty(var7_result1_upvr.promptQueue) then
			useState_upvr_result2_upvr(Cryo_upvr.Dictionary.join(var7_result1_upvr, {
				promptType = var7_result1_upvr.promptQueue[1].promptType;
				promptData = var7_result1_upvr.promptQueue[1].promptData;
				promptQueue = Cryo_upvr.List.removeIndex(var7_result1_upvr.promptQueue, 1);
			}))
		else
			useState_upvr_result2_upvr({
				promptType = nil;
				promptData = {};
				promptQueue = {};
			})
		end
	end
	local tbl_9 = {var7_result1_upvr, useState_upvr_result2_upvr}
	var14 = nil
	local var18 = var14
	if promptType then
		local var19 = tbl_4_upvr[promptType]
		if var19 then
			var18 = React_upvr.createElement(var19, {
				enableInputDelayed = arg1.enableInputDelayed;
				promptData = var7_result1_upvr.promptData;
				closePrompt = React_upvr.useCallback(var14, tbl_9);
				overrideUseWideMode = arg1.overrideUseWideMode;
			})
		else
			error(`Unexpected prompt type: {promptType}!`)
		end
	end
	local module = {}
	local tbl_3 = {
		openRsvpPrompt = React_upvr.useCallback(function(arg1_2, arg2) -- Line 86
			--[[ Upvalues[4]:
				[1]: var7_result1_upvr (readonly)
				[2]: useState_upvr_result2_upvr (readonly)
				[3]: Cryo_upvr (copied, readonly)
				[4]: tbl_5_upvr (copied, readonly)
			]]
			if var7_result1_upvr.promptType ~= nil then
				local tbl = {}
				local tbl_10 = {}
				local tbl_6 = {
					promptType = tbl_5_upvr.PromptRsvp;
				}
				local tbl_8 = {}
				tbl_8.eventId = arg1_2
				tbl_8.eventDetails = arg2
				tbl_6.promptData = tbl_8
				tbl_10[1] = tbl_6
				tbl.promptQueue = Cryo_upvr.List.join(var7_result1_upvr.promptQueue, tbl_10)
				useState_upvr_result2_upvr(Cryo_upvr.Dictionary.join(var7_result1_upvr, tbl))
			else
				local tbl_2 = {
					promptType = tbl_5_upvr.PromptRsvp;
				}
				local tbl_7 = {}
				tbl_7.eventId = arg1_2
				tbl_7.eventDetails = arg2
				tbl_2.promptData = tbl_7
				tbl_2.promptQueue = {}
				useState_upvr_result2_upvr(tbl_2)
			end
		end, {var7_result1_upvr, useState_upvr_result2_upvr});
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_3.closePrompt = React_upvr.useCallback(var14, tbl_9)
	module.PromptConnections = React_upvr.createElement(PromptConnections_upvr, tbl_3)
	module.Prompt = var18
	return React_upvr.createElement(React_upvr.Fragment, {}, module)
end