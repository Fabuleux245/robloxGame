-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:56
-- Luau version 6, Types version 3
-- Time taken: 0.002065 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("EnterOutfitNamePrompt")
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.Vector2;
	signalCreateOutfitPermissionDenied = t.callback;
	performCreateOutfit = t.callback;
})
function any_extend_result1.init(arg1) -- Line 33
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1:setState({
		outfitName = "";
		alertPosition = UDim2.fromScale(0.5, 0.5);
	})
	arg1.textBoxRef = Roact_upvr.createRef()
	function arg1.confirmCreateOutfit() -- Line 41
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.performCreateOutfit(arg1.state.outfitName)
	end
	function arg1.textUpdated(arg1_2) -- Line 45
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.outfitName = arg1_2
		arg1:setState(tbl)
	end
end
local PromptWithTextField_upvr = require(Parent_2.Prompts.PromptWithTextField)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local ButtonType_upvr = require(CorePackages.Packages.UIBlox).App.Button.Enum.ButtonType
function any_extend_result1.render(arg1) -- Line 52
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: PromptWithTextField_upvr (readonly)
		[3]: RobloxTranslator_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
	]]
	local module = {
		fieldText = arg1.state.outfitName;
		onFieldTextUpdated = arg1.textUpdated;
		title = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptTitle");
	}
	local tbl_2 = {}
	local tbl_3 = {}
	local tbl_5 = {}
	local var21 = ButtonType_upvr
	tbl_5.buttonType = var21.PrimarySystem
	local tbl_4 = {}
	if arg1.state.outfitName ~= "" then
		var21 = false
	else
		var21 = true
	end
	tbl_4.isDisabled = var21
	tbl_4.onActivated = arg1.confirmCreateOutfit
	tbl_4.text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptYes")
	tbl_5.props = tbl_4
	tbl_5.isDefaultChild = false
	tbl_3[1] = {
		props = {
			onActivated = arg1.props.signalCreateOutfitPermissionDenied;
			text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptNo");
		};
		isDefaultChild = true;
	}
	tbl_3[2] = tbl_5
	tbl_2.buttons = tbl_3
	module.buttonStackInfo = tbl_2
	return Roact_upvr.createElement(PromptWithTextField_upvr, module)
end
local SignalCreateOutfitPermissionDenied_upvr = require(Parent.Thunks.SignalCreateOutfitPermissionDenied)
local PerformCreateOutfit_upvr = require(Parent.Thunks.PerformCreateOutfit)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 82, Named "mapStateToProps"
	return {
		screenSize = arg1.screenSize;
	}
end, function(arg1) -- Line 88, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: SignalCreateOutfitPermissionDenied_upvr (readonly)
		[2]: PerformCreateOutfit_upvr (readonly)
	]]
	return {
		signalCreateOutfitPermissionDenied = function() -- Line 90, Named "signalCreateOutfitPermissionDenied"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SignalCreateOutfitPermissionDenied_upvr (copied, readonly)
			]]
			return arg1(SignalCreateOutfitPermissionDenied_upvr)
		end;
		performCreateOutfit = function(arg1_3) -- Line 94, Named "performCreateOutfit"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: PerformCreateOutfit_upvr (copied, readonly)
			]]
			return arg1(PerformCreateOutfit_upvr(arg1_3))
		end;
	}
end)(any_extend_result1)