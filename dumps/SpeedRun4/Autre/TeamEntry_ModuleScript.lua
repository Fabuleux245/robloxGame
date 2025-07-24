-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:23
-- Luau version 6, Types version 3
-- Time taken: 0.002431 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui_upvr = game:GetService("CoreGui")
local Roact_upvr = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local FFlagPlayerListReduceRerenders_upvr = require(Parent_2.Flags.FFlagPlayerListReduceRerenders)
local any_extend_result1 = Roact_upvr.PureComponent:extend("TeamEntry")
local WithLayoutValues_upvr = require(Parent.Connection.LayoutValues).WithLayoutValues
local withStyle_upvr = require(CorePackages.Packages.UIBlox).Style.withStyle
local GameTranslator_upvr = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.GameTranslator)
local StatEntry_upvr = require(script.Parent.StatEntry)
function any_extend_result1.render(arg1) -- Line 29
	--[[ Upvalues[7]:
		[1]: WithLayoutValues_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: GameTranslator_upvr (readonly)
		[4]: CoreGui_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: FFlagPlayerListReduceRerenders_upvr (readonly)
		[7]: StatEntry_upvr (readonly)
	]]
	return WithLayoutValues_upvr(function(arg1_2) -- Line 30
		--[[ Upvalues[7]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: GameTranslator_upvr (copied, readonly)
			[4]: CoreGui_upvr (copied, readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: FFlagPlayerListReduceRerenders_upvr (copied, readonly)
			[7]: StatEntry_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 31
			--[[ Upvalues[7]:
				[1]: arg1 (copied, readonly)
				[2]: GameTranslator_upvr (copied, readonly)
				[3]: CoreGui_upvr (copied, readonly)
				[4]: arg1_2 (readonly)
				[5]: Roact_upvr (copied, readonly)
				[6]: FFlagPlayerListReduceRerenders_upvr (copied, readonly)
				[7]: StatEntry_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [194] 126. Error Block 9 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [194] 126. Error Block 9 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [194.3]
			if nil then
			else
			end
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [194.8]
			if nil then
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [194.13]
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [194.4393124]
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [194.11]
				if nil >= nil then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [194.9]
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [194.10]
					-- KONSTANTWARNING: GOTO [159] #102
				end
			else
				for i, v in ipairs(arg1.props.gameStats) do
					if arg1_2.MaxLeaderstats < i then break end
					local tbl = {
						statValue = arg1.props.leaderstats[v.name];
						isTitleEntry = false;
						isTeamEntry = true;
					}
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [234.4]
					tbl.textStyle = nil
					tbl.layoutOrder = i
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [239.7]
					nil["GameStat_"..v.name] = Roact_upvr.createElement(StatEntry_upvr, tbl)
				end
			end
			-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [242] 158. Error Block 16 start (CF ANALYSIS FAILED)
			local module = {}
			v = arg1.props
			i = v.layoutOrder
			module.LayoutOrder = i
			i = UDim2.new
			v = 1
			i = i(v, 0, 0, arg1_2.TeamEntrySizeY)
			module.Size = i
			v = arg1.props
			i = v.Position
			module.Position = i
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			v = nil.PreferredTransparency
			i = v * 0.5
			module.BackgroundTransparency = i
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [277.2]
			module.BackgroundColor3 = nil
			i = 0
			module.BorderSizePixel = i
			i = nil
			do
				return Roact_upvr.createElement("Frame", module, i)
			end
			-- KONSTANTERROR: [242] 158. Error Block 16 end (CF ANALYSIS FAILED)
		end)
	end)
end
local function mapStateToProps(arg1) -- Line 114
	return {
		isSmallTouchDevice = arg1.displayOptions.isSmallTouchDevice;
	}
end
if FFlagPlayerListReduceRerenders_upvr then
	return require(CorePackages.Packages.React).memo(RoactRodux.connect(mapStateToProps, nil)(any_extend_result1), require(Parent_2.createShallowEqualAndTables)({"gameStatNames", "leaderstats"}))
end
return RoactRodux.connect(mapStateToProps, nil)(any_extend_result1)