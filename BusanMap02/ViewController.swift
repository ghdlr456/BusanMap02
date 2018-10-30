
import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    
    let addrs:[String:[String]] = [
        "광복동" : ["중구 광복로 55번길 10", "35.0999630", "129.0304170", "광복동 주민센터", "도시대기", "상업지역"],
        "장림동" : ["사하구 장림로 161번길 2", "35.0829920", "128.9668750", "사하여성회관", "도시대기","공업지역"],
        "학장동" : ["사상구 대동로 205", "35.1460850", "128.9838270", "학장초등학교", "도시대기","공업지역"],
        "덕천동" : ["북구 만덕대로 155번길 81", "35.2158660", "129.0197570", "한국환경공단", "도시대기", "주거지역"],
        "연산동" : ["연제구 중앙대로 1065번길 14", "35.1841140", "129.0786090", "연제초등학교", "도시대기", "주거지역"],
        "대연동" : ["남구수영로 196번길 80", "35.1303210", "129.0876850", "부산공업고등학교", "도시대기", "주거지역"],
        "청룡동" : ["금정구 청룡로 25", "35.2752570", "129.0898810","청룡노포동 주민센터 옥상", "도시대기", "주거지역"],
        "전포동" : ["부산진구 전포대로 175번길 22", "35.1530480", "129.0635640","경남공고 옥상", "도시대기",  "상업지역"],
        "태종대" : ["영도구 전망로 24", "35.0597260", "129.0798400", "태종대유원지관리사무소", "도시대기", "녹지지역"],
        "기장읍" : ["기장군 기장읍 읍내로 69", "35.2460560", "129.2118280","기장초등학교 옥상", "도시대기", "주거지역"],
        "대저동" : ["강서구 낙동북로 236", "35.2114600", "128.9547110","대저차량사업소 옥상", "도시대기", "녹지지역"],
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "부산 미세먼지 지도"
        
        let a = BusanData(coordinate: CLLocationCoordinate2D(latitude:35.0999630, longitude: 35.0999630), title: "광복동", subTitle: "광복동 주민센터")
        //print(addrs["광복동"]![1])
        
        let b = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.0829920, longitude: 128.9668750), title: "장림동", subTitle: "사하여성회관")
        let c = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.1460850, longitude: 128.9838270), title: "학장동", subTitle: "학장초등학교")
        let d = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.2158660, longitude: 129.0197570), title: "덕천동", subTitle: "한국환경공단")
        let e = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.1841140, longitude: 129.0786090), title: " 연산동", subTitle: "연제초등학교")
        let f = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.1303210, longitude: 129.0876850), title: "대연동", subTitle: "부산공업고등학교")
        let g = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.2752570, longitude: 129.0898810), title: "청룡동", subTitle: "청룡노포동 주민센터 옥상")
        let h = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.1530480, longitude: 129.0635640), title: "전포동", subTitle: "경남공고 옥상")
        let i = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.0597260, longitude: 129.0798400), title: "태종대", subTitle: "태종대유원지관리사무소")
        let j = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.2460560, longitude: 129.2118280), title: "기장읍", subTitle: "기장초등학교 옥상")
        let k = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.2114600, longitude: 128.9547110), title: "대저동", subTitle: "대저차량상업소 옥상")
        let l = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.2298390, longitude: 129.0927140), title: "부곡동", subTitle: "부곡2동 주민센터 옥상")
        let m = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.1527040, longitude: 129.1078090), title: "광안동", subTitle: "구 보건환경연구원 3층")
        let n = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.2047550, longitude: 129.1043270), title: "명장동", subTitle: "명장 주민센터 옥상")
        let o = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.0953270, longitude: 128.8556680), title: "녹산동", subTitle: "(주)삼성전기부산사업장 옥상")
        let p = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.3255580, longitude: 129.1801400), title: "용수리", subTitle: "정관면 주민센터 2층 옥상")
        let q = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.1708900, longitude: 129.1742250), title: "좌동", subTitle: "좌1동 주민센터 옥상")
        let r = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.1293350, longitude: 129.0454230), title: "수정동", subTitle: "동구청사 옥상")
        let s = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.1173230, longitude: 129.0156410), title: "대신동", subTitle: "부산국민체육센터")
        let t = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.2056140, longitude: 129.0785020), title: "온천동", subTitle: "동래지하철 앞")
        let u = BusanData(coordinate: CLLocationCoordinate2D(latitude: 35.11194650, longitude: 129.0354560), title: "초량동", subTitle: "윤홍신장군 동상 앞")



        
        
        myMapView.addAnnotations([a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u])
       // myMapView.delegate = self
        
//        let location = CLLocationCoordinate2D(latitude: 35.180100, longitude: 129.081017)
//        let span = MKCoordinateSpan(latitudeDelta: 0.27, longitudeDelta: 0.27)
//        let region = MKCoordinateRegion(center: location, span: span)
//
//        myMapView.setRegion(region, animated: true)
        
        
        
   
    }


}

