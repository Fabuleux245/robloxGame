-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:40
-- Luau version 6, Types version 3
-- Time taken: 0.001491 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local tbl_upvr = {
	size = UDim2.new(1, 0, 0, 52);
}
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local React_upvr = require(VirtualEvents.Parent.React)
local Cell_upvr = UIBlox.App.Table.Cell
local CellHeadDetail_upvr = UIBlox.App.Table.CellHeadDetail
local CellTailDescription_upvr = UIBlox.App.Table.CellTailDescription
local EventHostName_upvr = require(VirtualEvents.Components.EventHostName)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixEventHostLargeText", false)
return function(arg1) -- Line 29, Named "EventHostedBy"
	--[[ Upvalues[10]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: Cell_upvr (readonly)
		[7]: CellHeadDetail_upvr (readonly)
		[8]: CellTailDescription_upvr (readonly)
		[9]: EventHostName_upvr (readonly)
		[10]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local any_join_result1_upvw = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local useStyle_upvr_result1 = useStyle_upvr()
	local module = {
		size = any_join_result1_upvw.size;
		userInteractionEnabled = true;
		horizontalPadding = 0;
		onActivated = React_upvr.useCallback(function() -- Line 37
			--[[ Upvalues[1]:
				[1]: any_join_result1_upvw (read and write)
			]]
			if any_join_result1_upvw.onActivated then
				any_join_result1_upvw.onActivated(any_join_result1_upvw.host)
			end
		end, {any_join_result1_upvw});
		head = React_upvr.createElement(CellHeadDetail_upvr, {
			labelText = useLocalization_upvr({
				hostedBy = "Feature.VirtualEvents.HostedByLabel";
			}).hostedBy;
			labelTextColor = useStyle_upvr_result1.Theme.TextDefault;
			labelTextFont = useStyle_upvr_result1.Font.Body;
		});
	}
	local any_createElement_result1 = React_upvr.createElement(CellTailDescription_upvr, {
		text = "";
		renderTextOverride = function() -- Line 55, Named "renderTextOverride"
			--[[ Upvalues[3]:
				[1]: React_upvr (copied, readonly)
				[2]: EventHostName_upvr (copied, readonly)
				[3]: any_join_result1_upvw (read and write)
			]]
			return React_upvr.createElement(EventHostName_upvr, {
				host = any_join_result1_upvw.host;
			})
		end;
		showArrow = true;
	})
	module.tail = any_createElement_result1
	if game_DefineFastFlag_result1_upvr then
		any_createElement_result1 = true
	else
		any_createElement_result1 = nil
	end
	module.layoutWraps = any_createElement_result1
	return React_upvr.createElement(Cell_upvr, module)
end