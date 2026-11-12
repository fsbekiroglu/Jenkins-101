import fire

def hello(name="World"):
  return "Hello %s!" % name
  print ("Hell yea world")

if __name__ == '__main__':
  fire.Fire(hello)