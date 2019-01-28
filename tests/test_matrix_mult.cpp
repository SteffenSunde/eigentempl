#include "../src/matrix_mult.cpp"
#include "../lib/catch.hpp"

TEST_CASE("Multiply two 3x3 matrices", "[Matmult]") {
    MatrixXd m1(3,3), m2(3,3), res(3,3);

    m1 << 1, 2, 3, 4, 5, 6, 7, 8, 9;
    m2 << 9, 8, 7, 6, 5, 4, 3, 2, 1;
    res << 30, 24, 18, 84, 69, 54, 138, 114, 90;

    REQUIRE(multiply_matrices(m1, m2).isApprox(res));
}