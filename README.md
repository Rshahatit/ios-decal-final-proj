# ios-decal-final-proj
LetsDJ

Group Representative: Rami Shahatit 

LetsDJ

Authors
- Rami Shahatit
- Ravi Patel
- Milan Saxena

Purpose
LetsDJ allows you to give a select number of people to be the DJ for your awesome party! Let your most musical friends have control and make the party a blast!

Features
- Give certain friends with Spotify accounts access to this shared playlist.
- Search songs, artists and albums from spotify to add to the global playlist.
- Once you have access, you can queue songs to the playlist.
- Finally, you can play songs from the playlist.

Control Flow

You are hosting a party and want to have a lit soundtrack/playlist. You and 3 of your friends want to create a shared playlist. The main screen will allow you to search for songs to add to the playlist. You can then sample songs and proceed to add the song to the global playlist you created. After you click on the playlist, you will see all the songs in order of when they will play. That screen will have a button to add everyone you want to be able to contribute to this playlist. Then any person with access can click add, to search spotify and queue a song to the playlist.

Implementation Details:  
  TableViewController : For searching Spotify for songs, artists and albums.
  
  AudioViewController : For playing the specific song & adding to the global playlist.
  
  PlaylistTableViewController : For storing all the songs you have added to the playlist.
  
  AudioFinalViewController : For playing the songs from the global playlist.



---- UPDATE ----


Hey! This is our final project for iOS decal.

When you first open the app, you see a blank table view with a search bar. You can search for any song, artist or album. Once you find the appropriate song you wish to play, you can click on it, where a preview of the song will play (since neither Milan nor I had Spotify premium we couldn’t play the full song). Also, in this beginning Table View Controller, you can also see the current playlist that you’ve made by clicking the button. If you click on the song, it will transition into another view controller where the album art as well as some cool background image will appear. In this View Controller, you can pause/play the song as well as add it to the playlist. If you add it to the playlist, it will then go to another table view controller and this song will appear on the table cell as expected. Now, from this Playlist Table View Controller, you have the option to click on a song from the playlist and play that song or go back and search for more songs by clicking the back button.

One bug we have is that it is squaring the amount of songs we add to the playlist. For example, if we add two songs, the playlist will have those two songs in order twice. 

Hope you guys like this project,

Sincerely,

Ravi & Milan


