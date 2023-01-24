//
//  ChatModel.swift
//  KazPlaygroundSwiftUI
//
//  Created by 원태영 on 2023/01/24.
//

import Foundation

struct Chat : Identifiable {
    let id : String // 채팅방 ID
    let boardID : String // 게시판 ID
    let userIDList : [String] // 참여중인 유저 ID 리스트 -> 채팅방 리스트에서 셀에 상대 이름 표시를 위해 필요
    let date : Double // 날짜 <- Double로 변경 필요
    let lastContent : String // 마지막 메세지 내용
    
    var stringDate : String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ko_kr")
        dateFormatter.timeZone = TimeZone(abbreviation: "KST")
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let dateAt = Date(timeIntervalSince1970: date)
        
        return dateFormatter.string(from: dateAt)
    }
}
