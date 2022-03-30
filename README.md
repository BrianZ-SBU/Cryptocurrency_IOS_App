Unit 8: Group Milestone - README
===

# Cyptoverse

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)

## Overview
### Description
Tracks cryptocurrency statistics and displays it in a table format. Also will implement a forum system for users to discuss about crypto. Could be used for people to learn more about crypto.

### App Evaluation
- **Category:** Educational
- **Mobile:** This app would be primarily developed for mobile. If more features are added, then it could be used on computers as well. However, as it there are not that many planned features yet, the development is mainly focused on smart phones.
- **Story:** The user selects a crypto coin, views the statistics, and can choose to leave a comment about it.
- **Market:** Any person can use this app, as it just tracks statistics. The age range of this app may be skewed for older people though.
- **Habit:** This app can be used as often as the user wants. Since crypto is gaining popularity and the value of most notable coins are rising, more and more people are becoming interested in crypto, which means that there is a larger incentive to check the app.
- **Scope:** First we will implement a coin api to retrieve the values, then displaying it on a table. On clicking a coin, the user then can see other statistics such as the percent change, low, high, and maybe a graph displaying the data. On a separate screen, a forum hub will appear, with users clicking the forum to access discussions.

## Product Spec
### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User logs in to access previous chats and preference settings
* User picks what their favorite artist/genre/etc. (Think Spotify interface)
* Matches have a chat window to get to know each other, with the ability to skip music and unmatch (Tinder Style).
* Profile pages for each user
* Settings (Accesibility, Notification, General, etc.)

**Optional Nice-to-have Stories**

* Log of past songs/people with album art covers matching
* Page of most played songs (i.e. songs that most users are connecting through)
* Profile Add-On: Top music choices, etc.
* Optional Shuffle Button (i.e. random encounter/random song)
* Listening/Encounter Queue

### 2. Screen Archetypes

* Login 
* Register - User signs up or logs into their account
   * Upon Download/Reopening of the application, the user is prompted to log in to gain access to their profile information to be properly matched with another person. 
   * ...
* Messaging Screen - Chat for users to communicate (direct 1-on-1)
   * Upon selecting music choice users matched and message screen opens
* Profile Screen 
   * Allows user to upload a photo and fill in information that is interesting to them and others
* Song Selection Screen.
   * Allows user to be able to choose their desired song, artist, genre of preference and begin listening and interacting with others.
* Settings Screen
   * Lets people change language, and app notification settings.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Music selection
* Profile
* Settings

Optional:
* Music/Encounter Queue
* Discover (Top Choices)

**Flow Navigation** (Screen to Screen)
* Forced Log-in -> Account creation if no log in is available
* Music Selection (Or Queue if Optional) -> Jumps to Chat
* Profile -> Text field to be modified. 
* Settings -> Toggle settings

## Wireframes
<img src="https://i.imgur.com/9CrjH1K.jpg" width=800><br>

### [BONUS] Digital Wireframes & Mockups
<img src="https://i.imgur.com/lYHn37F.jpg" height=200>

### [BONUS] Interactive Prototype
<img src="https://i.imgur.com/AiKfE5g.gif" width=200>
