class BonusDrink
  def self.total_count_for(amount)
    # a[n] = 1,2,4,5,7...
    # b[n] = 1,2,1,2,...
    # c[n] = 1,-1,1,-1...
    # となる階差数列を解けばよいはずで、
    # b[n] = b1 + Σc[k]  (k=1,n-1)
    #      = 1 + Σ(1 * (-1)**(k-1))  (k=1,n-1)
    # となるが、解法に苦しみggr
    # http://okwave.jp/qa/q3154207.html
    # 自然数であるため、0が考慮されてない。辻褄あわせのabsを使用
    amount + (amount-1).abs/2
  end
end
