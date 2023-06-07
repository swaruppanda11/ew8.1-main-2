//
//  DrawingViewController.swift
//  easywrite-self-build
//
//  Created by Swarup Panda on 18/04/23.
//

import UIKit
import PencilKit

class DrawingViewController: UIViewController {
        
        private let canvasView: PKCanvasView = {
            let canvas = PKCanvasView()
            canvas.drawingPolicy = .anyInput
            return canvas
        }()

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            view.addSubview(canvasView)
        }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            canvasView.frame = view.bounds
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            
            let toolPicker = PKToolPicker()
            toolPicker.setVisible(true, forFirstResponder: canvasView)
            toolPicker.addObserver(canvasView)
            canvasView.becomeFirstResponder()
        }


}

