#include <iostream>
#include <Eigen/Dense>

using Eigen::MatrixXd;

auto multiply_matrices(MatrixXd m1, MatrixXd m2) -> MatrixXd
{
    return m1 * m2;
}