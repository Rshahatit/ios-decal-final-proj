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
- Give certain friends with Spotify accounts access to this shared playlist
- Once you have access, you can queue songs to the playlist
- Members can vote to delete a song off the playlist (if majority of the people with access vote to delete a song, the song will get deleted)


Control Flow
You are hosting a party and want to have a lit soundtrack/playlist. You realize your music taste kind of sucks, so you give your 3 best friends access to this shared playlist. The main screen will have all the playlists you created. You then click on the playlist you want to use for the party. That will consist of all the songs in order of when they will play. That screen will have a button to add everyone  you want to be able to contribute to this playlist. Then any person with access can click add, to search spotify and queue a song to the playlist. Also, each song in this playlist will have a down arrow key and if a person clicks it, 1 will pop up next to it. If more than half the people its shared with click it, the song will get deleted from the playlist. 

Implementation
Model
- Login.Swift, Menu.Swift, SongQueue.Swift
View
- LoginView.Swift, MenuView.Swift, SongQueueView.Swift
Controller
- LoginController.Swift, MenuController.Swift, SongQueueController.Swift
