import Foundation

public class MockUtil {
    
    public static func openJsonFromFile() -> Data{
        var data:Data = Data()
        do {
            guard let fileUrl = Bundle.main.url(forResource: "data", withExtension: "json") else { fatalError() }
            data = try Data(contentsOf: fileUrl)
        } catch {
            print(error)
        }
        return data
    }
    
}
