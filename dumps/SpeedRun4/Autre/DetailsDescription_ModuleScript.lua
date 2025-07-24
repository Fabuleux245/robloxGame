-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:49
-- Luau version 6, Types version 3
-- Time taken: 0.002598 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("DetailsDescription")
local UtilityFunctions_upvr = require(Parent.UtilityFunctions)
function any_extend_result1.setText(arg1) -- Line 18
	--[[ Upvalues[1]:
		[1]: UtilityFunctions_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	local assetInfo = arg1.props.assetInfo
	if not assetInfo then
		assetInfo = {}
	end
	if assetInfo.parentBundleId == nil then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 12. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 12. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 13. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 13. Error Block 9 end (CF ANALYSIS FAILED)
end
function any_extend_result1.init(arg1) -- Line 34
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.description = ""
	arg1.descriptionRef = Roact_upvr.createRef()
end
local Colors_upvr = require(Parent.Colors)
function any_extend_result1.render(arg1) -- Line 39
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: AppFonts_upvr (readonly)
		[3]: Colors_upvr (readonly)
	]]
	arg1:setText()
	return Roact_upvr.createElement("TextLabel", {
		BackgroundTransparency = 1;
		LayoutOrder = 4;
		Size = UDim2.new(1, -20, 0, arg1:calculateSize());
		Text = arg1.description or "";
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		TextSize = 16;
		TextWrapped = true;
		Font = AppFonts_upvr.default:getDefault();
		TextColor3 = Colors_upvr.White;
		[Roact_upvr.Ref] = arg1.descriptionRef;
	})
end
local TextService_upvr = game:GetService("TextService")
function any_extend_result1.calculateSize(arg1) -- Line 58
	--[[ Upvalues[2]:
		[1]: TextService_upvr (readonly)
		[2]: AppFonts_upvr (readonly)
	]]
	if arg1.descriptionRef.current and arg1.props.assetInfo then
		return TextService_upvr:GetTextSize(arg1.description, 16, AppFonts_upvr.default:getDefault(), Vector2.new(arg1.descriptionRef.current.AbsoluteSize.X, 5000)).Y
	end
end
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 70
	return {
		view = arg1.view;
		assetInfo = arg1.assets[arg1.detailsInformation.assetId];
		detailsInformation = arg1.detailsInformation;
		bundleInfo = arg1.bundles;
	}
end)(any_extend_result1)