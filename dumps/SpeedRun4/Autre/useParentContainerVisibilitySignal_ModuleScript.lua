-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:08
-- Luau version 6, Types version 3
-- Time taken: 0.001019 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local ParentContainerContext_upvr = require(AppChat.Contexts.ParentContainer.ParentContainerContext)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local setAppChatVisible_upvr = require(AppChat.App.AppChatVisible).setAppChatVisible
local EnteredChatFromEntryPoint_upvr = require(AppChat.Actions.EnteredChatFromEntryPoint)
return function() -- Line 13
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: ParentContainerContext_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: setAppChatVisible_upvr (readonly)
		[5]: EnteredChatFromEntryPoint_upvr (readonly)
	]]
	local any_useContext_result1 = React_upvr.useContext(ParentContainerContext_upvr)
	local visibilitySignal_upvr = any_useContext_result1.visibilitySignal
	local getShouldSetAppChatVisible_upvr = any_useContext_result1.getShouldSetAppChatVisible
	local entryPoint_upvr = any_useContext_result1.entryPoint
	local var6_result1_upvr = useDispatch_upvr()
	React_upvr.useEffect(function() -- Line 20
		--[[ Upvalues[6]:
			[1]: visibilitySignal_upvr (readonly)
			[2]: getShouldSetAppChatVisible_upvr (readonly)
			[3]: setAppChatVisible_upvr (copied, readonly)
			[4]: var6_result1_upvr (readonly)
			[5]: EnteredChatFromEntryPoint_upvr (copied, readonly)
			[6]: entryPoint_upvr (readonly)
		]]
		local any_connect_result1_upvw = visibilitySignal_upvr:connect(function(...) -- Line 23
			--[[ Upvalues[5]:
				[1]: getShouldSetAppChatVisible_upvr (copied, readonly)
				[2]: setAppChatVisible_upvr (copied, readonly)
				[3]: var6_result1_upvr (copied, readonly)
				[4]: EnteredChatFromEntryPoint_upvr (copied, readonly)
				[5]: entryPoint_upvr (copied, readonly)
			]]
			if getShouldSetAppChatVisible_upvr(...) then
				setAppChatVisible_upvr(true)
				var6_result1_upvr(EnteredChatFromEntryPoint_upvr(entryPoint_upvr))
			else
				setAppChatVisible_upvr(false)
			end
		end)
		return function() -- Line 32
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvw (read and write)
			]]
			if any_connect_result1_upvw then
				any_connect_result1_upvw:disconnect()
			end
		end
	end, {setAppChatVisible_upvr, var6_result1_upvr, visibilitySignal_upvr, getShouldSetAppChatVisible_upvr, entryPoint_upvr})
end