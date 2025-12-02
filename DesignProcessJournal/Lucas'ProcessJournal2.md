# Process Journal – Part 2  
**Title:** Unplug  
**Author:**  Lucas Meldrum
**Date:** December 4th, 2025 

---

## Introduction and Implementation
With the prototype finished, we began the implementation phase and creating the actual app. This stage focused on putting together the core systems: emulation testing, Flutter/Dart UI development, API calls and the database layer.

To handle device usage data, we implemented API calls through the usage_stats package, integrating custom permission requests and real-time queries. We needed to find Android emulators that supported usage-access permissions to be able to test and visually see our app as we created it.

On the development side, Flutter and Dart allowed us to quickly structure screens, manage state, and connect UI elements with backend logic. We also built/continue to build a database using firebase to store users, weekly/monthly screen-time and more. This created a nice flow where the API collects the data, Dart processes and displays it, and the database stores it.

Overall, **this phase was done in conjuction with our user testing phase** to get a head start on the actual creation of the app while getting feedback from our prototypes to see what changes needed to be done.

## User Testing and Problems Identified
We conducted our user testing during [week 6 and 7](/Lucas'%20WeeklyJournal/WeeklyJornal.md) of our weekly journal through user interviews. I created a **testing script** to use during these interviews to help guide the Q/A we received to test to the app's limits and find out what failed. From our interviews, we collected all the data and concluded that there were **4 main issues** found:

### Issues → User Results → Fixes

| Issues                               | User Results / Insights                                                                                   | Fixes / Decisions                                                                                                      |
|--------------------------------------|------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------|
| **Widget-Clock Logo Communication**  | Users misunderstood the night/sleep section; read it as “day vs night usage.” Once explained, they liked the idea. | Redesign widget: clearer sleep vs awake segments, bed icon instead of moon, add clock numbers, base graph on fixed 16-hour awake period. |
| **Graph Readability and Necessity**  | Graphs were unclear—missing Y-axis, partial X-axis labels; some graphs felt unnecessary or redundant.       | Add Y-axis + full X-axis labels, tooltips, legends, percent-change indicators; reorganize home page or allow customization. |
| **Data Privacy**                     | Users worried about sharing screen time with strangers; needed strong control over visibility and safety.  | Mutual-friends sharing only, ability to turn sharing off, block requests, no public profiles, no sensitive data sharing, unfollow = immediate removal. |
| **The Stats They Always Wanted!**    | Users wanted long-term stats (weeks/months/years), comparison with friends, and “pickups per day” always visible. | Add long-term trends, friend comparison features, leaderboards, and highlight “pickups per day” across multiple screens. |

## Iteration Cycle After Testing

Our iteration cycle followed the core stages of **planning**, **designing**, **implementing**, and **testing**, with each loop aiming for continuous improvement based on user feedback. We focused on the four major issues identified: widgets, graph readability, data privacy, and long-term stats.

---

## 1. Planning

During the planning stage, we reviewed user testing notes and grouped the main problems:

- Users misread the widget-clock logo and could not interpret the sleep segment.  
- Graphs were unclear or missing essential information (Y-axis, labels).  
- Users expressed strong concerns around data privacy and sharing.  
- Users wanted more long-term trends and comparison features.

From these insights, we defined functional requirements:
- Clarify visual communication of sleep vs awake time.  
- Make graph data more readable and meaningful.  
- Create a privacy based sharing system.  
- Expand statistical depth with weekly, monthly, and yearly views.

---

## 2. Designing

The design stage focused on ideating solutions for each issue:

- **Widget Redesign:** Introduced a clearer icon , stronger separation between sleep and awake time, and clock numbering.  
- **Graph Enhancements:** Added axes, legends, and better visibility; reorganized layout for hierarchy and clarity.  
- **Privacy Framework:** Designed friend adding/sharing, toggle-based visibility, blocking, and the removal of sensitive data.  
- **Expanded Stats:** Wireframed new long-term graphs, comparison screens, and the placement of “Pickups Per Day” across the app.

Design changes were sketched, prototyped, and prepared for implementation through figma:

![Changesv1](/Media/Changes_v1.png)
![Changesv2](/Media//Changes_v2.png)
![WidgetChangesv3](/Media//WidgetChanges_v3.png)


---

## 3. Implementing

We attempted and are continuing to transform the designs into functional features:

- Updated widget visuals and changed the sleep icon to a bed for clearer interpretation.  
- Rebuilt the stats graphs with proper axes, labels, tooltips, and restructured layouts.  
- Introduced backend logic for friend approval, blocking, and sharing toggles.  
- Implemented database support for weeks, months, and yearly views, and surfaced “pickups per day” across multiple screens.

Although not fully implemented yet due to the larger scope of the project, we have prototyped the fixes into our figma to allow for further testing and confirming correct changes have been done.

---

## 4. Testing

After implementation, we ran a second round of user testing:

- Users immediately understood the new widget layout and no longer confused “night time” with “sleep time.”  
- The enhanced graphs were described as “much clearer” and “way more useful.”  
- Privacy controls were praised, and users felt safe sharing their screen time.  
- Long-term stats and friend comparisons increased user engagement and motivation.

Testing validated that our changes effectively addressed user pain points.

---

## Continuous Improvement Summary

At the end of our first cycle, we revealed new insights that will be fed back into planning, creating a loop of continuous iteration and refinement. By moving through **Planning → Designing → Implementing → Testing**, we ensured that every update was user based and improved the clarity, safety, and usefulness of the app. Even through this first cycle, we found more issues and changes that could be done and re-iterated over to create an even more polished app.

---

## Final Implementation 

Currently, we are on the implementation stage while doing testing at the same time. As we conduct these user tests and re-iteration cycles, we are implementing the actual app. The API calls, and the flutter visualization has been finished yet there are many issues that are preventing the app from being finished. Currently the app is under construction:

![app](/Media/App_v1.png)

and the database:

![databse](/Media/Database.png)

Although it isn't finished, we are continuing to implement and hopefully have a final product by the end of the year.

## Conclusion

Ultimately, tthe implementation and user testing phase proved to be a critical turning point in the development of Unplug. By conducting structured user interviews early in the development process, we were able to identify and address four major issues: widget clarity, graph readability, data privacy concerns, and the need for expanded statistics, before investing significant resources into a bad design. Implementing and conducting thse users tests at the same time allowed for us to get ahead on implementation and make changes as we went.

Our iterative cycle of planning, designing, implementing, and testing created a feedback loop that transformed user pain points into actionable improvements. Furthermore, second rounds of testing validated these changes, with users reporting significantly improved clarity, usefulness, and trust in the app.

While the full implementation is still in progress, API integration, Flutter UI development, and Firebase database architecture has provided a solid foundation for the complete app in the future. The challenges we encountered such as finding compatible Android emulators and balancing feature requests with technical constraints, has taught us valuable lessons about development and the required time it takes to fully create a functioning app.

Moving forward, we will continue our approach of implementing features while gathering user feedback, ensuring that Unplug remains responsive to real user needs!