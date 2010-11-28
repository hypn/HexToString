# hex_to_string("486578546f537472") returns "HexToStr"
def hex_to_string(str)
  returned = ''
  for i in (0..str.length).step(2)
    unless str[i].nil?
      hex_chr = str[i].chr + str[i+1].chr
      returned += hex_chr.hex.chr
    end
  end
  returned
end