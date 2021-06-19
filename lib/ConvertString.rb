#formato del magister
def ubicacion2(cadena)#"2,2 N"
    cad=cadena.split(/\s|,/)#divide la cad cuando encuentra un spacio(\s)o(,)=>["2","2","N"]
    cad[0]=cad[0].to_i
    cad[1]=cad[1].to_i
    return cad #[2,2,"S"]
end

def dividir_cadena2(cadena)#5,5\n2,2 N\nIAIAIADA
    cad=cadena.split(/\n/)#divide una cadena cuando encuentra un \n
    return cad# =>["5,5" , "2,2 N", "IAIAIADA"]
end

def tamano(cadena)
    cad=cadena.split(/,/)
    cad[0]=cad[0].to_i
    cad[1]=cad[1].to_i
    return cad
end