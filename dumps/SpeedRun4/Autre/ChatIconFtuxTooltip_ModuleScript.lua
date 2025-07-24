-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:24
-- Luau version 6, Types version 3
-- Time taken: 0.003561 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)
local tbl_upvr = {
	showDelay = 1000;
	dismissDelay = 7000;
	onDismissed = function(arg1, arg2) -- Line 26, Named "onDismissed"
	end;
}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local React_upvr = require(CorePackages.Packages.React)
local setTimeout_upvr = LuauPolyfill.setTimeout
local AppStorageService_upvr = game:GetService("AppStorageService")
local useLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local GuiService_upvr = game:GetService("GuiService")
local clearTimeout_upvr = LuauPolyfill.clearTimeout
local withTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withTooltip
local CoreGui_upvr = game:GetService("CoreGui")
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
return function(arg1) -- Line 41
	--[[ Upvalues[11]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: setTimeout_upvr (readonly)
		[5]: AppStorageService_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: GuiService_upvr (readonly)
		[8]: clearTimeout_upvr (readonly)
		[9]: withTooltip_upvr (readonly)
		[10]: CoreGui_upvr (readonly)
		[11]: TooltipOrientation_upvr (readonly)
	]]
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_upvr, arg1)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useRef_result1_upvr = React_upvr.useRef(setTimeout_upvr(function() -- Line 45
	end, any_union_result1_upvr.showDelay))
	local any_useRef_result1_upvr_2 = React_upvr.useRef(setTimeout_upvr(function() -- Line 46
	end, any_union_result1_upvr.dismissDelay))
	local var31_upvr = not (React_upvr.useMemo(function() -- Line 48
		--[[ Upvalues[2]:
			[1]: any_union_result1_upvr (readonly)
			[2]: AppStorageService_upvr (copied, readonly)
		]]
		local var26 = false
		if any_union_result1_upvr.localStorageKey then
			local pcall_result1, pcall_result2 = pcall(function() -- Line 51
				--[[ Upvalues[2]:
					[1]: AppStorageService_upvr (copied, readonly)
					[2]: any_union_result1_upvr (copied, readonly)
				]]
				return AppStorageService_upvr:GetItem(any_union_result1_upvr.localStorageKey)
			end)
			if pcall_result1 then
				if pcall_result2 ~= "true" then
					var26 = false
				else
					var26 = true
				end
				return var26
			end
			var26 = true
		end
		return var26
	end, {any_union_result1_upvr.localStorageKey}) or any_useState_result1)
	local var32_upvr = any_useState_result1_upvr and var31_upvr
	local useLocalization_upvr_result1 = useLocalization_upvr({
		headerText = any_union_result1_upvr.headerKey;
		bodyText = any_union_result1_upvr.bodyKey;
	})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2) -- Line 66
		--[[ Upvalues[3]:
			[1]: any_union_result1_upvr (readonly)
			[2]: var32_upvr (readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
		]]
		if any_union_result1_upvr.onDismissed then
			any_union_result1_upvr.onDismissed(var32_upvr, arg1_2)
		end
		any_useState_result2_upvr_2(true)
	end, {any_useState_result2_upvr_2, var32_upvr})
	React_upvr.useEffect(function() -- Line 75
		--[[ Upvalues[4]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: var31_upvr (readonly)
			[3]: any_useCallback_result1_upvr (readonly)
			[4]: any_union_result1_upvr (readonly)
		]]
		local tbl_upvr_2 = {GuiService_upvr.MenuOpened:Connect(function() -- Line 77
			--[[ Upvalues[2]:
				[1]: var31_upvr (copied, readonly)
				[2]: any_useCallback_result1_upvr (copied, readonly)
			]]
			if var31_upvr then
				any_useCallback_result1_upvr("menuOpened")
			end
		end), any_union_result1_upvr.iconClickedSignal:connect(function() -- Line 82
			--[[ Upvalues[2]:
				[1]: var31_upvr (copied, readonly)
				[2]: any_useCallback_result1_upvr (copied, readonly)
			]]
			if var31_upvr then
				any_useCallback_result1_upvr("chatIconClicked")
			end
		end)}
		return function() -- Line 89
			--[[ Upvalues[1]:
				[1]: tbl_upvr_2 (readonly)
			]]
			for _, v in tbl_upvr_2 do
				if v.disconnect then
					v:disconnect()
				elseif v.Disconnect then
					v:Disconnect()
				end
			end
		end
	end, {GuiService_upvr.MenuOpened, any_union_result1_upvr.iconClickedSignal, var31_upvr, any_useCallback_result1_upvr})
	React_upvr.useEffect(function() -- Line 101
		--[[ Upvalues[6]:
			[1]: clearTimeout_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: var31_upvr (readonly)
			[4]: setTimeout_upvr (copied, readonly)
			[5]: any_useState_result2_upvr (readonly)
			[6]: any_union_result1_upvr (readonly)
		]]
		clearTimeout_upvr(any_useRef_result1_upvr.current)
		if var31_upvr then
			any_useRef_result1_upvr.current = setTimeout_upvr(function() -- Line 104
				--[[ Upvalues[2]:
					[1]: var31_upvr (copied, readonly)
					[2]: any_useState_result2_upvr (copied, readonly)
				]]
				if var31_upvr then
					any_useState_result2_upvr(true)
				end
			end, any_union_result1_upvr.showDelay)
		end
	end, {var31_upvr, any_useRef_result1_upvr})
	React_upvr.useEffect(function() -- Line 113
		--[[ Upvalues[6]:
			[1]: clearTimeout_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: any_useState_result1_upvr (readonly)
			[4]: setTimeout_upvr (copied, readonly)
			[5]: any_useCallback_result1_upvr (readonly)
			[6]: any_union_result1_upvr (readonly)
		]]
		clearTimeout_upvr(any_useRef_result1_upvr_2.current)
		if any_useState_result1_upvr then
			any_useRef_result1_upvr_2.current = setTimeout_upvr(function() -- Line 116
				--[[ Upvalues[1]:
					[1]: any_useCallback_result1_upvr (copied, readonly)
				]]
				any_useCallback_result1_upvr("timeout")
			end, any_union_result1_upvr.dismissDelay)
		end
	end, {any_useState_result1_upvr, any_useRef_result1_upvr_2})
	React_upvr.useEffect(function() -- Line 122
		--[[ Upvalues[3]:
			[1]: var32_upvr (readonly)
			[2]: any_union_result1_upvr (readonly)
			[3]: AppStorageService_upvr (copied, readonly)
		]]
		if var32_upvr and any_union_result1_upvr.localStorageKey then
			pcall(function() -- Line 124
				--[[ Upvalues[2]:
					[1]: AppStorageService_upvr (copied, readonly)
					[2]: any_union_result1_upvr (copied, readonly)
				]]
				AppStorageService_upvr:SetItem(any_union_result1_upvr.localStorageKey, "true")
			end)
		end
	end, {var32_upvr, any_union_result1_upvr.localStorageKey})
	return withTooltip_upvr({
		headerText = useLocalization_upvr_result1.headerText;
		bodyText = useLocalization_upvr_result1.bodyText;
	}, {
		DisplayOrder = 10;
		active = var32_upvr;
		guiTarget = CoreGui_upvr;
		preferredOrientation = TooltipOrientation_upvr.Bottom;
	}, function(arg1_3) -- Line 139
		--[[ Upvalues[1]:
			[1]: React_upvr (copied, readonly)
		]]
		local module = {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
		}
		module[React_upvr.Change.AbsoluteSize] = arg1_3
		module[React_upvr.Change.AbsolutePosition] = arg1_3
		return React_upvr.createElement("Frame", module)
	end)
end