
def direccion(direccion, comando)#(N, I o D) 
    if (direccion == 'N')
        if (comando == 'I')
            return 'O'
        end
        if (comando == 'D')
            return 'E'
        end
    end
    if (direccion == 'S')
        if (comando == 'I')
            return 'E'
        end
        if (comando == 'D')
            return 'O'
        end
    end
    if (direccion == 'E')
        if (comando == 'I')
            return 'N'
        end
        if (comando == 'D')
            return 'S'
        end
    end
    if (direccion == 'O')
        if (comando == 'I')
            return 'S'
        end
        if (comando == 'D')
            return 'N'
        end
    end
end