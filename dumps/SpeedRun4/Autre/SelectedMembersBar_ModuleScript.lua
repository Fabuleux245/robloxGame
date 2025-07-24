-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:16
-- Luau version 6, Types version 3
-- Time taken: 0.002523 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local View_upvr = Foundation.View
local MemberEntry_upvr = require(script.Parent.MemberEntry)
local FriendCountLabel_upvr = require(script.Parent.FriendCountLabel)
local ScrollView_upvr = Foundation.ScrollView
local Enums_upvr = Foundation.Enums
return React_upvr.memo(function(arg1) -- Line 22, Named "SelectedMembersBar"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: View_upvr (readonly)
		[3]: MemberEntry_upvr (readonly)
		[4]: FriendCountLabel_upvr (readonly)
		[5]: ScrollView_upvr (readonly)
		[6]: Enums_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	React_upvr.useEffect(function() -- Line 48
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		if any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current.ScrollBarThickness = 0
		end
	end, {any_useRef_result1_upvr})
	return React_upvr.createElement(View_upvr, {
		LayoutOrder = arg1.LayoutOrder;
		tag = "row size-full-1800 padding-xsmall";
	}, {
		FriendCountContainer = React_upvr.createElement(View_upvr, {
			tag = "size-1500-full padding-xxsmall";
			LayoutOrder = 1;
		}, {
			FriendCount = React_upvr.createElement(FriendCountLabel_upvr, {
				currentSize = #arg1.selectedMembers;
				maxSize = arg1.maxSize;
			});
		});
		UserScrollBar = React_upvr.createElement(ScrollView_upvr, {
			tag = "size-0-full fill clip";
			LayoutOrder = 2;
			scroll = {
				scrollBarVisibility = Enums_upvr.ScrollBarVisibility.None;
				ScrollingDirection = Enum.ScrollingDirection.X;
				AutomaticCanvasSize = Enum.AutomaticSize.X;
			};
			scrollingFrameRef = any_useRef_result1_upvr;
		}, {
			Content = React_upvr.createElement(View_upvr, {
				tag = "row size-full auto-x gap-xsmall";
			}, React_upvr.useMemo(function() -- Line 26
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: React_upvr (copied, readonly)
					[3]: View_upvr (copied, readonly)
					[4]: MemberEntry_upvr (copied, readonly)
				]]
				local module = {}
				for i = 1, arg1.maxSize do
					module[i] = React_upvr.createElement(View_upvr, {
						tag = "size-1500-full";
						LayoutOrder = i;
					}, {
						MemberEntry = React_upvr.createElement(MemberEntry_upvr, {
							user = arg1.selectedMembers[i];
							onActivated = arg1.onUserRemoved;
						});
					})
				end
				return module
			end, {arg1.maxSize, arg1.selectedMembers, arg1.onUserRemoved}));
		});
	})
end)