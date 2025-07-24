-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:45
-- Luau version 6, Types version 3
-- Time taken: 0.004782 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local tbl_3_upvr = {
	bodyText = "Placeholder body";
	onHeightChanged = function(arg1) -- Line 45, Named "onHeightChanged"
	end;
	onAccepted = nil;
	onDenied = nil;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local useIsInExperience_upvr = require(AppChat.Hooks.useIsInExperience)
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
local useChatPagePadding_upvr = require(AppChat.Contexts.ChatPagePadding.useChatPagePadding)
local useEffect_upvr = React_upvr.useEffect
local useMemo_upvr = React_upvr.useMemo
local Enum_upvr = UIBlox.App.Button.Enum
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
return function(arg1) -- Line 53, Named "ConversationModal"
	--[[ Upvalues[12]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: useIsInExperience_upvr (readonly)
		[6]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
		[7]: useChatPagePadding_upvr (readonly)
		[8]: useEffect_upvr (readonly)
		[9]: useMemo_upvr (readonly)
		[10]: Enum_upvr (readonly)
		[11]: React_upvr (readonly)
		[12]: ButtonStack_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_3_upvr, arg1)
	local var17 = any_join_result1_upvr.style or useStyle_upvr()
	local useIsInExperience_upvr_result1 = useIsInExperience_upvr()
	local Space_250 = var17.Tokens.Global.Space_250
	local var20
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		local useChatPagePadding_upvr_result1 = useChatPagePadding_upvr()
	else
		local _ = {
			left = Space_250;
			right = Space_250;
		}
	end
	useEffect_upvr(function() -- Line 69
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		return function() -- Line 70
			--[[ Upvalues[1]:
				[1]: any_join_result1_upvr (copied, readonly)
			]]
			any_join_result1_upvr.onHeightChanged(0)
		end
	end, {})
	local tbl_4 = {}
	var20 = any_join_result1_upvr.denyText
	tbl_4[1] = any_join_result1_upvr.acceptText
	tbl_4[2] = var20
	tbl_4[3] = any_join_result1_upvr.loading
	tbl_4[4] = any_join_result1_upvr.onDenied
	tbl_4[5] = any_join_result1_upvr.onAccepted
	local useMemo_upvr_result1 = useMemo_upvr(function() -- Line 75
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: Enum_upvr (copied, readonly)
		]]
		local module = {}
		if any_join_result1_upvr.denyText then
			table.insert(module, {
				buttonType = Enum_upvr.ButtonType.Secondary;
				props = {
					onActivated = any_join_result1_upvr.onDenied;
					text = any_join_result1_upvr.denyText;
					isDisabled = any_join_result1_upvr.loading;
				};
			})
		end
		if any_join_result1_upvr.acceptText then
			table.insert(module, {
				buttonType = Enum_upvr.ButtonType.PrimarySystem;
				props = {
					onActivated = any_join_result1_upvr.onAccepted;
					text = any_join_result1_upvr.acceptText;
					isDisabled = any_join_result1_upvr.loading;
				};
			})
		end
		return module
	end, tbl_4)
	local module_2 = {}
	if useIsInExperience_upvr_result1 then
		var20 = useTokens_upvr().Color.OverMedia.OverMedia_100.Transparency
	else
		var20 = var17.Theme.SystemPrimaryContent.Transparency
	end
	module_2.BackgroundTransparency = var20
	if useIsInExperience_upvr_result1 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	else
	end
	module_2.BackgroundColor3 = var17.Theme.SystemPrimaryContent.Color
	module_2.BorderSizePixel = 0
	module_2.LayoutOrder = any_join_result1_upvr.layoutOrder
	module_2.Size = UDim2.new(1, 0, 0, 0)
	module_2.AutomaticSize = Enum.AutomaticSize.Y
	module_2[React_upvr.Change.AbsoluteSize] = function(arg1_2) -- Line 111
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		any_join_result1_upvr.onHeightChanged(arg1_2.AbsoluteSize.Y)
	end
	local tbl = {}
	if any_join_result1_upvr.paddingTop ~= nil then
	else
	end
	tbl.PaddingTop = UDim.new(0, Space_250)
	if any_join_result1_upvr.paddingBottom ~= nil then
		-- KONSTANTWARNING: GOTO [166] #111
	end
	tbl.PaddingBottom = UDim.new(0, Space_250)
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		-- KONSTANTWARNING: GOTO [179] #121
	end
	tbl.PaddingLeft = UDim.new(0, Space_250)
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		-- KONSTANTWARNING: GOTO [192] #131
	end
	tbl.PaddingRight = UDim.new(0, Space_250)
	;({}).ContentPadding = React_upvr.createElement("UIPadding", tbl)
	local tbl_2 = {
		FillDirection = Enum.FillDirection.Vertical;
	}
	if any_join_result1_upvr.verticalSpacing ~= nil then
		-- KONSTANTWARNING: GOTO [218] #148
	end
	tbl_2.Padding = UDim.new(0, Space_250)
	tbl_2.SortOrder = Enum.SortOrder.LayoutOrder
	tbl_2.VerticalAlignment = Enum.VerticalAlignment.Top
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).UIListLayout = React_upvr.createElement("UIListLayout", tbl_2)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).Body = React_upvr.createElement("TextLabel", {
		BackgroundTransparency = 1;
		TextSize = var17.Tokens.Global.FontSize_75;
		Font = var17.Font.Body.Font;
		LayoutOrder = 1;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		Text = any_join_result1_upvr.bodyText;
		TextWrapped = true;
		TextColor3 = var17.Theme.TextDefault.Color;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Center;
	})
	if 0 < #useMemo_upvr_result1 then
		local _ = {
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			Size = UDim2.new(1, 0, 0, var17.Tokens.Global.Size_500);
		}
		;({}).ButtonStack = React_upvr.createElement(ButtonStack_upvr, {
			forcedFillDirection = Enum.FillDirection.Horizontal;
			buttons = useMemo_upvr_result1;
		})
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).Buttons = nil
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return React_upvr.createElement("Frame", module_2, {})
end