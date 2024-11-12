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
    
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
