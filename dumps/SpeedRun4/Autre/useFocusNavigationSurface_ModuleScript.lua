-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:46
-- Luau version 6, Types version 3
-- Time taken: 0.002779 seconds

local Parent = script:FindFirstAncestor("VerifiedParentalConsentDialog").Parent
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local FocusNavigableSurfaceRegistry = FocusNavigationUtils.FocusNavigableSurfaceRegistry
local React_upvr = require(Parent.React)
local useRegisterFocusNavigableSurface_upvr = FocusNavigableSurfaceRegistry.useRegisterFocusNavigableSurface
local useDeRegisterFocusNavigableSurface_upvr = FocusNavigableSurfaceRegistry.useDeRegisterFocusNavigableSurface
local useAutoFocus_upvr = FocusNavigationUtils.useAutoFocus
local useDescendantHasFocus_upvr = FocusNavigationUtils.useDescendantHasFocus
local useLastInputMethod_upvr = FocusNavigationUtils.useLastInputMethod
local GuiService_upvr = game:GetService("GuiService")
return function(arg1) -- Line 22, Named "useFocusNavigationSurface"
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: useRegisterFocusNavigableSurface_upvr (readonly)
		[3]: useDeRegisterFocusNavigableSurface_upvr (readonly)
		[4]: useAutoFocus_upvr (readonly)
		[5]: useDescendantHasFocus_upvr (readonly)
		[6]: useLastInputMethod_upvr (readonly)
		[7]: GuiService_upvr (readonly)
	]]
	local any_useState_result1_upvr_2, any_useState_result2 = React_upvr.useState(nil)
	local useAutoFocus_upvr_result1_upvr = useAutoFocus_upvr({any_useState_result1_upvr_2}, 0.1)
	local useLastInputMethod_upvr_result1 = useLastInputMethod_upvr()
	local var33 = true
	if useLastInputMethod_upvr_result1 ~= "Gamepad" then
		if useLastInputMethod_upvr_result1 ~= "Keyboard" then
			var33 = false
		else
			var33 = true
		end
	end
	local var5_result1_upvr = useRegisterFocusNavigableSurface_upvr()
	local useDeRegisterFocusNavigableSurface_upvr_result1_upvr = useDeRegisterFocusNavigableSurface_upvr()
	React_upvr.useEffect(function() -- Line 31
		--[[ Upvalues[5]:
			[1]: any_useState_result1_upvr_2 (readonly)
			[2]: var5_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: GuiService_upvr (copied, readonly)
			[5]: useDeRegisterFocusNavigableSurface_upvr_result1_upvr (readonly)
		]]
		if any_useState_result1_upvr_2 then
			var5_result1_upvr(arg1.focusNavigableSurfaceIdentifier, any_useState_result1_upvr_2)
			GuiService_upvr:AddSelectionParent(arg1.selectionGroupName, any_useState_result1_upvr_2)
		else
			useDeRegisterFocusNavigableSurface_upvr_result1_upvr(arg1.focusNavigableSurfaceIdentifier, any_useState_result1_upvr_2)
			GuiService_upvr:RemoveSelectionGroup(arg1.selectionGroupName)
			GuiService_upvr.SelectedCoreObject = nil
		end
		return function() -- Line 42
			--[[ Upvalues[4]:
				[1]: useDeRegisterFocusNavigableSurface_upvr_result1_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: any_useState_result1_upvr_2 (copied, readonly)
				[4]: GuiService_upvr (copied, readonly)
			]]
			useDeRegisterFocusNavigableSurface_upvr_result1_upvr(arg1.focusNavigableSurfaceIdentifier, any_useState_result1_upvr_2)
			GuiService_upvr:RemoveSelectionGroup(arg1.selectionGroupName)
			GuiService_upvr.SelectedCoreObject = nil
		end
	end, {any_useState_result1_upvr_2, arg1.focusNavigableSurfaceIdentifier, arg1.selectionGroupName})
	local var39_upvr = var33
	if var39_upvr then
		var39_upvr = any_useState_result1_upvr_2
		if var39_upvr then
			var39_upvr = not useDescendantHasFocus_upvr(any_useState_result1_upvr_2)
		end
	end
	React_upvr.useEffect(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: var39_upvr (readonly)
			[2]: useAutoFocus_upvr_result1_upvr (readonly)
		]]
		local var41_upvw
		if var39_upvr then
			var41_upvw = useAutoFocus_upvr_result1_upvr()
		end
		return function() -- Line 57
			--[[ Upvalues[1]:
				[1]: var41_upvw (read and write)
			]]
			if var41_upvw then
				var41_upvw.cancel()
			end
		end
	end, {var39_upvr, useAutoFocus_upvr_result1_upvr})
	return any_useState_result2
end