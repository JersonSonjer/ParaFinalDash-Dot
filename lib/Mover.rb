
def avanzar_oeste_este(x, di)#[y =>2, x =>2, N] 
    if (di == 'O')
        x = x - 1
        return x
    end
    if (di == 'E')
        x = x + 1
        return x
    end
end

def avansar_norte_sur(y, di)
    if (di == 'N')
        y = y - 1
        return y
    end
    if (di == 'S')
        y = y + 1
        return y
    end
end