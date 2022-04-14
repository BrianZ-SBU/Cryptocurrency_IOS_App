Unit 8: Group Milestone - README
===

# Cyptoverse

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
1. [Data Models](#Data-Models)
1. [Networking](#Networking)

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

* [X] User logs in into his or her account, or registers for an account
* [X] User views crypto table
* [X] User can either view crypto prices or click discussion board
* User can comment on discussion board

**Optional Nice-to-have Stories**

* View profiles of other users
* A feature to check what coins users are into by viewing profiles
* Auto update coin prices

### 2. Screen Archetypes

* Login 
* Register - User signs up or logs into their account
   * Upon Download/Reopening of the application, the user is prompted to log in to gain access to their profile information to be properly matched with another person. 
   * ...
* Forums list - To see list of discussions
* Messaging Screen - Chat for users to communicate
* Profile Screen 
   * Allows user to display the coins they like, and other basic information
* Crypto Screen
   * Allows user to view basic prices of crypto
* In-depth Crypto Screen
   * Allows users to view indepth statistics on cryptocurrencies

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Cryptocurrencies
* Profile
* Forums


**Flow Navigation** (Screen to Screen)
* Forced Log-in -> Account creation if no log in is available
* Cryptocurrencies -> In-depth crypto screen
* Forums list -> Messaging screen
* Forums list -> Profile

## Wireframes
<img src="https://user-images.githubusercontent.com/98859452/160974104-14871828-8fc1-4db6-ab0e-d552c59ff637.jpg" width=800><br>

## Data Models
  * Posts
     | Property      | Type     | Description |
     | ------------- | -------- | ------------|
     | objectId      | String   | unique id for the user post (default field) |
     | author        | Pointer to User| image author |
     | commentsCount | Number   | Number of comments in a discussion post |
     | blurb         | String   | blurb by user |

  
## Networking
 * Discussion Screen
    * (Create / POST) User can create comments in a discussion
    * (Read / GET) Fetches existing comments in the discussion post 
 * Home Screen
    * (Read / GET) Fetches crypto data from CoinAPI.io
    * (Update / PUT) Updates prices by either auto refresh or pull down 
 * Statistic Screen
    * (Read / GET) Fetches further crypto data from CoinAPI.io
    * (Update / PUT) Updates statistics by either auto refresh or pull down
 * Profile Screen
    * (Create / POST) User can add a small blurb about themselves, or what types of coins they are interested in
    * (Delete) Delete existing blurb

 ## Existing API Endpoints
  * https://docs.coinapi.io/#md-docs

