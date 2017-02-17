# The Hello World! program will greet me, the caller.
# If I tell the program my name is Alice, it will greet me by saying Hello, Alice!.
# If I neglect to give it my name, it will greet me by saying Hello, World!.

def hello_world name = nil
  if name == nil || name == ""
    "Hello, World!"
  else
    "Hello, #{name}!"
  end
end
