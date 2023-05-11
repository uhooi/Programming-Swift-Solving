// 関数を用いて処理を分割する
// https://algo-method.com/tasks/1336

// float[]: x_coord = [3, 2, 6]
// float[]: y_coord = [4, 5, 3]
// float: dist_sum = 0.0
// dist_sum += sqrt((x_coord[0] - x_coord[1]) * (x_coord[0] - x_coord[1]) + (y_coord[0] - y_coord[1]) * (y_coord[0] - y_coord[1]))
// dist_sum += sqrt((x_coord[0] - x_coord[2]) * (x_coord[0] - x_coord[2]) + (y_coord[0] - y_coord[2]) * (y_coord[0] - y_coord[2]))
// dist_sum += sqrt((x_coord[1] - x_coord[2]) * (x_coord[1] - x_coord[2]) + (y_coord[1] - y_coord[2]) * (y_coord[1] - y_coord[2]))
// print(dist_sum)

import Foundation

let xCoord: [Float] = [3, 2, 6]
let yCoord: [Float] = [4, 5, 3]
var distSum: Float = 0.0
distSum += sqrt((xCoord[0] - xCoord[1]) * (xCoord[0] - xCoord[1]) + (yCoord[0] - yCoord[1]) * (yCoord[0] - yCoord[1]))
distSum += sqrt((xCoord[0] - xCoord[2]) * (xCoord[0] - xCoord[2]) + (yCoord[0] - yCoord[2]) * (yCoord[0] - yCoord[2]))
distSum += sqrt((xCoord[1] - xCoord[2]) * (xCoord[1] - xCoord[2]) + (yCoord[1] - yCoord[2]) * (yCoord[1] - yCoord[2]))
print(distSum)
