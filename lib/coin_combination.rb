

class Float
  define_method(:change) do
    money = (self.*(100))./(25)
    money
  end
end
