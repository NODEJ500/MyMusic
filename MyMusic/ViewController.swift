//
//  ViewController.swift
//  MyMusic
//
//  Created by Jun on 2021/09/04.
//

import UIKit
import AVFoundation

//シンバルの音源ファイルを指定
let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
//シンバル用のプレイヤーインスタンスを作成
var cymbalPlayer = AVAudioPlayer()
//ギター用のプレイヤーインスタンスを作成
var guitarPlayer = AVAudioPlayer()
//バックミュージック用のプレイヤーインスタンスを作成
var backmusicPlayer = AVAudioPlayer()


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func cymbal(_ sender: Any) {
        do{
        //シンバル用のプレイヤーに音楽ファイルを指定
        cymbalPlayer =  try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
        //シンバルの音源再生
        cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました！")
    }
  }
    @IBAction func guitar(_ sender: Any) {
        do{
        //ギター用のプレイヤーに音楽ファイルを指定
        guitarPlayer =  try AVAudioPlayer(contentsOf: guitarPath, fileTypeHint: nil)
        //ギターの音源再生
        guitarPlayer.play()
        } catch {
            print("ギターで、エラーが発生しました！")
    }
  }
    @IBAction func play(_ sender: Any) {
        do{
        //バックミュージック用のプレイヤーに音楽ファイルを指定
        backmusicPlayer =  try AVAudioPlayer(contentsOf: backmusicPath, fileTypeHint: nil)
        //リピート設定
        backmusicPlayer.numberOfLoops = -1
        backmusicPlayer.play()
        } catch {
            print("エラーが発生しました！")
      }
    }
    @IBAction func stop(_ sender: Any) {
        //バックミュージック停止
        backmusicPlayer.stop()
    }
}
