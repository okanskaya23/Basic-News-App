//typealias Codable = Decodable & Encodable
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        let url = "https://606d9f3d603ded00175043e2.mockapi.io/testnews/1"
//        
//        getdata(from: url)
//    }
//
//    private func getdata(from url: String){
//        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: {data, response, error in
//            guard let data = data, error == nil else{
//                print("abooord")
//                return;
//            }
//            var result: Response?
//            do {
//                result = try JSONDecoder().decode(Response.self,from: data)
//            }
//            catch{
//            print("something went wrong line 31 \(error.localizedDescription)")
//                
//            }
//            guard let json = result else{
//                return
//            }
//            
//            print(json.id)
//            print(json.source)
//            print(json.title)
//            print(json.subtitle)
//        })
//        task.resume()
//    }
//
//}
//
//
//
//
//struct Response: Codable {
//    let id: String
//    let source: String
//    let title: String
//    let subtitle: String
//    let image : URL
//
//    
//    
//}
