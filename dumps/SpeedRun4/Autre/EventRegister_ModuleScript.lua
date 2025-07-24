-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:52
-- Luau version 6, Types version 3
-- Time taken: 0.001007 seconds

local Events = require(script.Parent.Events)
local EventModes = require(script.Parent.EventModes)
return {
	[Events.TestEvent] = {
		mode = EventModes.Default;
	};
	[Events.TestStrictEvent] = {
		mode = EventModes.Strict;
	};
	[Events.CaptureShared] = {
		mode = EventModes.Default;
	};
	[Events.CaptureTaken] = {
		mode = EventModes.Default;
	};
	[Events.EditProfileOpened] = {
		mode = EventModes.Default;
	};
	[Events.ProfileOpened] = {
		mode = EventModes.Default;
	};
	[Events.JoinGameCardOpened] = {
		mode = EventModes.Default;
	};
	[Events.PYMKCarouselLoaded] = {
		mode = EventModes.Default;
	};
	[Events.CustomizeNameOpened] = {
		mode = EventModes.Default;
	};
	[Events.StaticShareLinkOpened] = {
		mode = EventModes.Default;
	};
	[Events.ShareLinkOpened] = {
		mode = EventModes.Default;
	};
}