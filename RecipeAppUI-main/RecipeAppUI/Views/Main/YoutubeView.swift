//
//  YoutubeView.swift
//  RecipeAppUI
//
//  Created by Gregorius on 21/12/22.
//

import SwiftUI


struct YoutubeView: View {

    

    @State private var youtubes = [Items]()
    @State private var scale: CGFloat = 1
    
    
    func fetchSongs() {

        let urlStr = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet,contentDetails,status&playlistId=PLJj06SbMAVqMM-YJsIwH5bJdZCoaSR5gB&key=AIzaSyCY0wwZ0B_zzSzHXZgrc0xSauHJ85d45i8&maxResults=50"

        

        if let url = URL(string: urlStr) {

            

            URLSession.shared.dataTask(with: url) { (data, response , error) in

                let decoder = JSONDecoder()

                decoder.dateDecodingStrategy = .iso8601

                if let data = data{

                    do{

                        let songResults = try decoder.decode(Youtube.self, from: data)

                        youtubes = songResults.items

                        print(youtubes)

                        } catch {

                        print(error)

                    }

                }

            }.resume()

        }

        

    }

    @State private var showWebpage = false



    var body: some View {

        
        VStack{


            Text(NSLocalizedString("Tutorials", comment: "default"))
                            .fontWeight(.bold)
                            .font(.system(size:30))
                            .foregroundColor(.black)
                        Spacer()

            List(youtubes.indices, id:\.self, rowContent: { (index) in

                if youtubes.count > 0 {

                    VStack{

                        HStack{

                            YoutubeImage(url: youtubes[index].snippet.thumbnails.medium.url).frame(width: 128, height: 72)
                                .scaledToFill()
                                .clipped()
                                
                                

                            /*Link(youtubes[index].snippet.title, destination: URL(string: "https://www.youtube.com/watch?v=\(youtubes[index].contentDetails.videoId)")!)*/

                            Button(youtubes[index].snippet.title) {

                                        showWebpage = true

                                    }

                                    .sheet(isPresented: $showWebpage) {

                                        SafariView(url: URL(string: "https://www.youtube.com/watch?v=\(youtubes[index].contentDetails.videoId)")!)

                                    }

                

                        }

                

                    }

                    

                }

                

            })

            .onAppear(perform: {

                            fetchSongs()

            })

            

        }


        

    }
    

}



struct YoutubeView_Previews: PreviewProvider {

    static var previews: some View {

        YoutubeView()

    }

}

