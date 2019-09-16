def consolidate_cart(cart)
  cart_hash = {}
  cart.map {|item|
    item.each_pair {|key, value|
      if cart_hash[key]
        cart_hash[key][:count] += 1
      else
        cart_hash[key] = value
        cart_hash[key][:count] = 1
      end
    }
  }
  cart_hash
end

def apply_coupons(cart, coupons)
  coupons.each{|coupon|
    if cart.has_key?(coupon[:item])
      item_w_coupon = coupon[:item] + " W/COUPON"
      cart[item_w_coupon] = {price: coupon[:cost]/coupon[:num], count: coupon[:num], clearance: cart[:item][:clearance]} 
      #{price: coupon[:cost] / coupon[:num], count: coupon[:num], clearance: cart[:item][:clearance]}
    end
  }
  puts cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
