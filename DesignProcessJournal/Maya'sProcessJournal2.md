# Final App!

Maya Marshel 

December 3rd, 2025

Our final application ended up taking two forms: a high-fidelity working prototype on Figma and real working code that can send, receive, and store screen time data. After working through both the development of the user interface design and the actual implementation of the app, we decided that to properly portray the design changes we found in our user testing, we would need to create another interface on Figma. Both aspects of the prototype were incredibly important to our ability to portray, understand, and test our app and hold real value when expressing the idea to others. 

_A video of the full app can be seen in the Media folder at "FinalVideoScreenTimeTrack.mp4"_

## User Interface: Designing for our Audience

In Week 7 of our weekly journals, we described four pain points/points of interest that interviewees had with our initial prototype:

1. Basic App Interface Improvements
2. Graph Readability and Necessity
3. The Stats They Always Wanted!
4. Data Privacy

For the development of our final prototype, we keep these points in mind as our driving force to create a user-friendly and genuinely impactful application-- something people would really use. When interviewing and creating the next protoype we were thinking directly about fulfilling the goals we set in the firsts few weeks of this project: Designing for accountability using socialization and awareness, creating a simple and calm interface that can be checked quickly (as to not increase screen time), trying to find the barrier to lowering screen time (what do people need to see to be influenced to stop?). These guiding rules along side the next user insights led to these amendments in our design: 

**1. Basic App Interface Improvements**   
- We made the Stats page easier to navigate using a slider bar at the top of the page. We added individual day, week, and year tabs (instead of the first draft, which had day, month, and year all listed on the same page) so a user could get a better look at their long-term statistics. As seen in our user interviews from Week 6 and 7, our potential client base was very interested in seeing statistics from years back (a feature that is not included in IOS Screen Time tracking software). They expressed that seeing how time compiles over years may influence their usage.
  
<div align="center">

<img src="/Media/StatsPageWithSlider.png" alt="Stats Page Slider" width="30%" />

<p><em>Stats Page Showing Slider At Top</em></p>

</div>


**2. Graph Readability and Necessity**
- We changed the Daily, Weekly, and Monthly graphs to have more visual information on the X and Y axis's for better visual communication. Users were saying that the first draft did not properly convey what the graph was supposed to convey. Images of the initial draft can be seen in Process Journal 1 Statistics Page. 
  
<div align="center">

<img src="/Media/NewGraphsReadable.png" alt="New Graphs" width="30%" />

<p><em>ReDone Graphs to Have Better Axis</em></p>

</div>

- We changed the "Most Used Apps" widget on the front page to a bar graph showing screen time use throughout the week. The original home page (seen in Process Journal 1 Home Page screen) does not include this bar graph at all. We believe that the bar graph was preferred among our interviewees because it is very similar to the way IOS devices track and portray their screen time information. Similar visual cues make this more easily readable. 

<div align="center">

<img src="/Media/HomePagewithAverageTimes.png" alt="Front Page Graph" width="30%" />

<p><em>Redesigned Front Page Showing Weekly Average Graph</em></p>

</div>


**3. The Stats They Always Wanted!**
- We also included more in-depth long-term stats like "This Day/Week/Month" stat graph as well as an "Average Day/Week/Month" stat graph. As stated before, users were very interested in these long-term statistics as they are not a feature of the IOS tracking software. 
- Allowed for long-term stat sharing between friends-- requestable on the Friends page. Users can now look at the longer-term statistics of their friends, not just their friend's daily use. 
  
<div align="center">

<img src="/Media/FriendsPageWithLongTerm.png" alt="Friends page long term sharing" width="30%" />

<p><em>Friends Page Showing ability to View Long Term Statistics</em></p>

</div>

- We put the stats that were the most liked during interviews on the front page AND the stats page (Pickups per day and average session). Users particularly liked the "Pick Ups Per Day" feature that was included so we put it on the home screen aswell. 

**4. Data Privacy**
- We added a "Data Privacy" setting on the front and friends pages. Linked to a pop-up where users can choose to stop sharing their short and long-term statistics with their friends.
- We made it so that only friends are able to share stats.
- This is shown by only some friends' long-term stats being visible on the friends page.

<div align="center">

<img src="/Media/dataPrivacyPopup.png" alt="Data Privacy Popup" width="30%" />

<p><em>The Popup that Shows when the "Privacy Settings" Button is Pressed</em></p>

