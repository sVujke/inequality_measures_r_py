# Comparison of R and Python libraries for inequality measures

Used libraries/packages:
* R [ineq](https://www.rdocumentation.org/packages/ineq/versions/0.2-13) package
* Python [concentration library](https://github.com/open-risk/concentration_library)

| Measure      | R           | Python  |
| ------------- |:-------------:| -----:|
| Gini coef     | 0.444510730810279 | 0.44451073081|
| Aktinson ε = 0       | 0     |   -2.22044604925e-16|
| Aktinson ε = 0.5       | 0.170146049026273     |   0.170146049026 |
| Aktinson ε = 1       | 0.350512160004805     |   0.350512160005|
| Theil coef | 0.324566254000937     |   0.324566254001 |

Only difference spoted so far:

| Measure      | R           | Python  |
| ------------- |:-------------:| -----:|
| Aktinson ε = 0       | 0     |   -2.22044604925e-16|
