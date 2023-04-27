//: [Previous](@previous)

import Foundation

let date = Date.now

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

//: [Next](@next)
