-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:55
-- Luau version 6, Types version 3
-- Time taken: 0.006075 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local React_upvr = require(Songbird.Parent.React)
local tbl_3_upvr = {
	autoCollapseSeconds = 3;
	isSubMenuOpen = false;
	onToggleSubMenu = function() -- Line 37, Named "onToggleSubMenu"
	end;
}
local Cryo_upvr = require(Songbird.Parent.Cryo)
local Foundation_upvr = require(Songbird.Parent.Foundation)
local useRef_upvr = React_upvr.useRef
local getFFlagSongbirdPopoverSubmenu_upvr = require(Songbird.Flags.getFFlagSongbirdPopoverSubmenu)
local constants_upvr = require(Songbird.constants)
local createNextOrder_upvr = require(Songbird.Parent.ReactUtils).createNextOrder
local useState_upvr = React_upvr.useState
local useCallback_upvr = React_upvr.useCallback
local useEffect_upvr = React_upvr.useEffect
local RunService_upvr = game:GetService("RunService")
local CollapsibleFrame_upvr = require(Songbird.Components.CollapsibleFrame)
local DismissButton_upvr = require(Songbird.Components.DismissButton)
return function(arg1) -- Line 42, Named "ChromeWindowFrame"
	--[[ Upvalues[14]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: Foundation_upvr (readonly)
		[4]: useRef_upvr (readonly)
		[5]: getFFlagSongbirdPopoverSubmenu_upvr (readonly)
		[6]: constants_upvr (readonly)
		[7]: createNextOrder_upvr (readonly)
		[8]: useState_upvr (readonly)
		[9]: useCallback_upvr (readonly)
		[10]: useEffect_upvr (readonly)
		[11]: RunService_upvr (readonly)
		[12]: React_upvr (readonly)
		[13]: CollapsibleFrame_upvr (readonly)
		[14]: DismissButton_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 76 start (CF ANALYSIS FAILED)
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_3_upvr, arg1)
	local any_useTokens_result1 = Foundation_upvr.Hooks.useTokens()
	if not getFFlagSongbirdPopoverSubmenu_upvr() and typeof(any_join_result1_upvr.overflowButtonRef) == "table" and any_join_result1_upvr.overflowButtonRef.current then
		if (any_join_result1_upvr.overflowButtonRef.current.AbsolutePosition + Vector2.new(any_useTokens_result1.Gap.Small + constants_upvr.SUBMENU_WIDTH, 0)).X >= any_join_result1_upvr.overflowButtonRef.current:FindFirstAncestorOfClass("ScreenGui").AbsoluteSize.X then
		else
		end
	end
	local createNextOrder_upvr_result1 = createNextOrder_upvr()
	local useRef_upvr_result1_upvr = useRef_upvr(nil)
	local useState_upvr_result1, useState_upvr_result2_upvr = useState_upvr(true)
	useEffect_upvr(function() -- Line 86
		--[[ Upvalues[4]:
			[1]: any_join_result1_upvr (readonly)
			[2]: RunService_upvr (copied, readonly)
			[3]: useRef_upvr_result1_upvr (readonly)
			[4]: useState_upvr_result2_upvr (readonly)
		]]
		if any_join_result1_upvr.autoCollapseSeconds and 0 < any_join_result1_upvr.autoCollapseSeconds then
			local any_Connect_result1_upvr = RunService_upvr.Heartbeat:Connect(function() -- Line 90
				--[[ Upvalues[3]:
					[1]: useRef_upvr_result1_upvr (copied, readonly)
					[2]: any_join_result1_upvr (copied, readonly)
					[3]: useState_upvr_result2_upvr (copied, readonly)
				]]
				if useRef_upvr_result1_upvr.current and any_join_result1_upvr.autoCollapseSeconds <= os.time() - useRef_upvr_result1_upvr.current then
					useState_upvr_result2_upvr(false)
				end
			end)
			return function() -- Line 98
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvr (readonly)
				]]
				any_Connect_result1_upvr:Disconnect()
			end
		end
		any_Connect_result1_upvr = nil
		return any_Connect_result1_upvr
	end, {any_join_result1_upvr.autoCollapseSeconds})
	local useState_upvr_result1_2, useState_upvr_result2_upvr_2 = useState_upvr(Vector2.new(math.huge, math.huge))
	local tbl = {
		tag = "auto-xy";
	}
	local tbl_2 = {}
	if any_join_result1_upvr.maxSize then
		-- KONSTANTWARNING: GOTO [141] #105
	end
	-- KONSTANTERROR: [0] 1. Error Block 76 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [140] 104. Error Block 74 start (CF ANALYSIS FAILED)
	tbl_2.MaxSize = nil
	tbl.sizeConstraint = tbl_2
	tbl.stateLayer = {
		affordance = Foundation_upvr.Enums.StateLayerAffordance.None;
	}
	tbl.onStateChanged = useCallback_upvr(function(arg1_2) -- Line 70
		--[[ Upvalues[3]:
			[1]: useRef_upvr_result1_upvr (readonly)
			[2]: useState_upvr_result2_upvr (readonly)
			[3]: Foundation_upvr (copied, readonly)
		]]
		useRef_upvr_result1_upvr.current = nil
		useState_upvr_result2_upvr(true)
		if arg1_2 == Foundation_upvr.Enums.ControlState.Default then
			useRef_upvr_result1_upvr.current = os.time()
		end
	end, {})
	;({}).tag = "size-full-0 auto-y bg-over-media-100 radius-medium col gap-xxsmall stroke-emphasis"
	;({}).CollapsibleTitleBar = React_upvr.createElement(CollapsibleFrame_upvr, {
		isCollapsed = not useState_upvr_result1;
		LayoutOrder = createNextOrder_upvr_result1();
	}, {
		TitleBar = React_upvr.createElement(Foundation_upvr.View, {
			tag = "size-full-0 auto-y row flex-between items-center";
		}, {
			Actions = React_upvr.createElement(Foundation_upvr.View, {
				tag = "auto-xy row";
				LayoutOrder = createNextOrder_upvr_result1();
				onAbsoluteSizeChanged = useCallback_upvr(function(arg1_3) -- Line 106
					--[[ Upvalues[1]:
						[1]: useState_upvr_result2_upvr_2 (readonly)
					]]
					useState_upvr_result2_upvr_2(arg1_3.AbsoluteSize)
				end, {});
			}, {
				CloseButton = React_upvr.createElement(DismissButton_upvr, {
					icon = "icons/navigation/close";
					onDismiss = useCallback_upvr(function() -- Line 63
						--[[ Upvalues[1]:
							[1]: any_join_result1_upvr (readonly)
						]]
						if any_join_result1_upvr.onClose then
							any_join_result1_upvr.onClose()
						end
					end, {any_join_result1_upvr.onClose});
					layoutOrder = createNextOrder_upvr_result1();
				});
			});
			CenterAlignedTitle = React_upvr.createElement(Foundation_upvr.View, {
				tag = "size-full-0 shrink auto-y";
				LayoutOrder = createNextOrder_upvr_result1();
			}, {
				Title = React_upvr.createElement(Foundation_upvr.Text, {
					tag = "size-full-0 text-title-medium content-emphasis";
					Text = any_join_result1_upvr.title;
					fontStyle = any_useTokens_result1.Typography.TitleMedium;
					Position = UDim2.new(0, -useState_upvr_result1_2.X / 2, 0, 0);
				});
			});
		});
	})
	if useState_upvr_result1 then
		local tbl_4 = {
			backgroundStyle = any_useTokens_result1.Color.Stroke.Emphasis;
			Size = UDim2.new(1, 0, 0, 1);
			LayoutOrder = createNextOrder_upvr_result1();
		}
		-- KONSTANTWARNING: GOTO [323] #231
	end
	-- KONSTANTERROR: [140] 104. Error Block 74 end (CF ANALYSIS FAILED)
end