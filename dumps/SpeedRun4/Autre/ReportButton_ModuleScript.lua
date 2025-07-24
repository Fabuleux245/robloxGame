-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:54
-- Luau version 6, Types version 3
-- Time taken: 0.001339 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local Parent = script.Parent.Parent.Parent
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	userId = t.optional(t.integer);
	userName = t.optional(t.string);
	LayoutOrder = t.integer;
	dispatchOpenReportDialog = t.callback;
})
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
local Roact_upvr = InGameMenuDependencies.Roact
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local Assets_upvr = require(Parent.Resources.Assets)
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local OpenReportDialog_upvr = require(Parent.Actions.OpenReportDialog)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(nil, function(arg1) -- Line 49
	--[[ Upvalues[1]:
		[1]: OpenReportDialog_upvr (readonly)
	]]
	return {
		dispatchOpenReportDialog = function(arg1_3, arg2) -- Line 51, Named "dispatchOpenReportDialog"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: OpenReportDialog_upvr (copied, readonly)
			]]
			arg1(OpenReportDialog_upvr(arg1_3, arg2))
		end;
	}
end)(function(arg1) -- Line 28, Named "ReportButton"
	--[[ Upvalues[7]:
		[1]: GlobalConfig_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: withSelectionCursorProvider_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ImageSetButton_upvr (readonly)
		[6]: Assets_upvr (readonly)
		[7]: CursorKind_upvr (readonly)
	]]
	if GlobalConfig_upvr.propValidation then
		assert(any_strictInterface_result1_upvr(arg1))
	end
	return withSelectionCursorProvider_upvr(function(arg1_2) -- Line 33
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ImageSetButton_upvr (copied, readonly)
			[3]: Assets_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: CursorKind_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(ImageSetButton_upvr, {
			Selectable = false;
			Image = Assets_upvr.Images.ReportIcon;
			Size = UDim2.new(0, 36, 0, 36);
			ImageColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			LayoutOrder = arg1.LayoutOrder;
			SelectionImageObject = arg1_2(CursorKind_upvr.RoundedRectNoInset);
			[Roact_upvr.Event.Activated] = function() -- Line 42
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1.dispatchOpenReportDialog(arg1.userId, arg1.userName)
			end;
		})
	end)
end)