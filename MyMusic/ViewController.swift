//
//  ViewController.swift
//  MyMusic
//
//  Created by Jun on 2021/09/04.
//

import UIKit
import AVFoundation

//音源ファイルを指定
let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")

//各インスタンスを作成
var cymbalPlayer = AVAudioPlayer()
var guitarPlayer = AVAudioPlayer()
var backmusicPlayer = AVAudioPlayer()


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func cymbal(_ sender: Any) {
        soundPlayer(player: &cymbalPlayer, path: cymbalPath, count: 0)
  }
    @IBAction func guitar(_ sender: Any) {
      soundPlayer(player: &guitarPlayer, path: guitarPath, count: 0)
  }
    @IBAction func play(_ sender: Any) {
        soundPlayer(player: &backmusicPlayer, path: backmusicPath, count: -1)
    }
    @IBAction func stop(_ sender: Any) {
        //バックミュージック停止
        backmusicPlayer.stop()
    }
    //共通プレイヤー再生処理
    private func soundPlayer(player:inout AVAudioPlayer, path:URL, count: Int) {
        do {
            player = try AVAudioPlayer(contentsOf: path, fileTypeHint: nil)
            player.numberOfLoops = count
            player.play()
        } catch {
          print("エラーが発生しました！")
        }
    }
}
