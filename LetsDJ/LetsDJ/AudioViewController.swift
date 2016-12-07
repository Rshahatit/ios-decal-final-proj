//
//  AudioViewController.swift
//  Pods
//
//  Created by Milan Saxena on 12/5/16.
//
//

import Foundation
import UIKit
import AVFoundation

class AudioViewController : UIViewController {
    
    var image = UIImage()
    var mainSongTitle = String()
    var mainPreviewURL = String()
    
    var listNames = [String]()
    var listImages = [UIImage]()
    var mainPreviewURLArr = [String]()
    
    
    @IBOutlet var playpausebtn: UIButton!
    @IBOutlet var background: UIImageView!
    
    @IBOutlet var mainImageView: UIImageView!
    
    
    @IBOutlet var songTitle: UILabel!
    
    override func viewDidLoad() {
        songTitle.text = mainSongTitle
        background.image = image
        mainImageView.image = image
        downloadFileFromURL(url: URL(string: mainPreviewURL)!)
        playpausebtn.setTitle("Pause", for: .normal)
        
    }
    
    
    func downloadFileFromURL(url: URL) {
        var downloadTask = URLSessionDownloadTask()
        downloadTask = URLSession.shared.downloadTask(with: url, completionHandler: {
            customURL, response, error in
            self.play(url:customURL!)
        })
        
        downloadTask.resume()
    }
    
    func play(url: URL) {
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            player.play()
        } catch {
            print(error)
        }
        
        
    }
    
    func setImageArray(images: [UIImage]) {
        listImages = images
    }
    
    func setNameArray(names: [String]) {
        listNames = names
    }
    
    func setPreviewArr(preview: [String]) {
        mainPreviewURLArr = preview
    }
    
    @IBAction func pausePlay(_ sender: AnyObject) {
        if player.isPlaying {
            player.pause()
            playpausebtn.setTitle("Play", for: .normal)
            
        } else {
            player.play()
            playpausebtn.setTitle("Pause", for: .normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playlist" {
            listNames.append(mainSongTitle)
            listImages.append(image)
            mainPreviewURLArr.append(mainPreviewURL)
            let vc = segue.destination as! PlaylistTableViewController
            vc.setImage(image: image)
            vc.setName(theName: mainSongTitle)
            vc.configNameArray(names: listNames)
            vc.configImageArray(images: listImages)
            vc.configPreviewArray(preview: mainPreviewURLArr)
        }
    }
    
}
