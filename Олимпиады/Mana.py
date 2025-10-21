
def surv(mana, M, n):
    for i in range(1, n):
        mana += M[i]
        if(mana < 0): return False
    return True


if __name__ == "__main__":
    n = int(input())
    M = []
    for i in range(1, n):
        M.append(int(input()))
    
    m = 0
    while(not surv(m, M, n)):
        m += 1
    print(m)




