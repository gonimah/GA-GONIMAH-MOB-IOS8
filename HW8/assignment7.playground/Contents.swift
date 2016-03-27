import XCPlayground
import Foundation

// To include SwiftyJSON, download SwiftyJSON.swift from the repository at 
//   https://github.com/SwiftyJSON/SwiftyJSON/tree/master/Source
// Then expand the Navigator with CMD+1.
// Drag/drop the file from Finder into the "Sources" folder in the Navigator.
// Uncomment the import statement below.
//import SwiftyJSON

// Let asynchronous code run
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

//TODO one: Write and call a function that make a successful network connection to google.com using core networking APIs, then print out the results.
if let url = NSURL(string: "https://google.com") {
    let urlSession = NSURLSession.sharedSession()
    let task = urlSession.dataTaskWithURL(url) { (data, response, error) -> Void in
        if let error = error {
            print("error: \(error.localizedDescription)")
        }
        if let response = response as? NSHTTPURLResponse {
            print("done with status code: \(response.statusCode)!")
        }
        if let data = data {
            print("in this block, data is not nil")
            let responseData = String(data: data, encoding: NSUTF8StringEncoding) // todo check why it's nil
            print(responseData)
        } else {
            print("could not get data back")
        }
    }
    task.resume()
} else {
    print("not a valid url")
}

//TODO two: Write and call a function that makes a failing network connection (using core networking APIs) to http://generalassemb.ly/foobar.baz, a nonexistant page. Print out the status code and body of the response.

let gaUrl = "http://generalassemb.ly/foobar.baz"

if let url = NSURL(string: gaUrl) {
    let urlSession = NSURLSession.sharedSession()
    let task = urlSession.dataTaskWithURL(url) { (data, response, error) -> Void in
        if let error = error {
            print("error: \(error.localizedDescription)")
        }
        if let response = response as? NSHTTPURLResponse {
            print(response.statusCode)
        }
        if let data = data {
            do {
                let responseData = String(data: data, encoding: NSUTF8StringEncoding)
                print(responseData)
            } catch {
                print("invalid json")
            }
        } else {
            print("could not get data back")
        }
    }
    task.resume()
} else {
    print("not a valid url")
}


//TODO three: Make a successful network connection to http://api.openweathermap.org/data/2.5/weather?q=New%20York,US, an API that speaks JSON using core networking APIs. Create a model class that corresponds to the JSON response object, populate it with the contents of that JSON using NSJSONSerialization, then print out the model.

class Weather {
    var temp : Float?
    var city : String?
    var humidity : Float?
    var wind : Float?
    
    init(temp: Float, city: String, humidity: Float, wind: Float) {
        self.temp = temp
        self.city = city
        self.humidity = humidity
        self.wind = wind
    }
    
    var description : String? {
        return "Current Weather in \(city!): \(temp!) degrees K with humidity: \(humidity!)% and wind speed: \(wind!)"
    }
    
}
let city = "NewYork,NY"
let weatherURL = "http://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=abf8ee9c8ddb8123f579247987b94d8f"

if let url = NSURL(string: weatherURL) {
    let urlSession = NSURLSession.sharedSession()
    let task = urlSession.dataTaskWithURL(url) { (data, response, error) -> Void in
        if let error = error {
            print("error: \(error.localizedDescription)")
        }
        if let response = response as? NSHTTPURLResponse {
            print(response.statusCode)
        }
        if let data = data {
            do {
                let json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions())
                let main = json.valueForKey("main") as? NSDictionary
                let temp = main?.valueForKey("temp") as? Float
                let humidity = main?.valueForKey("humidity") as? Float
                let wind = json.valueForKey("wind") as? NSDictionary
                let windSpeed = wind?.valueForKey("speed") as? Float
                if let temp = temp, humidity = humidity, windSpeed = windSpeed {
                    let weather = Weather(temp: temp, city: city, humidity: humidity, wind: windSpeed)
                    print(weather.description!)
                }
            } catch {
                print("invalid json")
            }
        } else {
            print("could not get data back")
        }
    }
    task.resume()
} else {
    print("not a valid url")
}

//TODO four: Make a successful network connection to http://api.openweathermap.org/data/2.5/weather?q=New%20York,US, an API that speaks JSON. Populate a your above-defined model with the contents of that JSON using SwiftyJSON, then print out the model.

