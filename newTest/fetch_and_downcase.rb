def fetch_and_downcase(ary, index)
  if str = ary[index]
    return str.downcase
  end
end

ary = ["YUWENYAN","BillCode","IeeFlsyu"]
p fetch_and_downcase(ary,1)

hash = {0 => "YUWENYAN", 1 => "BillCOde", 2 => "Ieeflsyu"}

p fetch_and_downcase(hash,2)