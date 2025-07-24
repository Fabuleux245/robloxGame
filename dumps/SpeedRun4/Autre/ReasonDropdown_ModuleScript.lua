-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:24
-- Luau version 6, Types version 3
-- Time taken: 0.002443 seconds

local Parent = script:FindFirstAncestor("GenericAbuseReporting").Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local DropdownMenu_upvr = require(Parent.UIBlox).App.Menu.DropdownMenu
return function(arg1) -- Line 30, Named "ReasonDropdown"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: DropdownMenu_upvr (readonly)
	]]
	local useLocalization_upvr_result1_upvr = useLocalization_upvr(React_upvr.useMemo(function() -- Line 31
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return Cryo_upvr.Dictionary.union(Cryo_upvr.Dictionary.map(arg1.options, function(arg1_2) -- Line 32
			return arg1_2.localizationKey, arg1_2.value
		end), {
			ChooseOne = "Feature.ReportAbuse.Label.ChooseOne";
		})
	end, {arg1.options}))
	local useLocalization_upvr_result1_upvr_2 = useLocalization_upvr(React_upvr.useMemo(function() -- Line 41
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return Cryo_upvr.Dictionary.map(arg1.options, function(arg1_3) -- Line 42
			return arg1_3.descriptionLocalizationKey, arg1_3.value
		end)
	end, {arg1.options}))
	return React_upvr.createElement(DropdownMenu_upvr, {
		placeholder = useLocalization_upvr_result1_upvr.ChooseOne;
		onChange = React_upvr.useCallback(function(arg1_5) -- Line 60
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: useLocalization_upvr_result1_upvr_2 (readonly)
			]]
			arg1.setDropdownError(false)
			arg1.onSelectedAbuseType(arg1_5)
			if arg1.setDescription then
				arg1.setDescription(useLocalization_upvr_result1_upvr_2[arg1_5] or "")
			end
		end, {arg1.setDropdownError, arg1.onSelectedAbuseType});
		screenSize = arg1.screenSize;
		height = UDim.new(0, arg1.menuItemHeight);
		fixedListHeight = math.min(arg1.menuItemHeight * #arg1.options, arg1.maxHeight);
		errorState = arg1.isDropdownError;
		showDropShadow = true;
		dropdownMenuListPositionFixed = true;
		cellDatas = React_upvr.useMemo(function() -- Line 51
			--[[ Upvalues[3]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: useLocalization_upvr_result1_upvr (readonly)
			]]
			return Cryo_upvr.List.map(arg1.options, function(arg1_4) -- Line 52
				--[[ Upvalues[1]:
					[1]: useLocalization_upvr_result1_upvr (copied, readonly)
				]]
				return {
					text = useLocalization_upvr_result1_upvr[arg1_4.value] or "";
					key = arg1_4.value;
				}
			end)
		end, {arg1.options, useLocalization_upvr_result1_upvr});
		defaultKey = arg1.reportCategoryDefaultKey;
		isDisabled = arg1.isDisabled;
	})
end