-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:50
-- Luau version 6, Types version 3
-- Time taken: 0.004107 seconds

local FocusNavigationUtils = script:FindFirstAncestor("FocusNavigationUtils")
local Parent = FocusNavigationUtils.Parent
local FocusNavigableSurfaceRegistry = require(FocusNavigationUtils.FocusNavigableSurfaceRegistry)
local var4_upvw
if require(Parent.SharedFlags).GetFFlagEnableAppCommonInputHooks() then
	var4_upvw = require(FocusNavigationUtils.useLastInputMethod)
else
	var4_upvw = require(Parent.ReactFocusNavigation).useLastInputMethod
end
local React_upvr = require(Parent.React)
local useRegisterFocusNavigableSurface_upvr = FocusNavigableSurfaceRegistry.useRegisterFocusNavigableSurface
local useDeRegisterFocusNavigableSurface_upvr = FocusNavigableSurfaceRegistry.useDeRegisterFocusNavigableSurface
local useAutoFocus_upvr = require(FocusNavigationUtils.useAutoFocus)
local useDescendantHasFocus_upvr = require(FocusNavigationUtils.useDescendantHasFocus)
local GuiService_upvr = game:GetService("GuiService")
return function(arg1) -- Line 37, Named "FocusNavigationCoreScriptsWrapper"
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: useRegisterFocusNavigableSurface_upvr (readonly)
		[3]: useDeRegisterFocusNavigableSurface_upvr (readonly)
		[4]: useAutoFocus_upvr (readonly)
		[5]: useDescendantHasFocus_upvr (readonly)
		[6]: var4_upvw (read and write)
		[7]: GuiService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useState_result1_upvr_2, any_useState_result2_2 = React_upvr.useState(nil)
	local var8_result1_upvr = useAutoFocus_upvr({any_useState_result1_upvr_2}, 0.1)
	local var4_result1 = var4_upvw()
	local var35 = true
	if var4_result1 ~= "Gamepad" then
		if var4_result1 ~= "Keyboard" then
			var35 = false
		else
			var35 = true
		end
	end
	local useRegisterFocusNavigableSurface_upvr_result1_upvr = useRegisterFocusNavigableSurface_upvr()
	local var7_result1_upvr_2 = useDeRegisterFocusNavigableSurface_upvr()
	React_upvr.useEffect(function() -- Line 46
		--[[ Upvalues[5]:
			[1]: any_useState_result1_upvr_2 (readonly)
			[2]: useRegisterFocusNavigableSurface_upvr_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: GuiService_upvr (copied, readonly)
			[5]: var7_result1_upvr_2 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 11 start (CF ANALYSIS FAILED)
		if any_useState_result1_upvr_2 then
			useRegisterFocusNavigableSurface_upvr_result1_upvr(arg1.focusNavigableSurfaceIdentifier, any_useState_result1_upvr_2)
			if arg1.selectionGroupName then
				GuiService_upvr:AddSelectionParent(arg1.selectionGroupName, any_useState_result1_upvr_2)
				-- KONSTANTWARNING: GOTO [38] #31
			end
		else
			var7_result1_upvr_2(arg1.focusNavigableSurfaceIdentifier, any_useState_result1_upvr_2)
			if arg1.selectionGroupName then
				GuiService_upvr:RemoveSelectionGroup(arg1.selectionGroupName)
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [38] 31. Error Block 7 start (CF ANALYSIS FAILED)
		do
			return function() -- Line 60
				--[[ Upvalues[4]:
					[1]: var7_result1_upvr_2 (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: any_useState_result1_upvr_2 (copied, readonly)
					[4]: GuiService_upvr (copied, readonly)
				]]
				var7_result1_upvr_2(arg1.focusNavigableSurfaceIdentifier, any_useState_result1_upvr_2)
				if arg1.selectionGroupName then
					GuiService_upvr:RemoveSelectionGroup(arg1.selectionGroupName)
				end
			end
		end
		-- KONSTANTERROR: [38] 31. Error Block 7 end (CF ANALYSIS FAILED)
	end, {any_useState_result1_upvr_2, arg1.focusNavigableSurfaceIdentifier, arg1.selectionGroupName})
	if var35 then
		if any_useState_result1_upvr_2 then
			local var41_upvr = not useDescendantHasFocus_upvr(any_useState_result1_upvr_2)
		end
	end
	React_upvr.useEffect(function() -- Line 70
		--[[ Upvalues[2]:
			[1]: var41_upvr (readonly)
			[2]: var8_result1_upvr (readonly)
		]]
		local var43_upvw
		if var41_upvr then
			var43_upvw = var8_result1_upvr()
		end
		return function() -- Line 75
			--[[ Upvalues[1]:
				[1]: var43_upvw (read and write)
			]]
			if var43_upvw then
				var43_upvw.cancel()
			end
		end
	end, {var41_upvr, var8_result1_upvr})
	local module = {
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}
	local automaticSize = arg1.automaticSize
	module.AutomaticSize = automaticSize
	if arg1.size then
		automaticSize = arg1.size
	else
		automaticSize = UDim2.new(1, 0, 1, 0)
	end
	module.Size = automaticSize
	module.ref = any_useState_result2_2
	return React_upvr.createElement("Frame", module, arg1.children)
end