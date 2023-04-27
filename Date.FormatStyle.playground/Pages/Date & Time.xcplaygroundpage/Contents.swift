import Foundation

let date = Date.now

// MARK: Date & Time

date.formatted()                                                             // 7/25/2022, 8:06 PM
date.formatted(date: .numeric, time: .shortened)                             // 7/25/2022, 8:06 PM
date.formatted(date: .omitted, time: .omitted)                               // 7/25/2022, 8:06 PM

date.formatted(.dateTime)                                                    // 7/25/2022, 8:06 PM
date.formatted(.dateTime.locale(.current))                                   // 7/25/2022, 8:06 PM
date.formatted(.dateTime.locale(.autoupdatingCurrent))                       // 7/25/2022, 8:06 PM
