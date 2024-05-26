def binСoeff(n, k):
    if k == 0 or k == n:
        return 1
    return binСoeff(n - 1, k - 1) + binСoefft(n - 1, k)

def bernstein_polynomial(n, k):
    def berni(x):
        return binomial_coefficient(n, k) * (x ** k) * ((1 - x) ** (n - k))
return berni
