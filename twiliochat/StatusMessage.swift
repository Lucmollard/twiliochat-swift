import UIKit
import UIKit

enum TWCMemberStatus {
  case Joined
  case Left
}

class StatusMessage: TWMMessage {
  var member: TWMMember! = nil
  var status: TWCMemberStatus! = nil
  var _timestamp: String = ""
  override var timestamp: String {
    get {
      return _timestamp
    }
    set(newTimestamp) {
      _timestamp = newTimestamp
    }
  }

  init(member: TWMMember, status: TWCMemberStatus) {
    super.init()
    self.member = member
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
    dateFormatter.timeZone = NSTimeZone(forSecondsFromGMT: 0)
    timestamp = dateFormatter.stringFromDate(NSDate())
    self.status = status
  }

  
}
