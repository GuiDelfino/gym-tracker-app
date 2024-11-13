//
//  ExerciseListCellViewModel.swift
//  projeto-supino-violento
//
//  Created by Guilherme Delfino on 05/11/24.
//

import UIKit

class CustomCell: UITableViewCell {
    let exerciseName: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let exerciseImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "supinado")
        image.layer.cornerRadius = 45.0
        image.layer.borderWidth = 1.0
        image.layer.masksToBounds = true
        return image
    }()
    func setUpContraints() {
        addSubview(exerciseName)
        addSubview(exerciseImage)
        NSLayoutConstraint.activate([
            exerciseImage.topAnchor.constraint(equalTo: self.topAnchor),
            exerciseImage.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            exerciseImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            exerciseImage.trailingAnchor.constraint(equalTo: self.leadingAnchor, constant: 100),
            exerciseName.topAnchor.constraint(equalTo: self.topAnchor),
            exerciseName.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            exerciseName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 140),
            exerciseName.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -90)
        ])
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        setUpContraints()
    
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
