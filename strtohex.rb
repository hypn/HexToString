# string_to_hex("StrToHex") returns "537472546f486578"
def string_to_hex(str)
  returned = ''
  for i in (0..str.length)
    unless str[i].nil?
      returned += str[i].to_s(16)
    end
  end
  returned
end