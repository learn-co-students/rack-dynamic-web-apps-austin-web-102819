class Application
 
  def call(env)
    resp = Rack::Response.new
 
    num_1 = Kernel.rand(1..20)# Generate random numbers
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)
 
    resp.write "#{num_1}\n" # Write each number to the browser (this is a Rack macro)
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"
 
    if num_1==num_2 && num_2==num_3
      resp.write "You Win" # Again write to the browser
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end
 
end