# string_to_hex("StrToHex") returns "537472546f486578"
def string_to_hex(str)
  returned = ''
  for i in (0..str.length)
    unless str[i].nil? # I don't think this can ever be nil
      value = str[i].to_s(16)
      if value.length == 1
        value = "0" + value
      end
      returned += value
    end
  end
  returned
end

def s2h(str)
  output = ''
  str.bytes{ |x|
    h = (x & 240) >> 4
    l = x & 15
    output += h.to_s(16)
    output += l.to_s(16)
  }
  output
end
