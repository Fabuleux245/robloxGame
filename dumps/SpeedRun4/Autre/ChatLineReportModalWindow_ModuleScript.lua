-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:17
-- Luau version 6, Types version 3
-- Time taken: 0.002206 seconds

local Parent = script:FindFirstAncestor("ChatLineReporting").Parent
local Foundation = require(Parent.Foundation)
local UIBlox = require(Parent.UIBlox)
local React_upvr = require(Parent.React)
local ModalWindow_upvr = UIBlox.App.Dialog.Modal.ModalWindow
local View_upvr = Foundation.View
local HeaderBar_upvr = UIBlox.App.Bar.HeaderBar
local IconButton_upvr = Foundation.IconButton
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
return function(arg1) -- Line 38, Named "ChatLineReportModalWindow"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: ModalWindow_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: HeaderBar_upvr (readonly)
		[5]: IconButton_upvr (readonly)
		[6]: ButtonStack_upvr (readonly)
	]]
	return React_upvr.createElement(ModalWindow_upvr, {
		isFullHeight = false;
		screenSize = arg1.screenSize;
		position = arg1.position;
		anchorPoint = arg1.anchorPoint;
	}, {
		Content = React_upvr.createElement(View_upvr, {
			tag = "size-full-0 auto-y col margin-bottom-xxlarge";
		}, {
			TitleContainer = React_upvr.createElement(HeaderBar_upvr, {
				title = arg1.title;
				renderLeft = function() -- Line 50, Named "renderLeft"
					--[[ Upvalues[3]:
						[1]: React_upvr (copied, readonly)
						[2]: IconButton_upvr (copied, readonly)
						[3]: arg1 (readonly)
					]]
					return React_upvr.createElement(IconButton_upvr, {
						icon = "icons/navigation/close";
						onActivated = arg1.onCloseClicked;
					})
				end;
				renderRight = function() -- Line 56, Named "renderRight"
					--[[ Upvalues[3]:
						[1]: React_upvr (copied, readonly)
						[2]: IconButton_upvr (copied, readonly)
						[3]: arg1 (readonly)
					]]
					return React_upvr.createElement(IconButton_upvr, {
						icon = "icons/actions/info";
						onActivated = arg1.onInfoClicked;
					})
				end;
				backgroundTransparency = 1;
				margin = 10;
			});
			Underline = React_upvr.createElement(View_upvr, {
				tag = "size-full-0 stroke-standard stroke-default";
				LayoutOrder = 1;
			});
			MiddleContent = React_upvr.createElement(View_upvr, {
				tag = "size-full-0 auto-y padding-x-xxlarge";
				LayoutOrder = 2;
			}, arg1.children);
			Buttons = React_upvr.createElement(View_upvr, {
				tag = "size-full-0 padding-x-xxlarge auto-y";
				LayoutOrder = 3;
			}, {React_upvr.createElement(ButtonStack_upvr, arg1.buttonStackProps)});
		});
	})
end