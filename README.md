#distnote

`distnote` is a command line utilty for OS X to observe [NSDistributedNotificationCenter](https://developer.apple.com/library/mac/documentation/cocoa/reference/foundation/classes/NSDistributedNotificationCenter_Class/Reference/Reference.html) messages.

##Usage

	distnote [filter]
		filter: a single event that should be captured
		  if you want to capture know when a new Spotify track starts, run:
		  $ distnote com.spotify.client.PlaybackStateChanged

###Examples

	$ distnote 
	2014-06-13 22:00:27.732 distnote[60819:507] com.spotify.client.PlaybackStateChanged	2014-06-13 22:00:27.732 distnote[60819:507] object(__NSCFString): com.spotify.client	2014-06-13 22:00:27.733 distnote[60819:507] {	    Album = Dynamite;	    "Album Artist" = Jamiroquai;	    Artist = Jamiroquai;	    "Disc Number" = 1;	    Duration = 284;	    "Has Artwork" = 1;	    Name = "Black Devil Car";	    "Play Count" = 0;	    "Playback Position" = 0;	    "Player State" = Playing;	    Popularity = 31;	    Starred = 0;	    "Track ID" = "spotify:track:1zyJTcJt1Q2hQXcERUn99R";	    "Track Number" = 10;		}	2014-06-13 22:00:42.315 distnote[43167:707] MessagesUnreadCountDidChangeNotification
	2014-06-13 22:00:42.316 distnote[43167:707] {
	    MessagesUnreadCountKey = 1;
	}

Only receive iTunes track info:

	$distnote com.apple.iTunes.playerInfo
	2014-06-13 22:08:44.769 distnote[43167:707] com.apple.iTunes.playerInfo
	2014-06-13 22:08:44.769 distnote[43167:707] object(__NSCFString): com.apple.iTunes.player
	2014-06-13 22:08:44.770 distnote[43167:707] {
	    Album = Braille;
	    "Album Artist" = Json;
	    "Album Rating" = 0;
	    "Album Rating Computed" = 1;
	    Artist = Json;
	    "Artwork Count" = 1;
	    "Disc Count" = 1;
	    "Disc Number" = 1;
	    Genre = "Hip-Hop/Rap";
	    "Library PersistentID" = "-4448374750753146283";
	    Location = "file://localhost/Users..";
	    Name = "Passing (feat. Serge & K.B.)";
	    PersistentID = "-7723761371310118309";
	    "Play Count" = 0;
	    "Player State" = Playing;
	    "Playlist PersistentID" = 554135900408015109;
	    "Rating Computed" = 1;
	    "Skip Count" = 0;
	    "Store URL" = "itms://itunes.com/album?p=657443122&s=143441&i=657443534";
	    "Total Time" = 280680;
	    "Track Count" = 13;
	    "Track Number" = 2;
	    Year = 2013;
	}