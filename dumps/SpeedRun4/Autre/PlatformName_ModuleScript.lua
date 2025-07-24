-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:01
-- Luau version 6, Types version 3
-- Time taken: 0.003038 seconds

local PeopleReactView = script:FindFirstAncestor("PeopleReactView")
local Parent = PeopleReactView.Parent
local Foundation = require(Parent.Foundation)
local PeopleService = require(Parent.PeopleService)
local SignalsReact = require(Parent.SignalsReact)
local useTokens_upvr = Foundation.Hooks.useTokens
local React_upvr = require(Parent.React)
local PeopleListStore_upvr = PeopleService.PeopleListStore
local useSignalState_upvr = SignalsReact.useSignalState
local useSignalBinding_upvr = SignalsReact.useSignalBinding
local PeopleUtility_upvr = PeopleService.PeopleUtility
local View_upvr = Foundation.View
local Constants_upvr = require(PeopleReactView.Constants)
local Button_upvr = Foundation.Button
local ButtonVariant_upvr = Foundation.Enums.ButtonVariant
local ButtonSize_upvr = Foundation.Enums.ButtonSize
return function(arg1) -- Line 33, Named "PlatformNameSection"
	--[[ Upvalues[11]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: PeopleListStore_upvr (readonly)
		[4]: useSignalState_upvr (readonly)
		[5]: useSignalBinding_upvr (readonly)
		[6]: PeopleUtility_upvr (readonly)
		[7]: View_upvr (readonly)
		[8]: Constants_upvr (readonly)
		[9]: Button_upvr (readonly)
		[10]: ButtonVariant_upvr (readonly)
		[11]: ButtonSize_upvr (readonly)
	]]
	local var6_result1 = useTokens_upvr()
	local useSignalState_upvr_result1_2 = useSignalState_upvr(React_upvr.useMemo(function() -- Line 37
		--[[ Upvalues[2]:
			[1]: PeopleListStore_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return PeopleListStore_upvr.get().getPlatformName(arg1.UserId)
	end, {arg1.UserId}))
	local var10_result1_upvr = useSignalBinding_upvr(React_upvr.useMemo(function() -- Line 41
		--[[ Upvalues[2]:
			[1]: PeopleListStore_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return PeopleListStore_upvr.get().getPlatformProfileId(arg1.UserId)
	end, {arg1.UserId}))
	local function var40() -- Line 49
		--[[ Upvalues[2]:
			[1]: var10_result1_upvr (readonly)
			[2]: PeopleUtility_upvr (copied, readonly)
		]]
		PeopleUtility_upvr.showPlatformProfile(var10_result1_upvr:getValue())
	end
	var40 = useSignalState_upvr_result1_2
	local var42 = var40
	if var42 then
		var42 = false
		if type(useSignalState_upvr_result1_2) == "string" then
			if 0 >= string.len(useSignalState_upvr_result1_2) then
				var42 = false
			else
				var42 = true
			end
		end
	end
	if not var42 then
		return nil
	end
	return React_upvr.createElement(View_upvr, {
		tag = "row gap-xsmall align-y-center auto-x size-0-full";
		LayoutOrder = 2;
	}, {
		PlatformIconContainer = React_upvr.createElement(View_upvr, {
			tag = "auto-xy";
			LayoutOrder = 1;
		}, {
			PlatformIcon = React_upvr.createElement("ImageLabel", {
				Image = Constants_upvr.PEOPLEPAGE.PERSON_ROW.PLATFORM_LOGO_IMAGE;
				Size = UDim2.fromOffset(var6_result1.Size.Size_900, var6_result1.Size.Size_900);
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				ImageColor3 = var6_result1.Color.Content.Default.Color3;
			});
		});
		PlatformNameButton = React_upvr.createElement(Button_upvr, {
			onActivated = React_upvr.useCallback(var40, {var10_result1_upvr});
			text = useSignalState_upvr_result1_2;
			variant = ButtonVariant_upvr.Text;
			size = ButtonSize_upvr.Small;
			LayoutOrder = 2;
		});
	})
end