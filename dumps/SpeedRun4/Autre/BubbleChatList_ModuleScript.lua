-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:46
-- Luau version 6, Types version 3
-- Time taken: 0.004843 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local any_extend_result1 = Roact_upvr.Component:extend("BubbleChatList")
any_extend_result1.validateProps = t.strictInterface({
	userId = t.string;
	isVisible = t.optional(t.boolean);
	theme = t.optional(t.string);
	onLastBubbleFadeOut = t.optional(t.callback);
	chatSettings = require(script.Parent.Parent.Types).IChatSettings;
	renderFirstInsert = t.optional(t.callback);
	insertSize = t.optional(t.Vector2);
	messageIds = t.array(t.string);
})
any_extend_result1.defaultProps = {
	theme = "Light";
}
function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 32
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local tbl_3 = {}
	if arg2.bubbles then
		for _, v in ipairs(arg2.bubbles) do
			if not Cryo_upvr.List.find(arg1.messageIds, v.messageId) then
				table.insert(tbl_3, {
					messageId = v.messageId;
					fadingOut = true;
				})
			end
		end
	end
	for _, v_2 in ipairs(arg1.messageIds) do
		table.insert(tbl_3, {
			messageId = v_2;
			fadingOut = false;
		})
	end
	return {
		bubbles = tbl_3;
	}
end
function any_extend_result1.init(arg1, arg2) -- Line 60
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if not arg2.messageIds or #arg2.messageIds == 0 then
		if arg2.onLastBubbleFadeOut then
			arg2.onLastBubbleFadeOut()
		end
	end
	function arg1.onBubbleFadeOut(arg1_2) -- Line 67
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local any_filter_result1 = Cryo_upvr.List.filter(arg1.state.bubbles, function(arg1_3) -- Line 68
			--[[ Upvalues[1]:
				[1]: arg1_2 (readonly)
			]]
			local var28
			if arg1_3.messageId == arg1_2 then
				var28 = false
			else
				var28 = true
			end
			return var28
		end)
		if #any_filter_result1 == 0 and arg1.props.onLastBubbleFadeOut then
			arg1.props.onLastBubbleFadeOut()
		else
			arg1:setState({
				bubbles = any_filter_result1;
			})
		end
	end
end
local ChatBubble_upvr = require(script.Parent.ChatBubble)
function any_extend_result1.render(arg1) -- Line 83
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ChatBubble_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local chatSettings = arg1.props.chatSettings
	module.Layout = Roact_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Bottom;
		Padding = UDim.new(0, chatSettings.BubblesSpacing);
	})
	local TailVisible = chatSettings.TailVisible
	if TailVisible then
		TailVisible = arg1.props.showCarat
		if TailVisible then
			TailVisible = Roact_upvr.createElement
			TailVisible = TailVisible("UIPadding", {
				PaddingBottom = UDim.new(0, 8);
			})
		end
	end
	module.CaretPadding = TailVisible
	for i_3, v_3 in ipairs(arg1.state.bubbles) do
		local var67
		if i_3 ~= #arg1.state.bubbles then
			var67 = false
		else
			var67 = true
		end
		if not var67 or not arg1.props.renderFirstInsert then
		end
		module["Bubble"..v_3.messageId] = Roact_upvr.createElement(ChatBubble_upvr, {
			messageId = v_3.messageId;
			isMostRecent = var67;
			theme = arg1.props.theme;
			fadingOut = v_3.fadingOut;
			onFadeOut = arg1.onBubbleFadeOut;
			chatSettings = chatSettings;
			renderInsert = nil;
			insertSize = arg1.props.insertSize;
			showCarat = arg1.props.showCarat;
		})
	end
	return Roact_upvr.createElement("Frame", {
		Visible = arg1.props.isVisible;
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
	}, module)
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1, arg2) -- Line 127, Named "mapStateToProps"
	local module_2 = {}
	local var71 = arg1.userMessages[arg2.userId]
	if not var71 then
		var71 = {}
	end
	module_2.messageIds = var71
	return module_2
end)(any_extend_result1)