</div>

## Implementation

As seen in Week 9-10 we have begun implementation of our app on VS Code using Flutter and Firebase. We have successfully set up API calls from specific Android systems to send and receive screen time data from a user's phone. This data can be stored in our app to await further manipulation. This was a pretty difficult aspect to get working and took many rounds of trial and error since we were attempting to take private data from a highly secure device. This is also why we needed to use Android instead of IOS since IOS devices required a paid editor subscription in order to access the API. 

We also worked with a Firebase database to store, send, and receive users' data to make times sharable. This ended up being quite challenging to successfully set up. We have got Firebase working with our project, and it is functioning trivially, but we have not yet been able to build the infrastructure for saving and sending data within the base. The setup and implementation alone took roughly 12 hours.

We have also set up some of the usable UI inside of VS Code, so we have a better understanding of what features will take to build and what is feasible and doable for us as intermediate developers. Some aspects of the UI (like the sliders and the real-time graphs) will have to be figured out using pre-created code that we will have to find online. 

<div align="center">

<img src="/Media/API_Initial.png" alt="API send and recieve" width="30%" />

<p><em>Sending and Recieving Real Data Using API Calls</em></p>

</div>

<div align="center">

<img src="/Media/Database.png" alt="database" width="30%" />

<p><em>DataBase on FireBase</em></p>

</div>



# Final User Testing

For our final round of user testing, we got the same three people who we interviewed first to use the app for around 7 minutes and then come back to use with comments. We have analyzed these comments and have concentrated them into a series of needed changes and design aspects that worked very well within our intended context. 

## Comments and Improvements on Design Goals
1. One user commented that the previous data privacy concerns she had were eradicated. She no longer felt hesitant to use the app since she would be able to stop sharing her screen time whenever she wanted.
2. Another previous user stated that the graphs were much more legible while also staying simplistic and nice to look at. She also liked how the graphs for different time periods (days, weeks, months) were unique to the type of information needed but stayed relatively visually uniform throughout. She did comment that she may want the ability to view data in a bar graph form- like how it is seen on the home page- instead of just a line graph. She also greatly commended the Home Screen and said it has all the features she wants right at the front and looks great.
3. One user said that the way information is laid out in the long-term stats page is slightly confusing. She is less interested in the screen time of each individual day or week and would like her weekly or daily average to be displayed first, like it is on IOS Screen Time Tracking devices.
4. One user said that they wanted to be able to compare their long-term statistics to their friends and would love it if the insights on the long-term stats friends page showed comparison insights. 

## How Comments Become Actionable Design Concepts
With these comments in mind, we brainstormed the next iteration of this application. Ideally, the next form would be fully functioning using the API calling and database management functions we were able to rudimentarily install in our implemented version. 

_1. What worked well:_

  - Long-term statistics and the multiple graphs per time period
  - General privacy settings for sharing
  - Highlighting statistics that users were most interested in (Pickups, Monthly, Total Time per Week), instead of guessing what we think they want to see
  - Balancing graphs to have just enough information on them to make them completely understandable without overcrowding the page. Also using visuals from graphs that users are used to (the Apple IOS Screen Time bar graph) to play on visual information that users already have in their brains. This makes for quicker deciphering.
    
_2. What needs to be changed:_

  - The statistics page can be further iterated on. It does not seem like we have gotten to the heart of what users really would like to see on this screen. They like being able to see statistics in the long term, but seem to care more about seeing a change over time or an average amount of time spent. These times could potentially translate into statistics like "How much time have you spent playing video games instead of learning a new language" or other 'Insights' that give people more perspective-- rather than just numbers.
  - Increasing the ability to share and compare statistics seems like a way we could get users talking about the app more. The point of the app is NOT to generate traction or money, but it IS supposed to get young people talking to each other about how much time they spend on their phones and the actual cost of that. One of our interviewers expressed a desire to be able to see insights that compared long-term statistics of her and her friends. This desire led us to believe that doubling down on the social aspect of this design could increase the number of users discussing their addiction and ultimately increase awareness and accountability.
  - Actual implementation would be a definite necessity in the further creation of this app. We would need to do further testing on the database implementation since we have the API already set up. We would also need to do more research into how information can be stored locally long-term on a user's device. The UI implementation was not difficult however, in order to accurately show all the design changes we made we were not able to make a fully functioning UI. 
