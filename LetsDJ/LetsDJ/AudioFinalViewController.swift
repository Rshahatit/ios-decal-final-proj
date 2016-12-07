//
//  AudioFinalViewController.swift
//  LetsDJ
//
//  Created by Milan Saxena on 12/6/16.
//  Copyright © 2016 Milan Saxena. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

class AudioFinalViewController: UIViewController {
    
    var imagePic = UIImage()
    var mainSongTitle = String()
    var mainPreviewURL = String()
    
    var listNames = [String]()
    var listImages = [UIImage]()
    var mainPreviewURLArr = [String]()
    
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var songTitle: UILabel!
    @IBOutlet var playPause: UIButton!
    @IBOutlet var back: UIButton!
    @IBOutlet var backgroundPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songTitle.text = mainSongTitle
        backgroundPic.image = imagePic
        image.image = imagePic
        downloadFileFromURL(url: URL(string: mainPreviewURL)!)
        playPause.setTitle("Pause", for: .normal)

        // Do any additional setup after loading the view.
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
            playPause.setTitle("Play", for: .normal)
            
        } else {
            player.play()
            playPause.setTitle("Pause", for: .normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playlist" {
            listNames.append(mainSongTitle)
            listImages.append(imagePic)
            mainPreviewURLArr.append(mainPreviewURL)
            let vc = segue.destination as! PlaylistTableViewController
            vc.setImage(image: imagePic)
            vc.setName(theName: mainSongTitle)
            vc.configNameArray(names: listNames)
            vc.configImageArray(images: listImages)
            vc.configPreviewArray(preview: mainPreviewURLArr)
        } else if segue.identifier == "goingToPlayList" {
            let vc = segue.destination as! PlaylistTableViewController
            vc.setImage(image: imagePic)
            vc.setName(theName: mainSongTitle)
            vc.configNameArray(names: listNames)
            vc.configImageArray(images: listImages)
            vc.configPreviewArray(preview: mainPreviewURLArr)
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
