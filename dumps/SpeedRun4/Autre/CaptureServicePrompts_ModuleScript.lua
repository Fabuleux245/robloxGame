-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:17
-- Luau version 6, Types version 3
-- Time taken: 0.001336 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local PromptType = require(Parent_2.Enums.PromptType)
local tbl_upvr = {
	[PromptType.SaveCaptures] = require(Parent_2.Components.CaptureService.SaveCapturesPrompt);
	[PromptType.ShareCapture] = require(Parent_2.Components.CaptureService.ShareCapturePrompt);
}
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local React_upvr = require(Parent.React)
local PromptConnections_upvr = require(Parent_2.Components.CaptureService.PromptConnections)
return function(arg1) -- Line 23
	--[[ Upvalues[5]:
		[1]: useSelector_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: PromptConnections_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_2) -- Line 24
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].Prompts[1]
	end)
	local var12
	if useSelector_upvr_result1 then
	end
	if useSelector_upvr_result1 then
	end
	var12 = useSelector_upvr_result1
	if var12 then
		var12 = useSelector_upvr_result1.PromptType
	end
	local var13
	if var12 then
		local var14 = tbl_upvr[var12]
		if var14 then
			var13 = React_upvr.createElement(var14, {
				promptData = useSelector_upvr_result1.PromptData;
				promptId = useSelector_upvr_result1.PromptId;
			})
		else
			error(`Unexpected prompt type: {var12}!`)
		end
	end
	return React_upvr.createElement(React_upvr.Fragment, {}, {
		PromptConnections = React_upvr.createElement(PromptConnections_upvr);
		Prompt = var13;
	})
end