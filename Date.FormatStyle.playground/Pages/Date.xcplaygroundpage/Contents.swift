//: [Previous](@previous)

import Foundation

let date = Date.now

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

//: [Next](@next)
