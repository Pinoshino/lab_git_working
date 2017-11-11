def calc_total(n):
    if n == 1: return 1446.8
    return 1.05*calc_total(n-1)+7

def calc_stock(n):
    if n == 1: return 1446.8
    return calc_stock(n-1)+7

n = input()
n = int(n)

print(calc_total(n))
print(calc_stock(n))
