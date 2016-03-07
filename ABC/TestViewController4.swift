//
//  TestViewController4.swift
//  ABC
//
//  Created by Maciej Piotrowski on 04/03/16.
//  Copyright © 2016 Swifting.io. All rights reserved.
//

import UIKit

class TestViewController4: UIViewController {
    class Configurator {
        class func setupImageView() -> UIImageView {
            let imageView = UIImageView(frame: CGRectZero)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.contentMode = .ScaleAspectFill
            imageView.clipsToBounds = true
            imageView.accessibilityIdentifier = "image"
            imageView.isAccessibilityElement = true
            return imageView
        }

        class func setupNameLabel() -> UILabel {
            let nameLabel = UILabel(frame: CGRectZero)
            nameLabel.translatesAutoresizingMaskIntoConstraints = false
            nameLabel.numberOfLines = 0
            nameLabel.backgroundColor = UIColor.whiteColor()
            nameLabel.textColor = UIColor.darkGrayColor()
            nameLabel.accessibilityIdentifier = "name"
            nameLabel.isAccessibilityElement = true
            return nameLabel
        }

        class func setupRatingLabel() -> UILabel {
            let ratingLabel = UILabel(frame: CGRectZero)
            ratingLabel.translatesAutoresizingMaskIntoConstraints = false
            ratingLabel.numberOfLines = 1
            ratingLabel.backgroundColor = UIColor.whiteColor()
            ratingLabel.textColor = UIColor.darkGrayColor()
            ratingLabel.accessibilityIdentifier = "rating"
            ratingLabel.isAccessibilityElement = true
            return ratingLabel
        }
    }

    //MARK: - properties
    let imageView: UIImageView
    let nameLabel: UILabel
    let ratingLabel: UILabel

    //MARK: - initialization
    init() {
        //        imageView = setupImageView()
        //        nameLabel = setupNameLabel()
        //        ratingLabel = setupRatingLabel()
        imageView = Configurator.setupImageView()
        nameLabel = Configurator.setupNameLabel()
        ratingLabel = Configurator.setupRatingLabel()

        super.init(nibName: nil, bundle: nil)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported")
    }

    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        view.addSubview(ratingLabel)
        view.addSubview(nameLabel)
    }
}
