//
//  ExerciseListCellViewModel.swift
//  projeto-supino-violento
//
//  Created by Guilherme Delfino on 05/11/24.
//

import UIKit

class CustomCell: UITableViewCell {
    let exerciseName = UILabel()
    let exerciseImage = UIImageView()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(exerciseName)
        addSubview(exerciseImage)
        exerciseImage.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        exerciseName.frame = CGRect(x: 120, y: 20, width: 120, height: 50)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
