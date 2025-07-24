-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:24
-- Luau version 6, Types version 3
-- Time taken: 0.002423 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui_upvr = game:GetService("CoreGui")
local Roact_upvr = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("TitleBar")
any_extend_result1.validateProps = t.strictInterface({
	Size = t.UDim2;
	Position = t.optional(t.UDim2);
	LayoutOrder = t.optional(t.integer);
	entrySize = t.integer;
	contentsVisible = t.boolean;
	isSmallTouchDevice = t.boolean;
	gameStats = t.array(t.strictInterface({
		name = t.string;
		text = t.string;
		addId = t.integer;
		isPrimary = t.boolean;
		priority = t.number;
	}));
})
local WithLayoutValues_upvr = require(script.Parent.Parent.Connection.LayoutValues).WithLayoutValues
local withStyle_upvr = require(CorePackages.Packages.UIBlox).Style.withStyle
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local GameTranslator_upvr = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.GameTranslator)
function any_extend_result1.render(arg1) -- Line 44
	--[[ Upvalues[6]:
		[1]: WithLayoutValues_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: RobloxTranslator_upvr (readonly)
		[5]: GameTranslator_upvr (readonly)
		[6]: CoreGui_upvr (readonly)
	]]
	return WithLayoutValues_upvr(function(arg1_2) -- Line 45
		--[[ Upvalues[6]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: RobloxTranslator_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: GameTranslator_upvr (copied, readonly)
			[6]: CoreGui_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 46
			--[[ Upvalues[6]:
				[1]: Roact_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: RobloxTranslator_upvr (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: GameTranslator_upvr (copied, readonly)
				[6]: CoreGui_upvr (copied, readonly)
			]]
			local module = {
				UIListLayout = Roact_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Horizontal;
					VerticalAlignment = Enum.VerticalAlignment.Center;
				});
				PlayersHeader = Roact_upvr.createElement("TextLabel", {
					LayoutOrder = 0;
					Size = UDim2.new(0, arg1_2.PlayerNameSizeXMobile, 1, 0);
					Text = RobloxTranslator_upvr:FormatByKey("InGame.PlayerList.Players");
					BackgroundTransparency = 1;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextYAlignment = Enum.TextYAlignment.Center;
					Font = arg1_3.Font.Footer.Font;
					TextSize = arg1_3.Font.BaseSize * arg1_3.Font.Footer.RelativeSize;
					TextColor3 = arg1_3.Theme.TextMuted.Color;
				}, {
					Padding = Roact_upvr.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 14);
					});
				});
			}
			for i, v in ipairs(arg1.props.gameStats) do
				if arg1_2.MaxLeaderstats < i then break end
				module["Stat_"..v.name] = Roact_upvr.createElement("TextLabel", {
					LayoutOrder = i;
					Size = UDim2.new(0, arg1_2.StatEntrySizeX, 1, 0);
					Text = GameTranslator_upvr:TranslateGameText(CoreGui_upvr, v.name);
					BackgroundTransparency = 1;
					TextXAlignment = Enum.TextXAlignment.Center;
					TextYAlignment = Enum.TextYAlignment.Center;
					Font = arg1_3.Font.Footer.Font;
					TextSize = arg1_3.Font.BaseSize * arg1_3.Font.Footer.RelativeSize;
					TextTransparency = 0;
					TextColor3 = Color3.fromRGB(255, 255, 255);
					TextTruncate = Enum.TextTruncate.AtEnd;
				})
			end
			return Roact_upvr.createElement("Frame", {
				Size = arg1.props.Size;
				Position = arg1.props.Position;
				LayoutOrder = arg1.props.LayoutOrder;
				Visible = arg1.props.contentsVisible;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
			}, module)
		end)
	end)
end
local function mapStateToProps(arg1) -- Line 105
	return {
		isSmallTouchDevice = arg1.displayOptions.isSmallTouchDevice;
	}
end
if require(script.Parent.Parent.Parent.Flags.FFlagPlayerListReduceRerenders) then
	return require(CorePackages.Packages.React).memo(RoactRodux.connect(mapStateToProps, nil)(any_extend_result1))
end
return RoactRodux.connect(mapStateToProps, nil)(any_extend_result1)