def foo(text)
  puts text
end

foo "hello world"
#undef foo

def foo_return
  10
end

x = foo_return
puts x

