-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:19
-- Luau version 6, Types version 3
-- Time taken: 0.003583 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local any_wrap_result1_upvr = require(CorePackages.Workspace.Packages.ArgCheck).wrap(t.strictInterface({
	buttonSize = t.UDim2;
	dropdownList = t.table;
	selectedIndex = t.number;
	onSelection = t.callback;
	layoutOrder = t.number;
}))
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(CorePackages.Packages.React)
local Roact_upvr = require(CorePackages.Packages.Roact)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_actions_truncationExpand_small_upvr = UIBlox.App.ImageSet.Images["icons/actions/truncationExpand_small"]
local BaseMenu_upvr = UIBlox.App.Menu.BaseMenu
return function(arg1) -- Line 45, Named "DropdownMenu"
	--[[ Upvalues[7]:
		[1]: any_wrap_result1_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: icons_actions_truncationExpand_small_upvr (readonly)
		[7]: BaseMenu_upvr (readonly)
	]]
	assert(any_wrap_result1_upvr(arg1))
	local useStyle_upvr_result1 = useStyle_upvr()
	local CaptionHeader_upvr = useStyle_upvr_result1.Font.CaptionHeader
	local RelativeSize = CaptionHeader_upvr.RelativeSize
	if useStyle_upvr_result1.UIBloxThemeEnabled then
		RelativeSize = useStyle_upvr_result1.color("ControlInputBackground")
	else
		RelativeSize = Color3.fromRGB(79, 84, 95)
	end
	local any_useState_result1_2_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState({})
	React_upvr.useEffect(function() -- Line 62
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: CaptionHeader_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
		]]
		local tbl_2 = {}
		for i_upvr, v in pairs(arg1.dropdownList) do
			local tbl = {
				text = v;
				fontStyle = {
					Font = CaptionHeader_upvr.Font;
					RelativeSize = CaptionHeader_upvr.RelativeSize;
				};
			}
			local function onActivated() -- Line 71
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: i_upvr (readonly)
					[3]: any_useState_result2_upvr (copied, readonly)
				]]
				arg1.onSelection(i_upvr)
				any_useState_result2_upvr(false)
			end
			tbl.onActivated = onActivated
			onActivated = -12
			local var31 = onActivated
			tbl.leftPaddingOffset = var31
			if i_upvr ~= arg1.selectedIndex then
				var31 = false
			else
				var31 = true
			end
			tbl.selected = var31
			tbl.selectedIconPaddingRight = 12
			tbl_2[i_upvr] = tbl
		end
		any_useState_result2_upvr_2(tbl_2)
	end, {arg1.dropdownList, arg1.selectedIndex})
	local module = {
		SpawnButton = Roact_upvr.createElement("TextButton", {
			Size = UDim2.new(1, 0, 1, 0);
			Text = arg1.dropdownList[arg1.selectedIndex];
			TextColor3 = Color3.new(1, 1, 1);
			TextSize = RelativeSize * useStyle_upvr_result1.Font.BaseSize;
			Font = CaptionHeader_upvr.Font;
			TextXAlignment = Enum.TextXAlignment.Left;
			BackgroundColor3 = RelativeSize;
			BackgroundTransparency = 0;
			LayoutOrder = arg1.layoutOrder;
			[Roact_upvr.Event.Activated] = React_upvr.useCallback(function() -- Line 58
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (readonly)
					[2]: any_useState_result1_2_upvr (readonly)
				]]
				any_useState_result2_upvr(not any_useState_result1_2_upvr)
			end);
		}, {
			UICorner = Roact_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 4);
			});
			UIPadding = Roact_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 12);
			});
			UIStroke = Roact_upvr.createElement("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
				Color = Color3.new(1, 1, 1);
				Thickness = 1;
				Transparency = 0.8;
			});
			Arrow = Roact_upvr.createElement(ImageSetLabel_upvr, {
				Image = icons_actions_truncationExpand_small_upvr;
				BackgroundTransparency = 1;
				Size = UDim2.new(0, 16, 0, 16);
				Position = UDim2.new(1, -28, 0.5, -8);
			});
		});
	}
	local var41 = any_useState_result1_2_upvr
	if var41 then
		var41 = Roact_upvr.createElement
		var41 = var41(BaseMenu_upvr, {
			buttonProps = any_useState_result1;
			position = UDim2.new(0, 0, 1, 6);
			layoutOrder = 2;
			elementHeight = 40;
			background = {
				Color = RelativeSize;
			};
			showDropShadow = true;
		})
	end
	module.Dropdown = var41
	return Roact_upvr.createElement("Frame", {
		Size = arg1.buttonSize;
		LayoutOrder = arg1.layoutOrder;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		ZIndex = 3;
	}, module)
end