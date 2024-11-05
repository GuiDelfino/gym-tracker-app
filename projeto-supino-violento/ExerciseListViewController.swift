//
//  ViewController.swift
//  projeto-supino-violento
//
//  Created by Guilherme Delfino on 01/11/24.
//

import UIKit

class ExerciseListViewController: UIViewController {
    
    let exercisesArray: [Exercise] = [
    Exercise(name: "Agachamento", image: "supinado"),
    Exercise(name: "Supino Reto", image: "supinado"),
    Exercise(name: "Remada Curvada", image: "supinado"),
    Exercise(name: "Leg Press", image: "supinado"),
    Exercise(name: "Abdução de Pernas", image: "supinado"),
    Exercise(name: "Elevação Lateral", image: "supinado"),
    Exercise(name: "Crucifixo", image: "supinado"),
    Exercise(name: "Extensão de Braços", image: "supinado"),
    Exercise(name: "Flexão de Braços", image: "supinado"),
    Exercise(name: "Corrida na Esteira", image: "supinado"),
    Exercise(name: "Ciclismo Estático", image: "supinado"),
    Exercise(name: "Remada Alta", image: "supinado"),
    Exercise(name: "Elevação Frontal", image: "supinado"),
    Exercise(name: "Agachamento Sumo", image: "supinado"),
    Exercise(name: "Supino Inclinado", image: "supinado"),
    Exercise(name: "Extensão de Pernas", image: "supinado"),
    Exercise(name: "Abdução de Ombros", image: "supinado"),
    Exercise(name: "Elevação Posterior", image: "supinado"),
    Exercise(name: "Flexão de Panturrilhas", image: "supinado"),
    Exercise(name: "Plank", image: "supinado")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(exerciseTableView)
        setContraints()
    }

    lazy var exerciseTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(CustomCell.self, forCellReuseIdentifier: "cell")
        tableView.rowHeight = 100
        tableView.sectionHeaderHeight = 50
        return tableView
    }()
    
    func setContraints() {
        NSLayoutConstraint.activate([
            exerciseTableView.topAnchor.constraint(equalTo: view.topAnchor),
            exerciseTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            exerciseTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            exerciseTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

extension ExerciseListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        let exercises = exercisesArray[indexPath.row]
        cell.exerciseName.text = exercises.name
        cell.exerciseImage.image = UIImage(named: exercises.image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercisesArray.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Exercises:"
    }
    
}

struct Exercise {
    var name: String
    var image: String
}
