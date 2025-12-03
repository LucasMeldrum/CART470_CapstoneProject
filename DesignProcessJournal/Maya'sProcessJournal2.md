# Final App!
Our final application ended up taking two forms: a high-fidelity working prototype on Figma and real working code that can send, receive, and store screen time data. After working through both the development of the user interface design and the actual implementation of the app, we decided that to properly portray the design changes we found in our user testing, we would need to create another interface on Figma. Both aspects of the prototype were incredibly important to our ability to portray, understand, and test our app and hold real value when expressing the idea to others. 

## User Interface: Designing for our Audience

In Week 7 of our weekly journals, we described four pain points/points of interest that interviewees had with our initial prototype:

1. Basic App Interface Improvements
2. Graph Readability and Necessity
3. The Stats They Always Wanted!
4. Data Privacy

For the development of our final prototype, we keep these points in mind as our driving force to create a user-friendly and genuinely impactful application-- something people would really use. Here are our amendments:

**1. Basic App Interface Improvements**   
- Made the Stats page easier to navigate using a slider bar at the top of the page.
  
<div align="center">

<img src="/Media/StatsPageWithSlider.png" alt="Stats Page Slider" width="30%" />

<p><em>Stats Page Showing Slider At Top</em></p>

</div>


**2. Graph Readability and Necessity**
- Changed the Daily, Weekly, and Monthly graphs to have more visual information on the X and Y axis for better visual communication.
  
<div align="center">

<img src="/Media/NewGraphsReadable.png" alt="New Graphs" width="30%" />

<p><em>ReDone Graphs to Have Better Axis</em></p>

</div>

- Changed the "Most Used Apps" widget on the front page to a bar graph showing screen time use throughout the week

<div align="center">

<img src="/Media/HomePagewithAverageTimes.png" alt="Front Page Graph" width="30%" />

<p><em>Redesigned Front Page Showing Weekly Average Graph</em></p>

</div>


**3. The Stats They Always Wanted!**
- Included more in-depth long-term stats like "This Day/Week/Month" stat graph as well as an "Average Day/Week/Month" stat graph.
- Allowed for long-term stat sharing between friends-- requestable on the Friends page
  
<div align="center">

<img src="/Media/FriendsPageWithLongTerm.png" alt="Friends page long term sharing" width="30%" />

<p><em>Friends Page Showing ability to View Long Term Statistics</em></p>

</div>

- Put the stats that were the most liked during interviews on the front page AND the stats page (Pickups per day and average session)

**4. Data Privacy**
- Added a "Data Privacy" setting on the front and friends pages. Linked to a pop up where users cna choose to stop sharing their short and long term statistics with their friends.
- Only friends are able to see stats.
- Some friends' long-term stats are not visible on friends page to show this feature.

<div align="center">

<img src="/Media/dataPrivacyPopup.png" alt="Data Privacy Popup" width="30%" />

<p><em>The Popup that Shows when the "Privacy Settings" Button is Pressed</em></p>

</div>

## Implementation



# Final User Testing

For our final round of user testing, we got the same three people who we interviewed first to use the app for around 7 minutes and then come back to use with comments. We have analyzed these comments and have concentrated them into a series of needed changes and design aspects that worked very well within our intended context. 

## Comments and Improvements on Design Goals
1. One user commented that the previous data privacy concerns she had were eradicated. She no longer felt hesitant to use the app since she would be able to stop sharing her screen time whenever she wanted.
2. Another previous user stated that the graphs were much more legible while also staying simplistic and nice to look at. She also liked how the graphs for different time periods (days, weeks, months) were unique to the type of information needed but stayed relatively visually uniform throughout. She did comment that she may want the ability to view data in a bar graph form- like how it is seen on the home page- instead of just a line graph. She also greatly commended the Home Screen and said it has all the features she wants right at the front and looks great.
3. One user said that the way information is laid out in the long-term stats page is slightly confusing. She is less interested in the screen time of each individual day or week and would like her weekly or daily average to be displayed first, like it is on IOS Screen Time Tracking devices.
4. One user said that they wanted to be able to compare their long-term statistics to their friends and would love it if the insights on the long-term stats friends page showed comparison insights. 

## How Comments Become Actionable Design Concepts
With these comments in mind, we brainstormed the next iteration of this application. Ideally, the next form would be fully functioning using the API calling and database management functions we were able to rudimentarily install in our implemented version. 
