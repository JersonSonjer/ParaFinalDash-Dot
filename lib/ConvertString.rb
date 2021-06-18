#formato del magister
def ubicacion2(cadena)
    cad=cadena.split(/\s|,/)
    cad[0]=cad[0].to_i
    cad[1]=cad[1].to_i
    return cad #[2,2,"S"]
end

def dividir_cadena2(cadena)
    cad=cadena.split(/\n/)
    return cad
end