# Date.FormatStyle Cheat Sheet

Apple introduced a [new date formatting API](https://developer.apple.com/documentation/foundation/date/formatstyle) for iOS 15 that converts `Date` objects to `String` concisely. The API is also very composable. Function calls can be chained together to obtain any number of combinations of date and time to get precise formatting. 

This Playground is a reference for the various options offered by the API with an "en_US" locale.   

`let date = Date.now`

```
// MARK: Date & Time

date.formatted()                                                             // 7/25/2022, 8:06 PM
date.formatted(date: .numeric, time: .shortened)                             // 7/25/2022, 8:06 PM
date.formatted(date: .omitted, time: .omitted)                               // 7/25/2022, 8:06 PM

date.formatted(.dateTime)                                                    // 7/25/2022, 8:06 PM
date.formatted(.dateTime.locale(.current))                                   // 7/25/2022, 8:06 PM
date.formatted(.dateTime.locale(.autoupdatingCurrent))                       // 7/25/2022, 8:06 PM
```

```
// MARK: Date

date.formatted(date: .numeric, time: .omitted)                               // 7/25/2022
date.formatted(date: .abbreviated, time: .omitted)                           // Jul 25, 2022
date.formatted(date: .long, time: .omitted)                                  // July 25, 2022
date.formatted(date: .complete, time: .omitted)                              // Monday, July 25, 2022

// MARK: Month

date.formatted(.dateTime.month())                                            // Jul
date.formatted(.dateTime.month(.narrow))                                     // J
date.formatted(.dateTime.month(.abbreviated))                                // Jul
date.formatted(.dateTime.month(.wide))                                       // July
date.formatted(.dateTime.month(.defaultDigits))                              // 7
date.formatted(.dateTime.month(.twoDigits))                                  // 07

// MARK: Day

date.formatted(.dateTime.day())                                              // 25 (6 for a single-digit day)
date.formatted(.dateTime.day(.defaultDigits))                                // 25 (6 for a single-digit day)
date.formatted(.dateTime.day(.twoDigits))                                    // 25 (06 for a single-digit day)
date.formatted(.dateTime.day(.ordinalOfDayInMonth))                          // 4
date.formatted(.dateTime.day(.julianModified()))                             // 2459786
date.formatted(.dateTime.day(.julianModified(minimumLength: 10)))            // 2459786309

// MARK: Weekday

date.formatted(.dateTime.weekday())                                          // Mon
date.formatted(.dateTime.weekday(.narrow))                                   // M
date.formatted(.dateTime.weekday(.short))                                    // Mo
date.formatted(.dateTime.weekday(.abbreviated))                              // Mon
date.formatted(.dateTime.weekday(.wide))                                     // Monday
date.formatted(.dateTime.weekday(.oneDigit))                                 // 2
date.formatted(.dateTime.weekday(.twoDigits))                                // 2

// MARK: Year

date.formatted(.dateTime.year())                                             // 2022
date.formatted(.dateTime.year(.defaultDigits))                               // 2022
date.formatted(.dateTime.year(.twoDigits))                                   // 22
date.formatted(.dateTime.year(.extended()))                                  // 2022
date.formatted(.dateTime.year(.extended(minimumLength: 6)))                  // 002022
date.formatted(.dateTime.year(.padded(7)))                                   // 0002022
date.formatted(.dateTime.year(.relatedGregorian()))                          // 2022
date.formatted(.dateTime.year(.relatedGregorian(minimumLength: 9)))          // 000002022

// MARK: Day of Year         

date.formatted(.dateTime.dayOfYear())                                        // 206
date.formatted(.dateTime.dayOfYear(.defaultDigits))                          // 206
date.formatted(.dateTime.dayOfYear(.twoDigits))                              // 206
date.formatted(.dateTime.dayOfYear(.threeDigits))                            // 206

// MARK: Week of Year        

date.formatted(.dateTime.week())                                             // 31
date.formatted(.dateTime.week(.defaultDigits))                               // 31
date.formatted(.dateTime.week(.twoDigits))                                   // 31

// MARK: Week of Month       

date.formatted(.dateTime.week(.weekOfMonth))                                 // 5

// MARK: Quarter         

date.formatted(.dateTime.quarter())                                          // Q3
date.formatted(.dateTime.quarter(.abbreviated))                              // Q3
date.formatted(.dateTime.quarter(.narrow))                                   // 3
date.formatted(.dateTime.quarter(.wide))                                     // 3rd quarter
date.formatted(.dateTime.quarter(.twoDigits))                                // 03
date.formatted(.dateTime.quarter(.oneDigit))                                 // 3

// MARK: Era         

date.formatted(.dateTime.era())                                              // AD
date.formatted(.dateTime.era(.narrow))                                       // A
date.formatted(.dateTime.era(.abbreviated))                                  // AD
date.formatted(.dateTime.era(.wide))                                         // Anno Domini
```

```
// MARK: Time

date.formatted(date: .omitted, time: .shortened)                             // 8:06 PM
date.formatted(date: .omitted, time: .standard)                              // 8:06:03 PM
date.formatted(date: .omitted, time: .complete)                              // 8:06:03 PM GMT+1

// MARK: Hour

date.formatted(.dateTime.hour())                                             // 8 PM
date.formatted(.dateTime.hour(.defaultDigits(amPM: .omitted)))               // 08
date.formatted(.dateTime.hour(.defaultDigits(amPM: .narrow)))                // 8 p
date.formatted(.dateTime.hour(.defaultDigits(amPM: .abbreviated)))           // 8 PM
date.formatted(.dateTime.hour(.defaultDigits(amPM: .wide)))                  // 8 PM

date.formatted(.dateTime.hour(.twoDigits(amPM: .omitted)))                   // 08
date.formatted(.dateTime.hour(.twoDigits(amPM: .narrow)))                    // 08 p
date.formatted(.dateTime.hour(.twoDigits(amPM: .abbreviated)))               // 08 PM
date.formatted(.dateTime.hour(.twoDigits(amPM: .wide)))                      // 08 PM

date.formatted(.dateTime.hour(.conversationalDefaultDigits(amPM: .wide)))    // 8 PM
date.formatted(.dateTime.hour(.conversationalTwoDigits(amPM: .omitted)))     // 08
date.formatted(.dateTime.hour(.conversationalTwoDigits(amPM: .narrow)))      // 08 p
date.formatted(.dateTime.hour(.conversationalTwoDigits(amPM: .abbreviated))) // 08 PM
date.formatted(.dateTime.hour(.conversationalTwoDigits(amPM: .wide)))        // 08 PM

// MARK: Minute

date.formatted(.dateTime.minute())                                           // 6
date.formatted(.dateTime.minute(.defaultDigits))                             // 6
date.formatted(.dateTime.minute(.twoDigits))                                 // 06

// MARK: Second

date.formatted(.dateTime.second())                                           // 3
date.formatted(.dateTime.second(.defaultDigits))                             // 3
date.formatted(.dateTime.second(.twoDigits))                                 // 03
date.formatted(.dateTime.secondFraction(.fractional(5)))                     // 71100
date.formatted(.dateTime.secondFraction(.fractional(1)))                     // 7
date.formatted(.dateTime.secondFraction(.milliseconds(2)))                   // 72826491
date.formatted(.dateTime.secondFraction(.milliseconds(1)))                   // 72850348
date.formatted(.dateTime.secondFraction(.milliseconds(9)))                   // 072871904
       
date.formatted(.dateTime.second(.twoDigits))                                 // 03
date.formatted(.dateTime.secondFraction(.fractional(5)))                     // 71100
date.formatted(.dateTime.secondFraction(.milliseconds(1)))                   // 72850348
date.formatted(.dateTime.secondFraction(.milliseconds(2)))                   // 72826491
date.formatted(.dateTime.secondFraction(.milliseconds(9)))                   // 072871904

// MARK: Timezone

date.formatted(.dateTime.timeZone())                                         // GMT+1
date.formatted(.dateTime.timeZone(.exemplarLocation))                        // London
date.formatted(.dateTime.timeZone(.genericLocation))                         // United Kingdom Time
date.formatted(.dateTime.timeZone(.genericName(.short)))                     // United Kingdom Time
date.formatted(.dateTime.timeZone(.genericName(.long)))                      // United Kingdom Time
date.formatted(.dateTime.timeZone(.identifier(.long)))                       // Europe/London
date.formatted(.dateTime.timeZone(.identifier(.short)))                      // gblon
date.formatted(.dateTime.timeZone(.iso8601(.short)))                         // +0100
date.formatted(.dateTime.timeZone(.iso8601(.long)))                          // +01:00
date.formatted(.dateTime.timeZone(.localizedGMT(.long)))                     // GMT+01:00
date.formatted(.dateTime.timeZone(.localizedGMT(.short)))                    // GMT+1
date.formatted(.dateTime.timeZone(.specificName(.short)))                    // GMT+1
date.formatted(.dateTime.timeZone(.specificName(.long)))                     // British Summer Time
```