import Foundation

public class MegaAPI {
    
    public static func findAll(completionHandler: @escaping ([Mega]) -> Void){
        let jsonDecoder = JSONDecoder()
        let data = MockUtil.openJsonFromFile()
        if let data = try? jsonDecoder.decode([Mega].self, from: data) {
            completionHandler(data)
        }
    }
}
