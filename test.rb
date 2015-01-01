module M1
end

module M2
end

class C
  include M1
  include M2
  include M1
end

p C.ancestors
