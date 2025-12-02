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

## 2. Early Prototype (Jan 15–18, 2025)

### Prototype Goals
1. Request Android Usage Stats permission  
2. Fetch today's and weekly usage  
3. Show a simple dashboard with two cards  
4. Add basic “Goal” feature  

### Sketch Summary
*(Insert image)*  
- Home screen with a single “Fetch Usage” button  
- Two cards: Today + Week  
- Disabled state until permission is granted  

---

## 3. User Testing Round #1 (Jan 19, 2025)

### Participant
- Maya (casual smartphone user)
- Testing on Android Emulator (Pixel 9 API 34)

### Tasks Given
1. Launch the app  
2. Try to request permission  
3. Fetch screen-time data  
4. Read the dashboard  

### Observations
- **Major Issue:** Android Emulator cannot grant Usage Access → user stuck.  
- Button looked enabled but didn’t do anything on emulator.  
- Dashboard looked empty until the user pressed “Fetch Usage”.  
- No text explaining what the app was supposed to do.  
- User confused by lack of feedback after tapping buttons.

### Pain Points
1. Unclear permission flow  
2. No initial guidance  
3. No loading indicators  
4. Dashboard appears “dead” before first use  

---

## 4. Iteration Cycle (Jan 20–22, 2025)

### Findings → Implemented Changes
| Problem Found in Testing | Change Implemented |
|--------------------------|--------------------|
| Emulator cannot give permission | Added error message: *“Usage Access not available on emulators. Use a real device.”* |
| Dashboard empty on first load | Added placeholder cards with grey text |
| No guidance | Added top banner: *“Step 1: Grant permission → Step 2: Fetch usage”* |
| No feedback | Added loading spinner + small toast message |
| Confusing data | Added context text: “You used your phone X% more/less than yesterday.” |

### Updated Prototype Features
- Clear visual state transitions  
- Explicit error handling  
- Better onboarding  
- More supportive UX tone  

---

## 5. README (One Page)

# Screen Time App — README

## Overview
A simple Flutter app that displays your daily and weekly screen-time using Android's Usage Stats API. The focus is on clarity, minimalism, and actionable insights.

---

## Installation

### Requirements
- Android device (real device required — emulators cannot grant Usage Access)
- Flutter SDK 3.24+
- Android SDK 34+

### Steps
```bash
git clone <repository>
flutter pub get
flutter run
